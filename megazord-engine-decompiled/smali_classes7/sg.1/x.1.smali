.class public final enum Lsg/x;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lsg/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsg/x;",
        ">;",
        "Lsg/j;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LUf/a;

.field private static final synthetic $VALUES:[Lsg/x;

.field public static final enum CANON_EQ:Lsg/x;

.field public static final enum COMMENTS:Lsg/x;

.field public static final enum DOT_MATCHES_ALL:Lsg/x;

.field public static final enum IGNORE_CASE:Lsg/x;

.field public static final enum LITERAL:Lsg/x;

.field public static final enum MULTILINE:Lsg/x;

.field public static final enum UNIX_LINES:Lsg/x;


# instance fields
.field private final mask:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v7, Lsg/x;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v1, "IGNORE_CASE"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lsg/x;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/x;)V

    sput-object v7, Lsg/x;->IGNORE_CASE:Lsg/x;

    new-instance v0, Lsg/x;

    const/4 v13, 0x2

    const/4 v14, 0x0

    const-string v9, "MULTILINE"

    const/4 v10, 0x1

    const/16 v11, 0x8

    const/4 v12, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lsg/x;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/x;)V

    sput-object v0, Lsg/x;->MULTILINE:Lsg/x;

    new-instance v0, Lsg/x;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-string v2, "LITERAL"

    const/16 v4, 0x10

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lsg/x;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/x;)V

    sput-object v0, Lsg/x;->LITERAL:Lsg/x;

    new-instance v0, Lsg/x;

    const-string v9, "UNIX_LINES"

    const/4 v10, 0x3

    const/4 v11, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lsg/x;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/x;)V

    sput-object v0, Lsg/x;->UNIX_LINES:Lsg/x;

    new-instance v0, Lsg/x;

    const-string v2, "COMMENTS"

    const/4 v3, 0x4

    const/4 v4, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lsg/x;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/x;)V

    sput-object v0, Lsg/x;->COMMENTS:Lsg/x;

    new-instance v0, Lsg/x;

    const-string v9, "DOT_MATCHES_ALL"

    const/4 v10, 0x5

    const/16 v11, 0x20

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lsg/x;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/x;)V

    sput-object v0, Lsg/x;->DOT_MATCHES_ALL:Lsg/x;

    new-instance v0, Lsg/x;

    const-string v2, "CANON_EQ"

    const/4 v3, 0x6

    const/16 v4, 0x80

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lsg/x;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/x;)V

    sput-object v0, Lsg/x;->CANON_EQ:Lsg/x;

    invoke-static {}, Lsg/x;->b()[Lsg/x;

    move-result-object v0

    sput-object v0, Lsg/x;->$VALUES:[Lsg/x;

    invoke-static {v0}, LUf/c;->c([Ljava/lang/Enum;)LUf/a;

    move-result-object v0

    sput-object v0, Lsg/x;->$ENTRIES:LUf/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lsg/x;->value:I

    iput p4, p0, Lsg/x;->mask:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIIILkotlin/jvm/internal/x;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    move p4, p3

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lsg/x;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method public static final synthetic b()[Lsg/x;
    .locals 7

    sget-object v0, Lsg/x;->IGNORE_CASE:Lsg/x;

    sget-object v1, Lsg/x;->MULTILINE:Lsg/x;

    sget-object v2, Lsg/x;->LITERAL:Lsg/x;

    sget-object v3, Lsg/x;->UNIX_LINES:Lsg/x;

    sget-object v4, Lsg/x;->COMMENTS:Lsg/x;

    sget-object v5, Lsg/x;->DOT_MATCHES_ALL:Lsg/x;

    sget-object v6, Lsg/x;->CANON_EQ:Lsg/x;

    filled-new-array/range {v0 .. v6}, [Lsg/x;

    move-result-object v0

    return-object v0
.end method

.method public static c()LUf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LUf/a<",
            "Lsg/x;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lsg/x;->$ENTRIES:LUf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lsg/x;
    .locals 1

    const-class v0, Lsg/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsg/x;

    return-object p0
.end method

.method public static values()[Lsg/x;
    .locals 1

    sget-object v0, Lsg/x;->$VALUES:[Lsg/x;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsg/x;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lsg/x;->mask:I

    return v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lsg/x;->value:I

    return v0
.end method
