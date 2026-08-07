.class public Lki/q;
.super Lri/a;
.source "SourceFile"


# instance fields
.field public final a:Lpi/u;

.field public b:I

.field public c:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lri/a;-><init>()V

    new-instance v0, Lpi/u;

    invoke-direct {v0}, Lpi/u;-><init>()V

    iput-object v0, p0, Lki/q;->a:Lpi/u;

    iput p1, p0, Lki/q;->b:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Lri/h;)Lri/c;
    .locals 2

    invoke-interface {p1}, Lri/h;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lki/q;->a:Lpi/u;

    invoke-virtual {v0}, Lpi/v;->e()Lpi/v;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lri/c;->d()Lri/c;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1}, Lri/h;->e()Lri/d;

    move-result-object v0

    invoke-interface {v0}, Lri/d;->getBlock()Lpi/b;

    move-result-object v0

    instance-of v1, v0, Lpi/x;

    if-nez v1, :cond_2

    instance-of v0, v0, Lpi/u;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lki/q;->c:Z

    invoke-interface {p1}, Lri/h;->d()I

    move-result p1

    invoke-static {p1}, Lri/c;->b(I)Lri/c;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-interface {p1}, Lri/h;->c()I

    move-result v0

    iget v1, p0, Lki/q;->b:I

    if-lt v0, v1, :cond_4

    invoke-interface {p1}, Lri/h;->getColumn()I

    move-result p1

    iget v0, p0, Lki/q;->b:I

    add-int/2addr p1, v0

    invoke-static {p1}, Lri/c;->a(I)Lri/c;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {}, Lri/c;->d()Lri/c;

    move-result-object p1

    return-object p1
.end method

.method public f(Lpi/b;)Z
    .locals 1

    iget-boolean p1, p0, Lki/q;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lki/q;->a:Lpi/u;

    invoke-virtual {p1}, Lpi/b;->p()Lpi/b;

    move-result-object p1

    instance-of v0, p1, Lpi/t;

    if-eqz v0, :cond_0

    check-cast p1, Lpi/t;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lpi/t;->r(Z)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public getBlock()Lpi/b;
    .locals 1

    iget-object v0, p0, Lki/q;->a:Lpi/u;

    return-object v0
.end method
