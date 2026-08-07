.class public LOc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LSc/a;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LSc/a;

    invoke-direct {v0, p1}, LSc/a;-><init>(I)V

    iput-object v0, p0, LOc/c;->a:LSc/a;

    return-void
.end method

.method public constructor <init>(LSc/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, LOc/c;->a:LSc/a;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, LOc/c;->a:LSc/a;

    invoke-virtual {v0}, LSc/a;->a()I

    move-result v0

    return v0
.end method

.method public b()LOc/c;
    .locals 4

    new-instance v0, LOc/c;

    iget-object v1, p0, LOc/c;->a:LSc/a;

    invoke-virtual {v1}, LSc/a;->a()I

    move-result v1

    invoke-direct {v0, v1}, LOc/c;-><init>(I)V

    iget-object v1, v0, LOc/c;->a:LSc/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, LSc/a;->E(I)V

    iget-object v1, v0, LOc/c;->a:LSc/a;

    iget-object v3, p0, LOc/c;->a:LSc/a;

    invoke-virtual {v1, v3}, LSc/a;->I(LSc/a;)V

    iget-object v1, v0, LOc/c;->a:LSc/a;

    invoke-virtual {v1, v2}, LSc/a;->E(I)V

    return-object v0
.end method

.method public c(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    invoke-virtual {p0}, LOc/c;->a()I

    move-result v0

    sub-int/2addr v0, p1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, LOc/c;->o(IZ)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, LOc/c;->b()LOc/c;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, LOc/c;->a:LSc/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LSc/a;->h()V

    const/4 v0, 0x0

    iput-object v0, p0, LOc/c;->a:LSc/a;

    :cond_0
    return-void
.end method

.method public e(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LOc/c;->a:LSc/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LSc/a;->E(I)V

    iget-object v0, p0, LOc/c;->a:LSc/a;

    invoke-virtual {v0}, LSc/a;->a()I

    move-result v1

    invoke-virtual {v0, p1, v1}, LSc/a;->Q(FI)V

    return-void
.end method

.method public f(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, LOc/c;->a:LSc/a;

    invoke-virtual {v0, p1}, LSc/a;->n(I)F

    move-result p1

    return p1
.end method

.method public g()LSc/a;
    .locals 1

    iget-object v0, p0, LOc/c;->a:LSc/a;

    return-object v0
.end method

.method public h()[F
    .locals 1

    iget-object v0, p0, LOc/c;->a:LSc/a;

    invoke-virtual {v0}, LSc/a;->k0()[F

    move-result-object v0

    return-object v0
.end method

.method public i(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    invoke-virtual {p0}, LOc/c;->a()I

    move-result v0

    add-int/2addr v0, p1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, LOc/c;->o(IZ)V

    return-void
.end method

.method public j(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object v0, p0, LOc/c;->a:LSc/a;

    invoke-virtual {v0, p1}, LSc/a;->E(I)V

    return-void
.end method

.method public k(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LOc/c;->a:LSc/a;

    invoke-virtual {v0, p1}, LSc/a;->F(F)V

    return-void
.end method

.method public l([F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LOc/c;->a:LSc/a;

    invoke-virtual {v0, p1}, LSc/a;->O([F)V

    return-void
.end method

.method public m(FI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "count"
        }
    .end annotation

    iget-object v0, p0, LOc/c;->a:LSc/a;

    invoke-virtual {v0, p1, p2}, LSc/a;->Q(FI)V

    return-void
.end method

.method public n(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newCapacity"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, LOc/c;->o(IZ)V

    return-void
.end method

.method public o(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "newCapacity",
            "copyData"
        }
    .end annotation

    iget-object v0, p0, LOc/c;->a:LSc/a;

    invoke-virtual {v0}, LSc/a;->a()I

    move-result v0

    if-eq p1, v0, :cond_2

    new-instance v0, LSc/a;

    invoke-direct {v0, p1}, LSc/a;-><init>(I)V

    if-eqz p2, :cond_1

    iget-object p2, p0, LOc/c;->a:LSc/a;

    invoke-virtual {p2}, LSc/a;->a()I

    move-result p2

    const/4 v1, 0x0

    if-le p1, p2, :cond_0

    :goto_0
    iget-object p1, p0, LOc/c;->a:LSc/a;

    invoke-virtual {p1}, LSc/a;->a()I

    move-result p1

    if-ge v1, p1, :cond_1

    iget-object p1, p0, LOc/c;->a:LSc/a;

    invoke-virtual {p1, v1}, LSc/a;->n(I)F

    move-result p1

    invoke-virtual {v0, p1}, LSc/a;->F(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, LOc/c;->a:LSc/a;

    invoke-virtual {p2}, LSc/a;->a()I

    move-result p2

    if-ge p1, p2, :cond_1

    :goto_1
    if-ge v1, p1, :cond_1

    iget-object p2, p0, LOc/c;->a:LSc/a;

    invoke-virtual {p2, v1}, LSc/a;->n(I)F

    move-result p2

    invoke-virtual {v0, p2}, LSc/a;->F(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, LOc/c;->a:LSc/a;

    invoke-virtual {p1}, LSc/a;->h()V

    iput-object v0, p0, LOc/c;->a:LSc/a;

    :cond_2
    return-void
.end method

.method public p(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "value"
        }
    .end annotation

    iget-object v0, p0, LOc/c;->a:LSc/a;

    invoke-virtual {v0, p1}, LSc/a;->E(I)V

    iget-object p1, p0, LOc/c;->a:LSc/a;

    invoke-virtual {p1, p2}, LSc/a;->F(F)V

    return-void
.end method

.method public q(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LOc/c;->a:LSc/a;

    invoke-virtual {v0}, LSc/a;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, LSc/a;->E(I)V

    iget-object v0, p0, LOc/c;->a:LSc/a;

    invoke-virtual {v0, p1}, LSc/a;->F(F)V

    return-void
.end method

.method public r()I
    .locals 1

    iget-object v0, p0, LOc/c;->a:LSc/a;

    invoke-virtual {v0}, LSc/a;->a()I

    move-result v0

    return v0
.end method
