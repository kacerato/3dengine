.class public Lki/r;
.super Lri/a;
.source "SourceFile"


# instance fields
.field public final a:Lpi/x;

.field public b:Lki/o;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lri/a;-><init>()V

    new-instance v0, Lpi/x;

    invoke-direct {v0}, Lpi/x;-><init>()V

    iput-object v0, p0, Lki/r;->a:Lpi/x;

    new-instance v0, Lki/o;

    invoke-direct {v0}, Lki/o;-><init>()V

    iput-object v0, p0, Lki/r;->b:Lki/o;

    return-void
.end method


# virtual methods
.method public b(Lri/h;)Lri/c;
    .locals 1

    invoke-interface {p1}, Lri/h;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lri/h;->getIndex()I

    move-result p1

    invoke-static {p1}, Lri/c;->b(I)Lri/c;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lri/c;->d()Lri/c;

    move-result-object p1

    return-object p1
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lki/r;->b:Lki/o;

    invoke-virtual {v0, p1}, Lki/o;->g(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lki/r;->b:Lki/o;

    invoke-virtual {v0}, Lki/o;->d()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lki/r;->a:Lpi/x;

    invoke-virtual {v0}, Lpi/v;->o()V

    :cond_0
    return-void
.end method

.method public g(Lqi/a;)V
    .locals 2

    iget-object v0, p0, Lki/r;->b:Lki/o;

    invoke-virtual {v0}, Lki/o;->d()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lki/r;->a:Lpi/x;

    invoke-interface {p1, v0, v1}, Lqi/a;->a(Ljava/lang/String;Lpi/v;)V

    :cond_0
    return-void
.end method

.method public getBlock()Lpi/b;
    .locals 1

    iget-object v0, p0, Lki/r;->a:Lpi/x;

    return-object v0
.end method

.method public h()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lki/r;->b:Lki/o;

    invoke-virtual {v0}, Lki/o;->d()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpi/s;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lki/r;->b:Lki/o;

    invoke-virtual {v0}, Lki/o;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
