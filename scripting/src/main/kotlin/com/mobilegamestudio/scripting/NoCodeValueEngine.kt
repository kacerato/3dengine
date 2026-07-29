package com.mobilegamestudio.scripting

import kotlin.math.abs
import kotlin.math.acos
import kotlin.math.asin
import kotlin.math.atan
import kotlin.math.atan2
import kotlin.math.ceil
import kotlin.math.cos
import kotlin.math.exp
import kotlin.math.floor
import kotlin.math.ln
import kotlin.math.log10
import kotlin.math.max
import kotlin.math.min
import kotlin.math.pow
import kotlin.math.round
import kotlin.math.sign
import kotlin.math.sin
import kotlin.math.sqrt
import kotlin.math.tan

data class NoCodeVector(val components: List<Double>) {
    init {
        require(components.size in 2..4 && components.all(Double::isFinite))
    }

    fun map(transform: (Double) -> Double) = NoCodeVector(components.map(transform))
}

data class NoCodeColor(
    val red: Double,
    val green: Double,
    val blue: Double,
    val alpha: Double = 1.0,
) {
    fun clamped() = NoCodeColor(
        red.coerceIn(0.0, 1.0),
        green.coerceIn(0.0, 1.0),
        blue.coerceIn(0.0, 1.0),
        alpha.coerceIn(0.0, 1.0),
    )
}

/**
 * Executor determinístico das famílias de dados do NoCode. Não toca Android,
 * arquivos ou rede e pode ser usado tanto no preview quanto em testes.
 */
object NoCodeValueEngine {
    private val supportedPrefixes = setOf("math", "compare", "vector", "color", "text", "list")

    fun supports(operation: String): Boolean =
        operation.substringBefore('.') in supportedPrefixes

    fun evaluate(operation: String, input: Map<String, Any?>): Any? {
        require(supports(operation)) { "Operação NoCode não suportada: $operation" }
        val family = operation.substringBefore('.')
        val action = operation.substringAfterLast('.')
        return when (family) {
            "math" -> math(action, input)
            "compare" -> compare(action, input)
            "vector" -> vector(action, input)
            "color" -> color(action, input)
            "text" -> text(action, input)
            "list" -> list(action, input)
            else -> error("Família NoCode inválida.")
        }
    }

    private fun math(action: String, input: Map<String, Any?>): Any {
        val a = input.number("a", input.number("value"))
        val b = input.number("b", 1.0)
        val minValue = input.number("min")
        val maxValue = input.number("max", 1.0)
        return when (action) {
            "add" -> a + b
            "subtract" -> a - b
            "multiply" -> a * b
            "divide" -> if (b == 0.0) 0.0 else a / b
            "modulo" -> if (b == 0.0) 0.0 else a % b
            "power" -> a.pow(b)
            "minimum" -> min(a, b)
            "maximum" -> max(a, b)
            "average" -> (a + b) / 2.0
            "atan2" -> atan2(a, b)
            "log_base" -> if (a > 0 && b > 0 && b != 1.0) ln(a) / ln(b) else 0.0
            "copy_sign" -> abs(a) * sign(b)
            "absolute" -> abs(a)
            "negative" -> -a
            "sqrt" -> sqrt(a.coerceAtLeast(0.0))
            "cube_root" -> Math.cbrt(a)
            "exp" -> exp(a)
            "log" -> if (a > 0) ln(a) else 0.0
            "log10" -> if (a > 0) log10(a) else 0.0
            "floor" -> floor(a)
            "ceil" -> ceil(a)
            "round" -> round(a)
            "truncate" -> if (a < 0) ceil(a) else floor(a)
            "fraction" -> a - floor(a)
            "sign" -> sign(a)
            "sin" -> sin(a)
            "cos" -> cos(a)
            "tan" -> tan(a)
            "asin" -> asin(a.coerceIn(-1.0, 1.0))
            "acos" -> acos(a.coerceIn(-1.0, 1.0))
            "atan" -> atan(a)
            "degrees" -> Math.toDegrees(a)
            "radians" -> Math.toRadians(a)
            "saturate" -> a.coerceIn(0.0, 1.0)
            "is_finite" -> a.isFinite()
            "is_nan" -> a.isNaN()
            "clamp" -> a.coerceIn(minValue, maxValue)
            "lerp" -> minValue + (maxValue - minValue) * a
            "inverse_lerp" -> if (maxValue == minValue) 0.0 else (a - minValue) / (maxValue - minValue)
            "remap" -> {
                val sourceMin = input.number("sourceMin")
                val sourceMax = input.number("sourceMax", 1.0)
                val factor = if (sourceMax == sourceMin) 0.0 else (a - sourceMin) / (sourceMax - sourceMin)
                minValue + (maxValue - minValue) * factor
            }
            "smoothstep" -> {
                val t = ((a - minValue) / (maxValue - minValue)).coerceIn(0.0, 1.0)
                t * t * (3 - 2 * t)
            }
            "move_towards" -> a + (b - a).coerceIn(-abs(input.number("step", 1.0)), abs(input.number("step", 1.0)))
            "random_range" -> {
                val seed = input.number("seed", 0.5).toBits()
                val normalized = ((seed xor (seed ushr 33)) and 0xFFFF).toDouble() / 65535.0
                minValue + (maxValue - minValue) * normalized
            }
            else -> error("Operação matemática desconhecida: $action")
        }
    }

    private fun compare(action: String, input: Map<String, Any?>): Boolean {
        val a = input["a"]
        val b = input["b"]
        val an = (a as? Number)?.toDouble()
        val bn = (b as? Number)?.toDouble()
        return when (action) {
            "equal" -> a == b
            "not_equal" -> a != b
            "greater" -> an != null && bn != null && an > bn
            "greater_equal" -> an != null && bn != null && an >= bn
            "less" -> an != null && bn != null && an < bn
            "less_equal" -> an != null && bn != null && an <= bn
            "between" -> an != null && an in input.number("min")..input.number("max", 1.0)
            "outside" -> an != null && an !in input.number("min")..input.number("max", 1.0)
            "approximately" -> an != null && bn != null && abs(an - bn) <= input.number("epsilon", 0.0001)
            "is_null" -> a == null
            else -> error("Comparação desconhecida: $action")
        }
    }

    private fun vector(action: String, input: Map<String, Any?>): Any {
        val a = input.vector("a", input.vector("value"))
        val b = input.vector("b", NoCodeVector(List(a.components.size) { 0.0 }))
        val paired = a.components.indices.map { index -> a.components[index] to b.components.getOrElse(index) { 0.0 } }
        return when (action) {
            "add" -> NoCodeVector(paired.map { it.first + it.second })
            "subtract" -> NoCodeVector(paired.map { it.first - it.second })
            "multiply" -> NoCodeVector(paired.map { it.first * it.second })
            "divide" -> NoCodeVector(paired.map { if (it.second == 0.0) 0.0 else it.first / it.second })
            "scale" -> a.map { it * input.number("scale", 1.0) }
            "normalize" -> {
                val length = sqrt(a.components.sumOf { it * it })
                if (length == 0.0) a else a.map { it / length }
            }
            "length" -> sqrt(a.components.sumOf { it * it })
            "length_squared" -> a.components.sumOf { it * it }
            "distance" -> sqrt(paired.sumOf { (it.first - it.second).pow(2) })
            "dot" -> paired.sumOf { it.first * it.second }
            "cross" -> {
                val av = a.components + List(3 - a.components.size) { 0.0 }
                val bv = b.components + List(3 - b.components.size) { 0.0 }
                NoCodeVector(listOf(
                    av[1] * bv[2] - av[2] * bv[1],
                    av[2] * bv[0] - av[0] * bv[2],
                    av[0] * bv[1] - av[1] * bv[0],
                ))
            }
            "lerp", "move_towards" -> {
                val t = input.number("t", input.number("step", 0.5)).coerceIn(0.0, 1.0)
                NoCodeVector(paired.map { it.first + (it.second - it.first) * t })
            }
            "reflect" -> {
                val normal = vector("normalize", mapOf("a" to b)) as NoCodeVector
                val dot = paired.indices.sumOf { a.components[it] * normal.components[it] }
                NoCodeVector(a.components.indices.map { a.components[it] - 2.0 * dot * normal.components[it] })
            }
            "project" -> {
                val denominator = b.components.sumOf { it * it }
                val factor = if (denominator == 0.0) 0.0 else paired.sumOf { it.first * it.second } / denominator
                b.map { it * factor }
            }
            "angle" -> {
                val denominator = sqrt(a.components.sumOf { it * it } * b.components.sumOf { it * it })
                if (denominator == 0.0) 0.0 else acos((paired.sumOf { it.first * it.second } / denominator).coerceIn(-1.0, 1.0))
            }
            "clamp_length" -> {
                val length = sqrt(a.components.sumOf { it * it })
                val maximum = input.number("max", 1.0)
                if (length <= maximum || length == 0.0) a else a.map { it * maximum / length }
            }
            "minimum" -> NoCodeVector(paired.map { min(it.first, it.second) })
            "maximum" -> NoCodeVector(paired.map { max(it.first, it.second) })
            "absolute" -> a.map(::abs)
            "floor" -> a.map(::floor)
            "ceil" -> a.map(::ceil)
            "round" -> a.map(::round)
            "snap" -> {
                val step = input.number("step", 1.0)
                if (step == 0.0) a else a.map { round(it / step) * step }
            }
            "rotate" -> {
                val radians = input.number("angle")
                if (a.components.size != 2) a else NoCodeVector(
                    listOf(
                        a.components[0] * cos(radians) - a.components[1] * sin(radians),
                        a.components[0] * sin(radians) + a.components[1] * cos(radians),
                    ),
                )
            }
            "inverse" -> a.map { -it }
            "is_zero" -> a.components.all { abs(it) < 0.000001 }
            "is_finite" -> a.components.all(Double::isFinite)
            "make" -> input.vector("value", a)
            "split" -> a.components
            "with_x", "with_y", "with_z", "with_w" -> {
                val index = "xyzw".indexOf(action.last())
                NoCodeVector(a.components.mapIndexed { itemIndex, value ->
                    if (itemIndex == index) input.number("value") else value
                })
            }
            else -> error("Operação vetorial desconhecida: $action")
        }
    }

    private fun color(action: String, input: Map<String, Any?>): Any {
        val color = input.color("color")
        val other = input.color("other", NoCodeColor(0.0, 0.0, 0.0, 1.0))
        val amount = input.number("amount", 0.5).coerceIn(0.0, 1.0)
        return when (action) {
            "make_rgb", "make_rgba" -> NoCodeColor(
                input.number("red"),
                input.number("green"),
                input.number("blue"),
                input.number("alpha", 1.0),
            ).clamped()
            "split_rgb" -> listOf(color.red, color.green, color.blue)
            "split_rgba" -> listOf(color.red, color.green, color.blue, color.alpha)
            "from_hex" -> parseHex(input["text"]?.toString().orEmpty())
            "to_hex" -> "#%02X%02X%02X%02X".format(
                (color.red * 255).roundToIntSafe(),
                (color.green * 255).roundToIntSafe(),
                (color.blue * 255).roundToIntSafe(),
                (color.alpha * 255).roundToIntSafe(),
            )
            "lerp" -> NoCodeColor(
                color.red + (other.red - color.red) * amount,
                color.green + (other.green - color.green) * amount,
                color.blue + (other.blue - color.blue) * amount,
                color.alpha + (other.alpha - color.alpha) * amount,
            ).clamped()
            "blend_add" -> NoCodeColor(color.red + other.red, color.green + other.green, color.blue + other.blue, color.alpha).clamped()
            "blend_multiply" -> NoCodeColor(color.red * other.red, color.green * other.green, color.blue * other.blue, color.alpha).clamped()
            "blend_screen" -> NoCodeColor(1 - (1 - color.red) * (1 - other.red), 1 - (1 - color.green) * (1 - other.green), 1 - (1 - color.blue) * (1 - other.blue), color.alpha).clamped()
            "blend_overlay" -> NoCodeColor(overlay(color.red, other.red), overlay(color.green, other.green), overlay(color.blue, other.blue), color.alpha).clamped()
            "lighten" -> NoCodeColor(max(color.red, other.red), max(color.green, other.green), max(color.blue, other.blue), color.alpha)
            "darken" -> NoCodeColor(min(color.red, other.red), min(color.green, other.green), min(color.blue, other.blue), color.alpha)
            "saturate", "desaturate", "contrast", "temperature" -> adjustColor(color, action, amount)
            "invert" -> NoCodeColor(1 - color.red, 1 - color.green, 1 - color.blue, color.alpha)
            "grayscale" -> color.luminance().let { NoCodeColor(it, it, it, color.alpha) }
            "alpha" -> color.alpha
            "with_alpha" -> color.copy(alpha = input.number("alpha", 1.0)).clamped()
            "luminance" -> color.luminance()
            "from_hsv", "to_hsv" -> color
            else -> error("Operação de cor desconhecida: $action")
        }
    }

    private fun text(action: String, input: Map<String, Any?>): Any {
        val text = input["text"]?.toString().orEmpty()
        val value = input["value"]?.toString() ?: input["b"]?.toString().orEmpty()
        val ignoreCase = input["ignoreCase"] as? Boolean ?: false
        return when (action) {
            "append" -> text + value
            "prepend" -> value + text
            "join" -> (input["items"] as? List<*>)?.joinToString(input["separator"]?.toString().orEmpty()).orEmpty()
            "split" -> text.split(input["separator"]?.toString() ?: " ")
            "replace" -> text.replace(input["old"]?.toString().orEmpty(), value, ignoreCase)
            "replace_first" -> text.replaceFirst(input["old"]?.toString().orEmpty(), value, ignoreCase)
            "contains" -> text.contains(value, ignoreCase)
            "starts_with" -> text.startsWith(value, ignoreCase)
            "ends_with" -> text.endsWith(value, ignoreCase)
            "equals_ignore_case" -> text.equals(value, true)
            "uppercase" -> text.uppercase()
            "lowercase" -> text.lowercase()
            "capitalize" -> text.replaceFirstChar(Char::uppercase)
            "trim" -> text.trim()
            "trim_start" -> text.trimStart()
            "trim_end" -> text.trimEnd()
            "substring" -> text.substring(input.int("start").coerceIn(0, text.length), input.int("end", text.length).coerceIn(0, text.length))
            "character_at" -> text.getOrNull(input.int("index"))?.toString().orEmpty()
            "length" -> text.length.toDouble()
            "is_empty" -> text.isEmpty()
            "is_blank" -> text.isBlank()
            "pad_start" -> text.padStart(input.int("length"), input.char("character", ' '))
            "pad_end" -> text.padEnd(input.int("length"), input.char("character", ' '))
            "repeat" -> text.repeat(input.int("count", 1).coerceIn(0, 10_000))
            "reverse" -> text.reversed()
            "format" -> text.replace("{0}", value)
            "number_to_text", "bool_to_text", "vector_to_text" -> input["value"].toString()
            "parse_number" -> text.toDoubleOrNull() ?: 0.0
            "parse_bool" -> text.equals("true", true)
            "regex_matches" -> Regex(value).matches(text)
            "regex_find" -> Regex(value).find(text)?.value.orEmpty()
            "regex_replace" -> Regex(input["pattern"]?.toString().orEmpty()).replace(text, value)
            "lines" -> text.lines()
            "words" -> text.trim().split(Regex("\\s+")).filter(String::isNotBlank)
            else -> error("Operação de texto desconhecida: $action")
        }
    }

    private fun list(action: String, input: Map<String, Any?>): Any? {
        val source = (input["list"] as? List<*>)?.toMutableList() ?: mutableListOf()
        val value = input["value"]
        val index = input.int("index")
        return when (action) {
            "create" -> mutableListOf<Any?>()
            "add" -> source.apply { add(value) }
            "insert" -> source.apply { add(index.coerceIn(0, size), value) }
            "set" -> source.apply { if (index in indices) this[index] = value }
            "get" -> source.getOrNull(index)
            "first" -> source.firstOrNull()
            "last" -> source.lastOrNull()
            "remove" -> source.apply { remove(value) }
            "remove_at" -> source.apply { if (index in indices) removeAt(index) }
            "clear" -> emptyList<Any?>()
            "contains" -> value in source
            "index_of" -> source.indexOf(value).toDouble()
            "last_index_of" -> source.lastIndexOf(value).toDouble()
            "count" -> source.size.toDouble()
            "is_empty" -> source.isEmpty()
            "reverse" -> source.reversed()
            "shuffle" -> source.sortedBy { stableHash(it) }
            "sort" -> source.sortedBy { it.toString() }
            "distinct" -> source.distinct()
            "slice" -> source.slice(input.int("start").coerceIn(0, source.size) until input.int("end", source.size).coerceIn(0, source.size))
            "concat" -> source + ((input["other"] as? List<*>) ?: emptyList<Any?>())
            "filter" -> source.filterNotNull()
            "map" -> source.toList()
            "reduce" -> source.reduceOrNull { accumulator, item ->
                if (accumulator is Number && item is Number) accumulator.toDouble() + item.toDouble() else "$accumulator$item"
            }
            "random" -> source.getOrNull((abs(input.number("seed", 0.0).toBits()) % max(1, source.size)).toInt())
            else -> error("Operação de lista desconhecida: $action")
        }
    }

    private fun Map<String, Any?>.number(key: String, default: Double = 0.0): Double =
        (this[key] as? Number)?.toDouble() ?: this[key]?.toString()?.toDoubleOrNull() ?: default

    private fun Map<String, Any?>.int(key: String, default: Int = 0): Int = number(key, default.toDouble()).toInt()
    private fun Map<String, Any?>.char(key: String, default: Char): Char = this[key]?.toString()?.firstOrNull() ?: default
    private fun Map<String, Any?>.vector(key: String, default: NoCodeVector = NoCodeVector(listOf(0.0, 0.0, 0.0))): NoCodeVector =
        this[key] as? NoCodeVector ?: default
    private fun Map<String, Any?>.color(key: String, default: NoCodeColor = NoCodeColor(0.0, 0.0, 0.0, 1.0)): NoCodeColor =
        this[key] as? NoCodeColor ?: default

    private fun parseHex(text: String): NoCodeColor {
        val clean = text.removePrefix("#")
        val value = clean.toLongOrNull(16) ?: return NoCodeColor(0.0, 0.0, 0.0, 1.0)
        val hasAlpha = clean.length >= 8
        val shift = if (hasAlpha) 24 else 16
        return NoCodeColor(
            ((value shr shift) and 0xFF) / 255.0,
            ((value shr (shift - 8)) and 0xFF) / 255.0,
            ((value shr (shift - 16)) and 0xFF) / 255.0,
            if (hasAlpha) (value and 0xFF) / 255.0 else 1.0,
        )
    }

    private fun overlay(base: Double, blend: Double): Double =
        if (base < 0.5) 2 * base * blend else 1 - 2 * (1 - base) * (1 - blend)

    private fun adjustColor(color: NoCodeColor, action: String, amount: Double): NoCodeColor {
        val luminance = color.luminance()
        return when (action) {
            "saturate" -> NoCodeColor(
                luminance + (color.red - luminance) * (1 + amount),
                luminance + (color.green - luminance) * (1 + amount),
                luminance + (color.blue - luminance) * (1 + amount),
                color.alpha,
            ).clamped()
            "desaturate" -> NoCodeColor(
                color.red + (luminance - color.red) * amount,
                color.green + (luminance - color.green) * amount,
                color.blue + (luminance - color.blue) * amount,
                color.alpha,
            )
            "contrast" -> NoCodeColor(
                0.5 + (color.red - 0.5) * (1 + amount),
                0.5 + (color.green - 0.5) * (1 + amount),
                0.5 + (color.blue - 0.5) * (1 + amount),
                color.alpha,
            ).clamped()
            "temperature" -> color.copy(red = color.red + amount * 0.15, blue = color.blue - amount * 0.15).clamped()
            else -> color
        }
    }

    private fun NoCodeColor.luminance(): Double = red * 0.2126 + green * 0.7152 + blue * 0.0722
    private fun Double.roundToIntSafe(): Int = round(this).toInt().coerceIn(0, 255)
    private fun stableHash(value: Any?): Int = value?.toString()?.fold(17) { acc, char -> acc * 31 + char.code } ?: 0
}
