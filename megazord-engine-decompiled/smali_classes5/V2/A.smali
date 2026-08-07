.class public final LV2/A;
.super LV2/g;
.source "SourceFile"


# annotations
.annotation build LQ2/a;
.end annotation

.annotation runtime LV2/t;
.end annotation

.annotation runtime Ld3/f;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "LV2/g<",
        "TN;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, LV2/g;-><init>(Z)V

    return-void
.end method

.method public static e()LV2/A;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LV2/A<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, LV2/A;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LV2/A;-><init>(Z)V

    return-object v0
.end method

.method public static g(LV2/z;)LV2/A;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "LV2/z<",
            "TN;>;)",
            "LV2/A<",
            "TN;>;"
        }
    .end annotation

    new-instance v0, LV2/A;

    invoke-interface {p0}, LV2/z;->e()Z

    move-result v1

    invoke-direct {v0, v1}, LV2/A;-><init>(Z)V

    invoke-interface {p0}, LV2/z;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, LV2/A;->a(Z)LV2/A;

    move-result-object v0

    invoke-interface {p0}, LV2/z;->h()LV2/s;

    move-result-object v1

    invoke-virtual {v0, v1}, LV2/A;->j(LV2/s;)LV2/A;

    move-result-object v0

    invoke-interface {p0}, LV2/z;->p()LV2/s;

    move-result-object p0

    invoke-virtual {v0, p0}, LV2/A;->i(LV2/s;)LV2/A;

    move-result-object p0

    return-object p0
.end method

.method public static k()LV2/A;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LV2/A<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, LV2/A;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LV2/A;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public a(Z)LV2/A;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "LV2/A<",
            "TN;>;"
        }
    .end annotation

    iput-boolean p1, p0, LV2/g;->b:Z

    return-object p0
.end method

.method public b()LV2/P;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>()",
            "LV2/P<",
            "TN1;>;"
        }
    .end annotation

    new-instance v0, LV2/Y;

    invoke-direct {v0, p0}, LV2/Y;-><init>(LV2/g;)V

    return-object v0
.end method

.method public final c()LV2/A;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>()",
            "LV2/A<",
            "TN1;>;"
        }
    .end annotation

    return-object p0
.end method

.method public d()LV2/A;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LV2/A<",
            "TN;>;"
        }
    .end annotation

    new-instance v0, LV2/A;

    iget-boolean v1, p0, LV2/g;->a:Z

    invoke-direct {v0, v1}, LV2/A;-><init>(Z)V

    iget-boolean v1, p0, LV2/g;->b:Z

    iput-boolean v1, v0, LV2/g;->b:Z

    iget-object v1, p0, LV2/g;->c:LV2/s;

    iput-object v1, v0, LV2/g;->c:LV2/s;

    iget-object v1, p0, LV2/g;->e:LR2/C;

    iput-object v1, v0, LV2/g;->e:LR2/C;

    iget-object v1, p0, LV2/g;->d:LV2/s;

    iput-object v1, v0, LV2/g;->d:LV2/s;

    return-object v0
.end method

.method public f(I)LV2/A;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LV2/A<",
            "TN;>;"
        }
    .end annotation

    invoke-static {p1}, LV2/D;->b(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, LR2/C;->f(Ljava/lang/Object;)LR2/C;

    move-result-object p1

    iput-object p1, p0, LV2/g;->e:LR2/C;

    return-object p0
.end method

.method public h()LV2/E$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>()",
            "LV2/E$a<",
            "TN1;>;"
        }
    .end annotation

    invoke-virtual {p0}, LV2/A;->c()LV2/A;

    move-result-object v0

    new-instance v1, LV2/E$a;

    invoke-direct {v1, v0}, LV2/E$a;-><init>(LV2/A;)V

    return-object v1
.end method

.method public i(LV2/s;)LV2/A;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>(",
            "LV2/s<",
            "TN1;>;)",
            "LV2/A<",
            "TN1;>;"
        }
    .end annotation

    invoke-virtual {p1}, LV2/s;->h()LV2/s$b;

    move-result-object v0

    sget-object v1, LV2/s$b;->UNORDERED:LV2/s$b;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, LV2/s;->h()LV2/s$b;

    move-result-object v0

    sget-object v1, LV2/s$b;->STABLE:LV2/s$b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "The given elementOrder (%s) is unsupported. incidentEdgeOrder() only supports ElementOrder.unordered() and ElementOrder.stable()."

    invoke-static {v0, v1, p1}, LR2/H;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, LV2/A;->c()LV2/A;

    move-result-object v0

    invoke-static {p1}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LV2/s;

    iput-object p1, v0, LV2/g;->d:LV2/s;

    return-object v0
.end method

.method public j(LV2/s;)LV2/A;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>(",
            "LV2/s<",
            "TN1;>;)",
            "LV2/A<",
            "TN1;>;"
        }
    .end annotation

    invoke-virtual {p0}, LV2/A;->c()LV2/A;

    move-result-object v0

    invoke-static {p1}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LV2/s;

    iput-object p1, v0, LV2/g;->c:LV2/s;

    return-object v0
.end method
