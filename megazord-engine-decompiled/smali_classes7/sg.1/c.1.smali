.class public final enum Lsg/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsg/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsg/c;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCharDirectionality.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CharDirectionality.kt\nkotlin/text/CharDirectionality\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,124:1\n1220#2,2:125\n1249#2,4:127\n*S KotlinDebug\n*F\n+ 1 CharDirectionality.kt\nkotlin/text/CharDirectionality\n*L\n118#1:125,2\n118#1:127,4\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nCharDirectionality.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CharDirectionality.kt\nkotlin/text/CharDirectionality\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,124:1\n1220#2,2:125\n1249#2,4:127\n*S KotlinDebug\n*F\n+ 1 CharDirectionality.kt\nkotlin/text/CharDirectionality\n*L\n118#1:125,2\n118#1:127,4\n*E\n"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LUf/a;

.field private static final synthetic $VALUES:[Lsg/c;

.field public static final enum ARABIC_NUMBER:Lsg/c;

.field public static final enum BOUNDARY_NEUTRAL:Lsg/c;

.field public static final enum COMMON_NUMBER_SEPARATOR:Lsg/c;

.field public static final Companion:Lsg/c$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum EUROPEAN_NUMBER:Lsg/c;

.field public static final enum EUROPEAN_NUMBER_SEPARATOR:Lsg/c;

.field public static final enum EUROPEAN_NUMBER_TERMINATOR:Lsg/c;

.field public static final enum LEFT_TO_RIGHT:Lsg/c;

.field public static final enum LEFT_TO_RIGHT_EMBEDDING:Lsg/c;

.field public static final enum LEFT_TO_RIGHT_OVERRIDE:Lsg/c;

.field public static final enum NONSPACING_MARK:Lsg/c;

.field public static final enum OTHER_NEUTRALS:Lsg/c;

.field public static final enum PARAGRAPH_SEPARATOR:Lsg/c;

.field public static final enum POP_DIRECTIONAL_FORMAT:Lsg/c;

.field public static final enum RIGHT_TO_LEFT:Lsg/c;

.field public static final enum RIGHT_TO_LEFT_ARABIC:Lsg/c;

.field public static final enum RIGHT_TO_LEFT_EMBEDDING:Lsg/c;

.field public static final enum RIGHT_TO_LEFT_OVERRIDE:Lsg/c;

.field public static final enum SEGMENT_SEPARATOR:Lsg/c;

.field public static final enum UNDEFINED:Lsg/c;

.field public static final enum WHITESPACE:Lsg/c;

.field private static final directionalityMap$delegate:LFf/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFf/I<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lsg/c;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lsg/c;

    const/4 v1, -0x1

    const-string v2, "UNDEFINED"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lsg/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsg/c;->UNDEFINED:Lsg/c;

    new-instance v0, Lsg/c;

    const-string v1, "LEFT_TO_RIGHT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lsg/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsg/c;->LEFT_TO_RIGHT:Lsg/c;

    new-instance v0, Lsg/c;

    const-string v1, "RIGHT_TO_LEFT"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lsg/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsg/c;->RIGHT_TO_LEFT:Lsg/c;

    new-instance v0, Lsg/c;

    const-string v1, "RIGHT_TO_LEFT_ARABIC"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lsg/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsg/c;->RIGHT_TO_LEFT_ARABIC:Lsg/c;

    new-instance v0, Lsg/c;

    const-string v1, "EUROPEAN_NUMBER"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lsg/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsg/c;->EUROPEAN_NUMBER:Lsg/c;

    new-instance v0, Lsg/c;

    const-string v1, "EUROPEAN_NUMBER_SEPARATOR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lsg/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsg/c;->EUROPEAN_NUMBER_SEPARATOR:Lsg/c;

    new-instance v0, Lsg/c;

    const-string v1, "EUROPEAN_NUMBER_TERMINATOR"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v2}, Lsg/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsg/c;->EUROPEAN_NUMBER_TERMINATOR:Lsg/c;

    new-instance v0, Lsg/c;

    const-string v1, "ARABIC_NUMBER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lsg/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsg/c;->ARABIC_NUMBER:Lsg/c;

    new-instance v0, Lsg/c;

    const-string v1, "COMMON_NUMBER_SEPARATOR"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, v2}, Lsg/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsg/c;->COMMON_NUMBER_SEPARATOR:Lsg/c;

    new-instance v0, Lsg/c;

    const-string v1, "NONSPACING_MARK"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3}, Lsg/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsg/c;->NONSPACING_MARK:Lsg/c;

    new-instance v0, Lsg/c;

    const-string v1, "BOUNDARY_NEUTRAL"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v2}, Lsg/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsg/c;->BOUNDARY_NEUTRAL:Lsg/c;

    new-instance v0, Lsg/c;

    const-string v1, "PARAGRAPH_SEPARATOR"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v3}, Lsg/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsg/c;->PARAGRAPH_SEPARATOR:Lsg/c;

    new-instance v0, Lsg/c;

    const-string v1, "SEGMENT_SEPARATOR"

    const/16 v3, 0xc

    invoke-direct {v0, v1, v3, v2}, Lsg/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsg/c;->SEGMENT_SEPARATOR:Lsg/c;

    new-instance v0, Lsg/c;

    const-string v1, "WHITESPACE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v3}, Lsg/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsg/c;->WHITESPACE:Lsg/c;

    new-instance v0, Lsg/c;

    const-string v1, "OTHER_NEUTRALS"

    const/16 v3, 0xe

    invoke-direct {v0, v1, v3, v2}, Lsg/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsg/c;->OTHER_NEUTRALS:Lsg/c;

    new-instance v0, Lsg/c;

    const-string v1, "LEFT_TO_RIGHT_EMBEDDING"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v3}, Lsg/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsg/c;->LEFT_TO_RIGHT_EMBEDDING:Lsg/c;

    new-instance v0, Lsg/c;

    const-string v1, "LEFT_TO_RIGHT_OVERRIDE"

    const/16 v3, 0x10

    invoke-direct {v0, v1, v3, v2}, Lsg/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsg/c;->LEFT_TO_RIGHT_OVERRIDE:Lsg/c;

    new-instance v0, Lsg/c;

    const-string v1, "RIGHT_TO_LEFT_EMBEDDING"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v3}, Lsg/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsg/c;->RIGHT_TO_LEFT_EMBEDDING:Lsg/c;

    new-instance v0, Lsg/c;

    const-string v1, "RIGHT_TO_LEFT_OVERRIDE"

    const/16 v3, 0x12

    invoke-direct {v0, v1, v3, v2}, Lsg/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsg/c;->RIGHT_TO_LEFT_OVERRIDE:Lsg/c;

    new-instance v0, Lsg/c;

    const-string v1, "POP_DIRECTIONAL_FORMAT"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2, v3}, Lsg/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsg/c;->POP_DIRECTIONAL_FORMAT:Lsg/c;

    invoke-static {}, Lsg/c;->b()[Lsg/c;

    move-result-object v0

    sput-object v0, Lsg/c;->$VALUES:[Lsg/c;

    invoke-static {v0}, LUf/c;->c([Ljava/lang/Enum;)LUf/a;

    move-result-object v0

    sput-object v0, Lsg/c;->$ENTRIES:LUf/a;

    new-instance v0, Lsg/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsg/c$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lsg/c;->Companion:Lsg/c$a;

    new-instance v0, Lsg/b;

    invoke-direct {v0}, Lsg/b;-><init>()V

    invoke-static {v0}, LFf/K;->b(Leg/a;)LFf/I;

    move-result-object v0

    sput-object v0, Lsg/c;->directionalityMap$delegate:LFf/I;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lsg/c;->value:I

    return-void
.end method

.method public static synthetic a()Ljava/util/Map;
    .locals 1

    invoke-static {}, Lsg/c;->d()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic b()[Lsg/c;
    .locals 20

    sget-object v0, Lsg/c;->UNDEFINED:Lsg/c;

    sget-object v1, Lsg/c;->LEFT_TO_RIGHT:Lsg/c;

    sget-object v2, Lsg/c;->RIGHT_TO_LEFT:Lsg/c;

    sget-object v3, Lsg/c;->RIGHT_TO_LEFT_ARABIC:Lsg/c;

    sget-object v4, Lsg/c;->EUROPEAN_NUMBER:Lsg/c;

    sget-object v5, Lsg/c;->EUROPEAN_NUMBER_SEPARATOR:Lsg/c;

    sget-object v6, Lsg/c;->EUROPEAN_NUMBER_TERMINATOR:Lsg/c;

    sget-object v7, Lsg/c;->ARABIC_NUMBER:Lsg/c;

    sget-object v8, Lsg/c;->COMMON_NUMBER_SEPARATOR:Lsg/c;

    sget-object v9, Lsg/c;->NONSPACING_MARK:Lsg/c;

    sget-object v10, Lsg/c;->BOUNDARY_NEUTRAL:Lsg/c;

    sget-object v11, Lsg/c;->PARAGRAPH_SEPARATOR:Lsg/c;

    sget-object v12, Lsg/c;->SEGMENT_SEPARATOR:Lsg/c;

    sget-object v13, Lsg/c;->WHITESPACE:Lsg/c;

    sget-object v14, Lsg/c;->OTHER_NEUTRALS:Lsg/c;

    sget-object v15, Lsg/c;->LEFT_TO_RIGHT_EMBEDDING:Lsg/c;

    sget-object v16, Lsg/c;->LEFT_TO_RIGHT_OVERRIDE:Lsg/c;

    sget-object v17, Lsg/c;->RIGHT_TO_LEFT_EMBEDDING:Lsg/c;

    sget-object v18, Lsg/c;->RIGHT_TO_LEFT_OVERRIDE:Lsg/c;

    sget-object v19, Lsg/c;->POP_DIRECTIONAL_FORMAT:Lsg/c;

    filled-new-array/range {v0 .. v19}, [Lsg/c;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic c()LFf/I;
    .locals 1

    sget-object v0, Lsg/c;->directionalityMap$delegate:LFf/I;

    return-object v0
.end method

.method public static final d()Ljava/util/Map;
    .locals 4

    invoke-static {}, Lsg/c;->e()LUf/a;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, LHf/I;->d0(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, LHf/n0;->j(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lng/u;->w(II)I

    move-result v1

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lsg/c;

    iget v3, v3, Lsg/c;->value:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static e()LUf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LUf/a<",
            "Lsg/c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lsg/c;->$ENTRIES:LUf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lsg/c;
    .locals 1

    const-class v0, Lsg/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsg/c;

    return-object p0
.end method

.method public static values()[Lsg/c;
    .locals 1

    sget-object v0, Lsg/c;->$VALUES:[Lsg/c;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsg/c;

    return-object v0
.end method


# virtual methods
.method public final g()I
    .locals 1

    iget v0, p0, Lsg/c;->value:I

    return v0
.end method
