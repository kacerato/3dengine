.class public LPd/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQd/d;


# instance fields
.field public a:LPd/k;

.field public b:LPd/m;

.field public c:LPd/j;

.field public d:LPd/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget-object v0, p0, LPd/n;->a:LPd/k;

    invoke-virtual {v0}, LPd/k;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(LOd/c;LOd/c;LOd/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    new-instance v0, LPd/l;

    invoke-interface {p1}, LOd/c;->get()F

    move-result p1

    invoke-interface {p2}, LOd/c;->get()F

    move-result p2

    invoke-interface {p3}, LOd/c;->get()F

    move-result p3

    invoke-direct {v0, p1, p2, p3}, LPd/l;-><init>(FFF)V

    iget-object p1, p0, LPd/n;->a:LPd/k;

    invoke-virtual {p1}, LPd/k;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(LOd/c;LOd/c;LOd/c;LOd/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    new-instance p4, LPd/q;

    invoke-interface {p1}, LOd/c;->get()F

    move-result p1

    invoke-interface {p2}, LOd/c;->get()F

    move-result p2

    invoke-interface {p3}, LOd/c;->get()F

    move-result p3

    invoke-direct {p4, p1, p2, p3}, LPd/q;-><init>(FFF)V

    iget-object p1, p0, LPd/n;->a:LPd/k;

    invoke-virtual {p1}, LPd/k;->i()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget-object v0, p0, LPd/n;->d:LPd/i;

    invoke-virtual {v0}, LPd/i;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/mokiat/data/front/error/WFCorruptException;

    const-string v1, "Face does not have at least three vertices."

    invoke-direct {v0, v1}, Lcom/mokiat/data/front/error/WFCorruptException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f(LOd/c;LOd/c;LOd/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    new-instance v0, LPd/p;

    invoke-interface {p1}, LOd/c;->get()F

    move-result p1

    invoke-direct {v0, p1}, LPd/p;-><init>(F)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, LOd/c;->get()F

    move-result p1

    iput p1, v0, LPd/p;->b:F

    sget-object p1, LPd/p$a;->TYPE_2D:LPd/p$a;

    iput-object p1, v0, LPd/p;->d:LPd/p$a;

    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, LOd/c;->get()F

    move-result p1

    iput p1, v0, LPd/p;->c:F

    sget-object p1, LPd/p$a;->TYPE_3D:LPd/p$a;

    iput-object p1, v0, LPd/p;->d:LPd/p$a;

    :cond_1
    iget-object p1, p0, LPd/n;->a:LPd/k;

    invoke-virtual {p1}, LPd/k;->g()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public g()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p0}, LPd/n;->k()V

    new-instance v0, LPd/i;

    invoke-direct {v0}, LPd/i;-><init>()V

    iput-object v0, p0, LPd/n;->d:LPd/i;

    iget-object v0, p0, LPd/n;->c:LPd/j;

    invoke-virtual {v0}, LPd/j;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, LPd/n;->d:LPd/i;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, LPd/n;->c:LPd/j;

    new-instance v0, LPd/m;

    invoke-direct {v0, p1}, LPd/m;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LPd/n;->b:LPd/m;

    iget-object p1, p0, LPd/n;->a:LPd/k;

    invoke-virtual {p1}, LPd/k;->e()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, LPd/n;->b:LPd/m;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p0}, LPd/n;->l()V

    new-instance v0, LPd/j;

    invoke-direct {v0}, LPd/j;-><init>()V

    iput-object v0, p0, LPd/n;->c:LPd/j;

    invoke-virtual {v0, p1}, LPd/j;->c(Ljava/lang/String;)V

    iget-object p1, p0, LPd/n;->b:LPd/m;

    invoke-virtual {p1}, LPd/m;->a()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, LPd/n;->c:LPd/j;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public j(LOd/d;LOd/d;LOd/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    new-instance v0, LPd/h;

    invoke-direct {v0}, LPd/h;-><init>()V

    invoke-virtual {p0, p1}, LPd/n;->o(LOd/d;)I

    move-result p1

    iput p1, v0, LPd/h;->a:I

    invoke-virtual {p0, p2}, LPd/n;->n(LOd/d;)I

    move-result p1

    iput p1, v0, LPd/h;->c:I

    invoke-virtual {p0, p3}, LPd/n;->m(LOd/d;)I

    move-result p1

    iput p1, v0, LPd/h;->b:I

    iget-object p1, p0, LPd/n;->d:LPd/i;

    invoke-virtual {p1}, LPd/i;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, LPd/n;->c:LPd/j;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LPd/n;->l()V

    new-instance v0, LPd/j;

    invoke-direct {v0}, LPd/j;-><init>()V

    iput-object v0, p0, LPd/n;->c:LPd/j;

    iget-object v0, p0, LPd/n;->b:LPd/m;

    invoke-virtual {v0}, LPd/m;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, LPd/n;->c:LPd/j;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, LPd/n;->b:LPd/m;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, LPd/m;

    const-string v1, "Default"

    invoke-direct {v0, v1}, LPd/m;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LPd/n;->b:LPd/m;

    iget-object v0, p0, LPd/n;->a:LPd/k;

    invoke-virtual {v0}, LPd/k;->e()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, LPd/n;->b:LPd/m;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final m(LOd/d;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-interface {p1}, LOd/d;->get()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1}, LOd/d;->get()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_1
    iget-object v0, p0, LPd/n;->a:LPd/k;

    invoke-virtual {v0}, LPd/k;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, LOd/d;->get()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public final n(LOd/d;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-interface {p1}, LOd/d;->get()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1}, LOd/d;->get()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_1
    iget-object v0, p0, LPd/n;->a:LPd/k;

    invoke-virtual {v0}, LPd/k;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, LOd/d;->get()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public final o(LOd/d;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-interface {p1}, LOd/d;->get()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1}, LOd/d;->get()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_1
    iget-object v0, p0, LPd/n;->a:LPd/k;

    invoke-virtual {v0}, LPd/k;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, LOd/d;->get()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public p(Ljava/io/BufferedReader;LOd/f;)LPd/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, LPd/n;->d:LPd/i;

    iput-object v0, p0, LPd/n;->c:LPd/j;

    iput-object v0, p0, LPd/n;->b:LPd/m;

    new-instance v0, LPd/k;

    invoke-direct {v0}, LPd/k;-><init>()V

    iput-object v0, p0, LPd/n;->a:LPd/k;

    new-instance v0, LQd/l;

    invoke-direct {v0}, LQd/l;-><init>()V

    if-nez p2, :cond_0

    invoke-interface {v0, p1, p0}, LQd/c;->b(Ljava/io/BufferedReader;LQd/d;)V

    goto :goto_0

    :cond_0
    new-instance v1, LQd/i;

    invoke-direct {v1, p0, p2}, LQd/i;-><init>(LQd/d;LOd/f;)V

    invoke-interface {v0, p1, v1}, LQd/c;->b(Ljava/io/BufferedReader;LQd/d;)V

    :goto_0
    iget-object p1, p0, LPd/n;->a:LPd/k;

    return-object p1
.end method
