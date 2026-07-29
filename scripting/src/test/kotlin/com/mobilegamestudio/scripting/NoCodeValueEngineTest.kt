package com.mobilegamestudio.scripting

import com.mobilegamestudio.core.model.VisualNodeCatalog
import com.mobilegamestudio.core.model.VisualNodeCategory
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class NoCodeValueEngineTest {
    private val valueCategories = setOf(
        VisualNodeCategory.MATH,
        VisualNodeCategory.COMPARE,
        VisualNodeCategory.VECTOR,
        VisualNodeCategory.COLOR,
        VisualNodeCategory.TEXT,
        VisualNodeCategory.LIST,
    )

    @Test
    fun `functional value-node surface alone exceeds ITsMagic current pages`() {
        val executable = VisualNodeCatalog.definitions.filter { it.category in valueCategories }
        assertTrue(executable.size > VisualNodeCatalog.ITSMAGIC_CURRENT_DOCUMENTED_NODE_PAGES)
        assertTrue(executable.all { NoCodeValueEngine.supports(it.operation) })
    }

    @Test
    fun `math vector text and list operations return real values`() {
        assertEquals(7.0, NoCodeValueEngine.evaluate("math.add", mapOf("a" to 3, "b" to 4)))
        assertEquals(
            NoCodeVector(listOf(4.0, 6.0)),
            NoCodeValueEngine.evaluate(
                "vector.add",
                mapOf("a" to NoCodeVector(listOf(1.0, 2.0)), "b" to NoCodeVector(listOf(3.0, 4.0))),
            ),
        )
        assertEquals("MAGIC", NoCodeValueEngine.evaluate("text.uppercase", mapOf("text" to "magic")))
        assertEquals(3.0, NoCodeValueEngine.evaluate("list.count", mapOf("list" to listOf(1, 2, 3))))
    }

    @Test
    fun `every data operation has an executable implementation`() {
        val common = mapOf(
            "value" to 1.0,
            "text" to "magic",
            "old" to "m",
            "pattern" to "a",
            "separator" to " ",
            "items" to listOf("a", "b"),
            "list" to listOf(1.0, 2.0),
            "other" to listOf(3.0),
            "min" to 0.0,
            "max" to 1.0,
        )
        VisualNodeCatalog.definitions
            .filter { it.category in valueCategories }
            .forEach { definition ->
                val inputs = when (definition.category) {
                    VisualNodeCategory.VECTOR -> common + mapOf(
                        "a" to NoCodeVector(listOf(1.0, 2.0, 3.0)),
                        "b" to NoCodeVector(listOf(3.0, 2.0, 1.0)),
                    )
                    VisualNodeCategory.COLOR -> common + mapOf(
                        "color" to NoCodeColor(0.2, 0.4, 0.6),
                        "other" to NoCodeColor(0.6, 0.4, 0.2),
                    )
                    else -> common + mapOf("a" to 1.0, "b" to 2.0)
                }
                NoCodeValueEngine.evaluate(definition.operation, inputs)
            }
    }
}
