.class public final LE0/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LE0/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LE0/o$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()LE0/o;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, LE0/o;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2, v1}, LE0/o;-><init>(LE0/e;LE0/e;ILkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final varargs b([F)LE0/o;
    .locals 5
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    new-instance v0, LE0/o;

    new-instance v1, LE0/e;

    const/4 v2, 0x0

    aget v2, p1, v2

    const/4 v3, 0x2

    aget v3, p1, v3

    invoke-direct {v1, v2, v3}, LE0/e;-><init>(FF)V

    new-instance v2, LE0/e;

    const/4 v3, 0x1

    aget v3, p1, v3

    const/4 v4, 0x3

    aget p1, p1, v4

    invoke-direct {v2, v3, p1}, LE0/e;-><init>(FF)V

    invoke-direct {v0, v1, v2}, LE0/o;-><init>(LE0/e;LE0/e;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
