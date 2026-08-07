.class public final LIf/d$f;
.super LIf/d$d;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lfg/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LIf/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "LIf/d$d<",
        "TK;TV;>;",
        "Ljava/util/Iterator<",
        "TV;>;",
        "Lfg/d;"
    }
.end annotation


# direct methods
.method public constructor <init>(LIf/d;)V
    .locals 1
    .param p1    # LIf/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LIf/d<",
            "TK;TV;>;)V"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, LIf/d$d;-><init>(LIf/d;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    invoke-virtual {p0}, LIf/d$d;->a()V

    invoke-virtual {p0}, LIf/d$d;->b()I

    move-result v0

    invoke-virtual {p0}, LIf/d$d;->e()LIf/d;

    move-result-object v1

    invoke-static {v1}, LIf/d;->g(LIf/d;)I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, LIf/d$d;->b()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, LIf/d$d;->g(I)V

    invoke-virtual {p0, v0}, LIf/d$d;->h(I)V

    invoke-virtual {p0}, LIf/d$d;->e()LIf/d;

    move-result-object v0

    invoke-static {v0}, LIf/d;->j(LIf/d;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-virtual {p0}, LIf/d$d;->d()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0}, LIf/d$d;->f()V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
