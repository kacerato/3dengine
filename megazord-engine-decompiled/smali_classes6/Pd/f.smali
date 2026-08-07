.class public LPd/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQd/b;


# instance fields
.field public a:LPd/d;

.field public b:LPd/e;


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

.method public b(LOd/c;LOd/c;LOd/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p0}, LPd/f;->n()V

    iget-object v0, p0, LPd/f;->b:LPd/e;

    invoke-virtual {v0}, LPd/e;->a()LPd/c;

    move-result-object v0

    invoke-interface {p1}, LOd/c;->get()F

    move-result p1

    iput p1, v0, LPd/c;->a:F

    iget-object p1, p0, LPd/f;->b:LPd/e;

    invoke-virtual {p1}, LPd/e;->a()LPd/c;

    move-result-object p1

    invoke-interface {p2}, LOd/c;->get()F

    move-result p2

    iput p2, p1, LPd/c;->b:F

    iget-object p1, p0, LPd/f;->b:LPd/e;

    invoke-virtual {p1}, LPd/e;->a()LPd/c;

    move-result-object p1

    invoke-interface {p3}, LOd/c;->get()F

    move-result p2

    iput p2, p1, LPd/c;->c:F

    return-void
.end method

.method public c(LOd/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p0}, LPd/f;->n()V

    iget-object v0, p0, LPd/f;->b:LPd/e;

    invoke-interface {p1}, LOd/c;->get()F

    move-result p1

    invoke-virtual {v0, p1}, LPd/e;->o(F)V

    return-void
.end method

.method public d(LOd/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p0}, LPd/f;->n()V

    iget-object v0, p0, LPd/f;->b:LPd/e;

    invoke-interface {p1}, LOd/c;->get()F

    move-result p1

    invoke-virtual {v0, p1}, LPd/e;->r(F)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    new-instance v0, LPd/e;

    invoke-direct {v0, p1}, LPd/e;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LPd/f;->b:LPd/e;

    iget-object p1, p0, LPd/f;->a:LPd/d;

    invoke-virtual {p1}, LPd/d;->b()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, LPd/f;->b:LPd/e;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p0}, LPd/f;->n()V

    iget-object v0, p0, LPd/f;->b:LPd/e;

    invoke-virtual {v0, p1}, LPd/e;->m(Ljava/lang/String;)V

    return-void
.end method

.method public g(LOd/c;LOd/c;LOd/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p0}, LPd/f;->n()V

    iget-object v0, p0, LPd/f;->b:LPd/e;

    invoke-virtual {v0}, LPd/e;->l()LPd/c;

    move-result-object v0

    invoke-interface {p1}, LOd/c;->get()F

    move-result p1

    iput p1, v0, LPd/c;->a:F

    iget-object p1, p0, LPd/f;->b:LPd/e;

    invoke-virtual {p1}, LPd/e;->l()LPd/c;

    move-result-object p1

    invoke-interface {p2}, LOd/c;->get()F

    move-result p2

    iput p2, p1, LPd/c;->b:F

    iget-object p1, p0, LPd/f;->b:LPd/e;

    invoke-virtual {p1}, LPd/e;->l()LPd/c;

    move-result-object p1

    invoke-interface {p3}, LOd/c;->get()F

    move-result p2

    iput p2, p1, LPd/c;->c:F

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p0}, LPd/f;->n()V

    iget-object v0, p0, LPd/f;->b:LPd/e;

    invoke-virtual {v0, p1}, LPd/e;->t(Ljava/lang/String;)V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p0}, LPd/f;->n()V

    iget-object v0, p0, LPd/f;->b:LPd/e;

    invoke-virtual {v0, p1}, LPd/e;->n(Ljava/lang/String;)V

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p0}, LPd/f;->n()V

    iget-object v0, p0, LPd/f;->b:LPd/e;

    invoke-virtual {v0, p1}, LPd/e;->s(Ljava/lang/String;)V

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p0}, LPd/f;->n()V

    iget-object v0, p0, LPd/f;->b:LPd/e;

    invoke-virtual {v0, p1}, LPd/e;->p(Ljava/lang/String;)V

    return-void
.end method

.method public l(LOd/c;LOd/c;LOd/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p0}, LPd/f;->n()V

    iget-object v0, p0, LPd/f;->b:LPd/e;

    invoke-virtual {v0}, LPd/e;->h()LPd/c;

    move-result-object v0

    invoke-interface {p1}, LOd/c;->get()F

    move-result p1

    iput p1, v0, LPd/c;->a:F

    iget-object p1, p0, LPd/f;->b:LPd/e;

    invoke-virtual {p1}, LPd/e;->h()LPd/c;

    move-result-object p1

    invoke-interface {p2}, LOd/c;->get()F

    move-result p2

    iput p2, p1, LPd/c;->b:F

    iget-object p1, p0, LPd/f;->b:LPd/e;

    invoke-virtual {p1}, LPd/e;->h()LPd/c;

    move-result-object p1

    invoke-interface {p3}, LOd/c;->get()F

    move-result p2

    iput p2, p1, LPd/c;->c:F

    return-void
.end method

.method public m(LOd/c;LOd/c;LOd/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p0}, LPd/f;->n()V

    iget-object v0, p0, LPd/f;->b:LPd/e;

    invoke-virtual {v0}, LPd/e;->c()LPd/c;

    move-result-object v0

    invoke-interface {p1}, LOd/c;->get()F

    move-result p1

    iput p1, v0, LPd/c;->a:F

    iget-object p1, p0, LPd/f;->b:LPd/e;

    invoke-virtual {p1}, LPd/e;->c()LPd/c;

    move-result-object p1

    invoke-interface {p2}, LOd/c;->get()F

    move-result p2

    iput p2, p1, LPd/c;->b:F

    iget-object p1, p0, LPd/f;->b:LPd/e;

    invoke-virtual {p1}, LPd/e;->c()LPd/c;

    move-result-object p1

    invoke-interface {p3}, LOd/c;->get()F

    move-result p2

    iput p2, p1, LPd/c;->c:F

    return-void
.end method

.method public final n()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFCorruptException;
        }
    .end annotation

    iget-object v0, p0, LPd/f;->b:LPd/e;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/mokiat/data/front/error/WFCorruptException;

    const-string v1, "Material name has not been defined."

    invoke-direct {v0, v1}, Lcom/mokiat/data/front/error/WFCorruptException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public o(Ljava/io/BufferedReader;LOd/e;)LPd/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, LPd/f;->b:LPd/e;

    new-instance v0, LPd/d;

    invoke-direct {v0}, LPd/d;-><init>()V

    iput-object v0, p0, LPd/f;->a:LPd/d;

    new-instance v0, LQd/h;

    invoke-direct {v0}, LQd/h;-><init>()V

    if-nez p2, :cond_0

    invoke-interface {v0, p1, p0}, LQd/a;->b(Ljava/io/BufferedReader;LQd/b;)V

    goto :goto_0

    :cond_0
    new-instance v1, LQd/e;

    invoke-direct {v1, p0, p2}, LQd/e;-><init>(LQd/b;LOd/e;)V

    invoke-interface {v0, p1, v1}, LQd/a;->b(Ljava/io/BufferedReader;LQd/b;)V

    :goto_0
    iget-object p1, p0, LPd/f;->a:LPd/d;

    return-object p1
.end method
