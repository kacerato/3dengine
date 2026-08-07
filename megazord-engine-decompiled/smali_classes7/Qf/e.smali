.class public final LQf/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQf/j;
.implements Ljava/io/Serializable;


# annotations
.annotation build LFf/l0;
    version = "1.3"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LQf/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineContextImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineContextImpl.kt\nkotlin/coroutines/CombinedContext\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,200:1\n1#2:201\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nCoroutineContextImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineContextImpl.kt\nkotlin/coroutines/CombinedContext\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,200:1\n1#2:201\n*E\n"
    }
.end annotation


# instance fields
.field public final b:LQf/j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:LQf/j$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(LQf/j;LQf/j$b;)V
    .locals 1
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LQf/j$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "left"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQf/e;->b:LQf/j;

    iput-object p2, p0, LQf/e;->c:LQf/j$b;

    return-void
.end method

.method public static synthetic e([LQf/j;Lkotlin/jvm/internal/m0$f;LFf/P0;LQf/j$b;)LFf/P0;
    .locals 0

    invoke-static {p0, p1, p2, p3}, LQf/e;->r([LQf/j;Lkotlin/jvm/internal/m0$f;LFf/P0;LQf/j$b;)LFf/P0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Ljava/lang/String;LQf/j$b;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, LQf/e;->p(Ljava/lang/String;LQf/j$b;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final j(Ljava/io/ObjectInputStream;)V
    .locals 1

    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization is supported via proxy only"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final m()I
    .locals 3

    const/4 v0, 0x2

    move-object v1, p0

    :goto_0
    iget-object v1, v1, LQf/e;->b:LQf/j;

    instance-of v2, v1, LQf/e;

    if-eqz v2, :cond_0

    check-cast v1, LQf/e;

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final p(Ljava/lang/String;LQf/j$b;)Ljava/lang/String;
    .locals 1

    const-string v0, "acc"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private final q()Ljava/lang/Object;
    .locals 5

    invoke-direct {p0}, LQf/e;->m()I

    move-result v0

    new-array v1, v0, [LQf/j;

    new-instance v2, Lkotlin/jvm/internal/m0$f;

    invoke-direct {v2}, Lkotlin/jvm/internal/m0$f;-><init>()V

    sget-object v3, LFf/P0;->a:LFf/P0;

    new-instance v4, LQf/c;

    invoke-direct {v4, v1, v2}, LQf/c;-><init>([LQf/j;Lkotlin/jvm/internal/m0$f;)V

    invoke-virtual {p0, v3, v4}, LQf/e;->fold(Ljava/lang/Object;Leg/p;)Ljava/lang/Object;

    iget v2, v2, Lkotlin/jvm/internal/m0$f;->b:I

    if-ne v2, v0, :cond_0

    new-instance v0, LQf/e$a;

    invoke-direct {v0, v1}, LQf/e$a;-><init>([LQf/j;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final r([LQf/j;Lkotlin/jvm/internal/m0$f;LFf/P0;LQf/j$b;)LFf/P0;
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "element"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p1, Lkotlin/jvm/internal/m0$f;->b:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p1, Lkotlin/jvm/internal/m0$f;->b:I

    aput-object p3, p0, p2

    sget-object p0, LFf/P0;->a:LFf/P0;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, LQf/e;

    if-eqz v0, :cond_0

    check-cast p1, LQf/e;

    invoke-direct {p1}, LQf/e;->m()I

    move-result v0

    invoke-direct {p0}, LQf/e;->m()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, p0}, LQf/e;->i(LQf/e;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public fold(Ljava/lang/Object;Leg/p;)Ljava/lang/Object;
    .locals 1
    .param p2    # Leg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Leg/p<",
            "-TR;-",
            "LQf/j$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LQf/e;->b:LQf/j;

    invoke-interface {v0, p1, p2}, LQf/j;->fold(Ljava/lang/Object;Leg/p;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, LQf/e;->c:LQf/j$b;

    invoke-interface {p2, p1, v0}, Leg/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(LQf/j$c;)LQf/j$b;
    .locals 2
    .param p1    # LQf/j$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "LQf/j$b;",
            ">(",
            "LQf/j$c<",
            "TE;>;)TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    :goto_0
    iget-object v1, v0, LQf/e;->c:LQf/j$b;

    invoke-interface {v1, p1}, LQf/j$b;->get(LQf/j$c;)LQf/j$b;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v0, v0, LQf/e;->b:LQf/j;

    instance-of v1, v0, LQf/e;

    if-eqz v1, :cond_1

    check-cast v0, LQf/e;

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, LQf/j;->get(LQf/j$c;)LQf/j$b;

    move-result-object p1

    return-object p1
.end method

.method public final h(LQf/j$b;)Z
    .locals 1

    invoke-interface {p1}, LQf/j$b;->getKey()LQf/j$c;

    move-result-object v0

    invoke-virtual {p0, v0}, LQf/e;->get(LQf/j$c;)LQf/j$b;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, LQf/e;->b:LQf/j;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, LQf/e;->c:LQf/j$b;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i(LQf/e;)Z
    .locals 1

    :goto_0
    iget-object v0, p1, LQf/e;->c:LQf/j$b;

    invoke-virtual {p0, v0}, LQf/e;->h(LQf/j$b;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p1, LQf/e;->b:LQf/j;

    instance-of v0, p1, LQf/e;

    if-eqz v0, :cond_1

    check-cast p1, LQf/e;

    goto :goto_0

    :cond_1
    const-string v0, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, LQf/j$b;

    invoke-virtual {p0, p1}, LQf/e;->h(LQf/j$b;)Z

    move-result p1

    return p1
.end method

.method public minusKey(LQf/j$c;)LQf/j;
    .locals 2
    .param p1    # LQf/j$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/j$c<",
            "*>;)",
            "LQf/j;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LQf/e;->c:LQf/j$b;

    invoke-interface {v0, p1}, LQf/j$b;->get(LQf/j$c;)LQf/j$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, LQf/e;->b:LQf/j;

    return-object p1

    :cond_0
    iget-object v0, p0, LQf/e;->b:LQf/j;

    invoke-interface {v0, p1}, LQf/j;->minusKey(LQf/j$c;)LQf/j;

    move-result-object p1

    iget-object v0, p0, LQf/e;->b:LQf/j;

    if-ne p1, v0, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_1
    sget-object v0, LQf/l;->b:LQf/l;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, LQf/e;->c:LQf/j$b;

    goto :goto_0

    :cond_2
    new-instance v0, LQf/e;

    iget-object v1, p0, LQf/e;->c:LQf/j$b;

    invoke-direct {v0, p1, v1}, LQf/e;-><init>(LQf/j;LQf/j$b;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public bridge plus(LQf/j;)LQf/j;
    .locals 0
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, LQf/j$a;->b(LQf/j;LQf/j;)LQf/j;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, LQf/d;

    invoke-direct {v1}, LQf/d;-><init>()V

    const-string v2, ""

    invoke-virtual {p0, v2, v1}, LQf/e;->fold(Ljava/lang/Object;Leg/p;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
