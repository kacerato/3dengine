.class public interface abstract Lo3/h;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-static {p1}, Lo3/F;->b(Ljava/lang/Class;)Lo3/F;

    move-result-object p1

    invoke-interface {p0, p1}, Lo3/h;->f(Lo3/F;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lo3/F;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo3/F<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    invoke-interface {p0, p1}, Lo3/h;->c(Lo3/F;)LA3/b;

    move-result-object p1

    invoke-interface {p1}, LA3/b;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method public abstract c(Lo3/F;)LA3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo3/F<",
            "TT;>;)",
            "LA3/b<",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation
.end method

.method public e(Ljava/lang/Class;)LA3/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "LA3/b<",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {p1}, Lo3/F;->b(Ljava/lang/Class;)Lo3/F;

    move-result-object p1

    invoke-interface {p0, p1}, Lo3/h;->c(Lo3/F;)LA3/b;

    move-result-object p1

    return-object p1
.end method

.method public f(Lo3/F;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo3/F<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p0, p1}, Lo3/h;->g(Lo3/F;)LA3/b;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, LA3/b;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract g(Lo3/F;)LA3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo3/F<",
            "TT;>;)",
            "LA3/b<",
            "TT;>;"
        }
    .end annotation
.end method

.method public h(Ljava/lang/Class;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lo3/F;->b(Ljava/lang/Class;)Lo3/F;

    move-result-object p1

    invoke-interface {p0, p1}, Lo3/h;->b(Lo3/F;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public abstract i(Lo3/F;)LA3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo3/F<",
            "TT;>;)",
            "LA3/a<",
            "TT;>;"
        }
    .end annotation
.end method

.method public j(Ljava/lang/Class;)LA3/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "LA3/b<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lo3/F;->b(Ljava/lang/Class;)Lo3/F;

    move-result-object p1

    invoke-interface {p0, p1}, Lo3/h;->g(Lo3/F;)LA3/b;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/lang/Class;)LA3/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "LA3/a<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lo3/F;->b(Ljava/lang/Class;)Lo3/F;

    move-result-object p1

    invoke-interface {p0, p1}, Lo3/h;->i(Lo3/F;)LA3/a;

    move-result-object p1

    return-object p1
.end method
