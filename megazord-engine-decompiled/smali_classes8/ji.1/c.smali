.class public abstract Lji/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lti/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lpi/v;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    const-class v1, Lii/e;

    const-class v2, Lii/c;

    const-class v3, Lii/a;

    const-class v4, Lii/d;

    const-class v5, Lii/b;

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public a(Lpi/v;)V
    .locals 1

    instance-of v0, p1, Lii/a;

    if-eqz v0, :cond_0

    check-cast p1, Lii/a;

    invoke-virtual {p0, p1}, Lji/c;->b(Lii/a;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lii/d;

    if-eqz v0, :cond_1

    check-cast p1, Lii/d;

    invoke-virtual {p0, p1}, Lji/c;->e(Lii/d;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lii/b;

    if-eqz v0, :cond_2

    check-cast p1, Lii/b;

    invoke-virtual {p0, p1}, Lji/c;->c(Lii/b;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lii/e;

    if-eqz v0, :cond_3

    check-cast p1, Lii/e;

    invoke-virtual {p0, p1}, Lji/c;->f(Lii/e;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lii/c;

    if-eqz v0, :cond_4

    check-cast p1, Lii/c;

    invoke-virtual {p0, p1}, Lji/c;->d(Lii/c;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public abstract b(Lii/a;)V
.end method

.method public abstract c(Lii/b;)V
.end method

.method public abstract d(Lii/c;)V
.end method

.method public abstract e(Lii/d;)V
.end method

.method public abstract f(Lii/e;)V
.end method
