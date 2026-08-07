.class public final enum Lsg/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsg/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsg/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LUf/a;

.field private static final synthetic $VALUES:[Lsg/a;

.field public static final enum COMBINING_SPACING_MARK:Lsg/a;

.field public static final enum CONNECTOR_PUNCTUATION:Lsg/a;

.field public static final enum CONTROL:Lsg/a;

.field public static final enum CURRENCY_SYMBOL:Lsg/a;

.field public static final Companion:Lsg/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum DASH_PUNCTUATION:Lsg/a;

.field public static final enum DECIMAL_DIGIT_NUMBER:Lsg/a;

.field public static final enum ENCLOSING_MARK:Lsg/a;

.field public static final enum END_PUNCTUATION:Lsg/a;

.field public static final enum FINAL_QUOTE_PUNCTUATION:Lsg/a;

.field public static final enum FORMAT:Lsg/a;

.field public static final enum INITIAL_QUOTE_PUNCTUATION:Lsg/a;

.field public static final enum LETTER_NUMBER:Lsg/a;

.field public static final enum LINE_SEPARATOR:Lsg/a;

.field public static final enum LOWERCASE_LETTER:Lsg/a;

.field public static final enum MATH_SYMBOL:Lsg/a;

.field public static final enum MODIFIER_LETTER:Lsg/a;

.field public static final enum MODIFIER_SYMBOL:Lsg/a;

.field public static final enum NON_SPACING_MARK:Lsg/a;

.field public static final enum OTHER_LETTER:Lsg/a;

.field public static final enum OTHER_NUMBER:Lsg/a;

.field public static final enum OTHER_PUNCTUATION:Lsg/a;

.field public static final enum OTHER_SYMBOL:Lsg/a;

.field public static final enum PARAGRAPH_SEPARATOR:Lsg/a;

.field public static final enum PRIVATE_USE:Lsg/a;

.field public static final enum SPACE_SEPARATOR:Lsg/a;

.field public static final enum START_PUNCTUATION:Lsg/a;

.field public static final enum SURROGATE:Lsg/a;

.field public static final enum TITLECASE_LETTER:Lsg/a;

.field public static final enum UNASSIGNED:Lsg/a;

.field public static final enum UPPERCASE_LETTER:Lsg/a;


# instance fields
.field private final code:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lsg/a;

    const/4 v1, 0x0

    const-string v2, "Cn"

    const-string v3, "UNASSIGNED"

    invoke-direct {v0, v3, v1, v1, v2}, Lsg/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsg/a;->UNASSIGNED:Lsg/a;

    new-instance v0, Lsg/a;

    const/4 v1, 0x1

    const-string v2, "Lu"

    const-string v3, "UPPERCASE_LETTER"

    invoke-direct {v0, v3, v1, v1, v2}, Lsg/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsg/a;->UPPERCASE_LETTER:Lsg/a;

    new-instance v0, Lsg/a;

    const/4 v1, 0x2

    const-string v2, "Ll"

    const-string v3, "LOWERCASE_LETTER"

    invoke-direct {v0, v3, v1, v1, v2}, Lsg/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsg/a;->LOWERCASE_LETTER:Lsg/a;

    new-instance v0, Lsg/a;

    const/4 v1, 0x3

    const-string v2, "Lt"

    const-string v3, "TITLECASE_LETTER"

    invoke-direct {v0, v3, v1, v1, v2}, Lsg/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsg/a;->TITLECASE_LETTER:Lsg/a;

    new-instance v0, Lsg/a;

    const/4 v1, 0x4

    const-string v2, "Lm"

    const-string v3, "MODIFIER_LETTER"

    invoke-direct {v0, v3, v1, v1, v2}, Lsg/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsg/a;->MODIFIER_LETTER:Lsg/a;

    new-instance v0, Lsg/a;

    const/4 v1, 0x5

    const-string v2, "Lo"

    const-string v3, "OTHER_LETTER"

    invoke-direct {v0, v3, v1, v1, v2}, Lsg/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsg/a;->OTHER_LETTER:Lsg/a;

    new-instance v0, Lsg/a;

    const/4 v1, 0x6

    const-string v2, "Mn"

    const-string v3, "NON_SPACING_MARK"

    invoke-direct {v0, v3, v1, v1, v2}, Lsg/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsg/a;->NON_SPACING_MARK:Lsg/a;

    new-instance v0, Lsg/a;

    const/4 v1, 0x7

    const-string v2, "Me"

    const-string v3, "ENCLOSING_MARK"

    invoke-direct {v0, v3, v1, v1, v2}, Lsg/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsg/a;->ENCLOSING_MARK:Lsg/a;

    new-instance v0, Lsg/a;

    const/16 v1, 0x8

    const-string v2, "Mc"

    const-string v3, "COMBINING_SPACING_MARK"

    invoke-direct {v0, v3, v1, v1, v2}, Lsg/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsg/a;->COMBINING_SPACING_MARK:Lsg/a;

    new-instance v0, Lsg/a;

    const/16 v1, 0x9

    const-string v2, "Nd"

    const-string v3, "DECIMAL_DIGIT_NUMBER"

    invoke-direct {v0, v3, v1, v1, v2}, Lsg/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsg/a;->DECIMAL_DIGIT_NUMBER:Lsg/a;

    new-instance v0, Lsg/a;

    const/16 v1, 0xa

    const-string v2, "Nl"

    const-string v3, "LETTER_NUMBER"

    invoke-direct {v0, v3, v1, v1, v2}, Lsg/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsg/a;->LETTER_NUMBER:Lsg/a;

    new-instance v0, Lsg/a;

    const/16 v1, 0xb

    const-string v2, "No"

    const-string v3, "OTHER_NUMBER"

    invoke-direct {v0, v3, v1, v1, v2}, Lsg/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsg/a;->OTHER_NUMBER:Lsg/a;

    new-instance v0, Lsg/a;

    const/16 v1, 0xc

    const-string v2, "Zs"

    const-string v3, "SPACE_SEPARATOR"

    invoke-direct {v0, v3, v1, v1, v2}, Lsg/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsg/a;->SPACE_SEPARATOR:Lsg/a;

    new-instance v0, Lsg/a;

    const/16 v1, 0xd

    const-string v2, "Zl"

    const-string v3, "LINE_SEPARATOR"

    invoke-direct {v0, v3, v1, v1, v2}, Lsg/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsg/a;->LINE_SEPARATOR:Lsg/a;

    new-instance v0, Lsg/a;

    const/16 v1, 0xe

    const-string v2, "Zp"

    const-string v3, "PARAGRAPH_SEPARATOR"

    invoke-direct {v0, v3, v1, v1, v2}, Lsg/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsg/a;->PARAGRAPH_SEPARATOR:Lsg/a;

    new-instance v0, Lsg/a;

    const/16 v1, 0xf

    const-string v2, "Cc"

    const-string v3, "CONTROL"

    invoke-direct {v0, v3, v1, v1, v2}, Lsg/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsg/a;->CONTROL:Lsg/a;

    new-instance v0, Lsg/a;

    const/16 v1, 0x10

    const-string v2, "Cf"

    const-string v3, "FORMAT"

    invoke-direct {v0, v3, v1, v1, v2}, Lsg/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsg/a;->FORMAT:Lsg/a;

    new-instance v0, Lsg/a;

    const-string v1, "Co"

    const-string v2, "PRIVATE_USE"

    const/16 v3, 0x11

    const/16 v4, 0x12

    invoke-direct {v0, v2, v3, v4, v1}, Lsg/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsg/a;->PRIVATE_USE:Lsg/a;

    new-instance v0, Lsg/a;

    const-string v1, "Cs"

    const-string v2, "SURROGATE"

    const/16 v3, 0x13

    invoke-direct {v0, v2, v4, v3, v1}, Lsg/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsg/a;->SURROGATE:Lsg/a;

    new-instance v0, Lsg/a;

    const-string v1, "Pd"

    const-string v2, "DASH_PUNCTUATION"

    const/16 v4, 0x14

    invoke-direct {v0, v2, v3, v4, v1}, Lsg/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsg/a;->DASH_PUNCTUATION:Lsg/a;

    new-instance v0, Lsg/a;

    const-string v1, "Ps"

    const-string v2, "START_PUNCTUATION"

    const/16 v3, 0x15

    invoke-direct {v0, v2, v4, v3, v1}, Lsg/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsg/a;->START_PUNCTUATION:Lsg/a;

    new-instance v0, Lsg/a;

    const-string v1, "Pe"

    const-string v2, "END_PUNCTUATION"

    const/16 v4, 0x16

    invoke-direct {v0, v2, v3, v4, v1}, Lsg/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsg/a;->END_PUNCTUATION:Lsg/a;

    new-instance v0, Lsg/a;

    const/16 v1, 0x17

    const-string v2, "Pc"

    const-string v3, "CONNECTOR_PUNCTUATION"

    invoke-direct {v0, v3, v4, v1, v2}, Lsg/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsg/a;->CONNECTOR_PUNCTUATION:Lsg/a;

    new-instance v0, Lsg/a;

    const/16 v1, 0x18

    const-string v2, "Po"

    const-string v3, "OTHER_PUNCTUATION"

    const/16 v4, 0x17

    invoke-direct {v0, v3, v4, v1, v2}, Lsg/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsg/a;->OTHER_PUNCTUATION:Lsg/a;

    new-instance v0, Lsg/a;

    const/16 v1, 0x19

    const-string v2, "Sm"

    const-string v3, "MATH_SYMBOL"

    const/16 v4, 0x18

    invoke-direct {v0, v3, v4, v1, v2}, Lsg/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsg/a;->MATH_SYMBOL:Lsg/a;

    new-instance v0, Lsg/a;

    const/16 v1, 0x1a

    const-string v2, "Sc"

    const-string v3, "CURRENCY_SYMBOL"

    const/16 v4, 0x19

    invoke-direct {v0, v3, v4, v1, v2}, Lsg/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsg/a;->CURRENCY_SYMBOL:Lsg/a;

    new-instance v0, Lsg/a;

    const/16 v1, 0x1b

    const-string v2, "Sk"

    const-string v3, "MODIFIER_SYMBOL"

    const/16 v4, 0x1a

    invoke-direct {v0, v3, v4, v1, v2}, Lsg/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsg/a;->MODIFIER_SYMBOL:Lsg/a;

    new-instance v0, Lsg/a;

    const/16 v1, 0x1c

    const-string v2, "So"

    const-string v3, "OTHER_SYMBOL"

    const/16 v4, 0x1b

    invoke-direct {v0, v3, v4, v1, v2}, Lsg/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsg/a;->OTHER_SYMBOL:Lsg/a;

    new-instance v0, Lsg/a;

    const/16 v1, 0x1d

    const-string v2, "Pi"

    const-string v3, "INITIAL_QUOTE_PUNCTUATION"

    const/16 v4, 0x1c

    invoke-direct {v0, v3, v4, v1, v2}, Lsg/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsg/a;->INITIAL_QUOTE_PUNCTUATION:Lsg/a;

    new-instance v0, Lsg/a;

    const/16 v1, 0x1e

    const-string v2, "Pf"

    const-string v3, "FINAL_QUOTE_PUNCTUATION"

    const/16 v4, 0x1d

    invoke-direct {v0, v3, v4, v1, v2}, Lsg/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsg/a;->FINAL_QUOTE_PUNCTUATION:Lsg/a;

    invoke-static {}, Lsg/a;->a()[Lsg/a;

    move-result-object v0

    sput-object v0, Lsg/a;->$VALUES:[Lsg/a;

    invoke-static {v0}, LUf/c;->c([Ljava/lang/Enum;)LUf/a;

    move-result-object v0

    sput-object v0, Lsg/a;->$ENTRIES:LUf/a;

    new-instance v0, Lsg/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsg/a$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lsg/a;->Companion:Lsg/a$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lsg/a;->value:I

    iput-object p4, p0, Lsg/a;->code:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a()[Lsg/a;
    .locals 30

    sget-object v0, Lsg/a;->UNASSIGNED:Lsg/a;

    sget-object v1, Lsg/a;->UPPERCASE_LETTER:Lsg/a;

    sget-object v2, Lsg/a;->LOWERCASE_LETTER:Lsg/a;

    sget-object v3, Lsg/a;->TITLECASE_LETTER:Lsg/a;

    sget-object v4, Lsg/a;->MODIFIER_LETTER:Lsg/a;

    sget-object v5, Lsg/a;->OTHER_LETTER:Lsg/a;

    sget-object v6, Lsg/a;->NON_SPACING_MARK:Lsg/a;

    sget-object v7, Lsg/a;->ENCLOSING_MARK:Lsg/a;

    sget-object v8, Lsg/a;->COMBINING_SPACING_MARK:Lsg/a;

    sget-object v9, Lsg/a;->DECIMAL_DIGIT_NUMBER:Lsg/a;

    sget-object v10, Lsg/a;->LETTER_NUMBER:Lsg/a;

    sget-object v11, Lsg/a;->OTHER_NUMBER:Lsg/a;

    sget-object v12, Lsg/a;->SPACE_SEPARATOR:Lsg/a;

    sget-object v13, Lsg/a;->LINE_SEPARATOR:Lsg/a;

    sget-object v14, Lsg/a;->PARAGRAPH_SEPARATOR:Lsg/a;

    sget-object v15, Lsg/a;->CONTROL:Lsg/a;

    sget-object v16, Lsg/a;->FORMAT:Lsg/a;

    sget-object v17, Lsg/a;->PRIVATE_USE:Lsg/a;

    sget-object v18, Lsg/a;->SURROGATE:Lsg/a;

    sget-object v19, Lsg/a;->DASH_PUNCTUATION:Lsg/a;

    sget-object v20, Lsg/a;->START_PUNCTUATION:Lsg/a;

    sget-object v21, Lsg/a;->END_PUNCTUATION:Lsg/a;

    sget-object v22, Lsg/a;->CONNECTOR_PUNCTUATION:Lsg/a;

    sget-object v23, Lsg/a;->OTHER_PUNCTUATION:Lsg/a;

    sget-object v24, Lsg/a;->MATH_SYMBOL:Lsg/a;

    sget-object v25, Lsg/a;->CURRENCY_SYMBOL:Lsg/a;

    sget-object v26, Lsg/a;->MODIFIER_SYMBOL:Lsg/a;

    sget-object v27, Lsg/a;->OTHER_SYMBOL:Lsg/a;

    sget-object v28, Lsg/a;->INITIAL_QUOTE_PUNCTUATION:Lsg/a;

    sget-object v29, Lsg/a;->FINAL_QUOTE_PUNCTUATION:Lsg/a;

    filled-new-array/range {v0 .. v29}, [Lsg/a;

    move-result-object v0

    return-object v0
.end method

.method public static d()LUf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LUf/a<",
            "Lsg/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lsg/a;->$ENTRIES:LUf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lsg/a;
    .locals 1

    const-class v0, Lsg/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsg/a;

    return-object p0
.end method

.method public static values()[Lsg/a;
    .locals 1

    sget-object v0, Lsg/a;->$VALUES:[Lsg/a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsg/a;

    return-object v0
.end method


# virtual methods
.method public final b(C)Z
    .locals 1

    invoke-static {p1}, Ljava/lang/Character;->getType(C)I

    move-result p1

    iget v0, p0, Lsg/a;->value:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lsg/a;->code:Ljava/lang/String;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lsg/a;->value:I

    return v0
.end method
