.class public LQd/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQd/b;


# instance fields
.field public final a:LQd/b;

.field public final b:LOd/e;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(LQd/b;LOd/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LQd/e;->c:I

    iput v0, p0, LQd/e;->d:I

    iput-object p1, p0, LQd/e;->a:LQd/b;

    iput-object p2, p0, LQd/e;->b:LOd/e;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget v0, p0, LQd/e;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LQd/e;->c:I

    iget-object v1, p0, LQd/e;->b:LOd/e;

    iget v1, v1, LOd/e;->a:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, LQd/e;->a:LQd/b;

    invoke-interface {v0, p1}, LQd/b;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFSizeException;

    const-string v0, "Too many comments."

    invoke-direct {p1, v0}, Lcom/mokiat/data/front/error/WFSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(LOd/c;LOd/c;LOd/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget-object v0, p0, LQd/e;->a:LQd/b;

    invoke-interface {v0, p1, p2, p3}, LQd/b;->b(LOd/c;LOd/c;LOd/c;)V

    return-void
.end method

.method public c(LOd/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget-object v0, p0, LQd/e;->a:LQd/b;

    invoke-interface {v0, p1}, LQd/b;->c(LOd/c;)V

    return-void
.end method

.method public d(LOd/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget-object v0, p0, LQd/e;->a:LQd/b;

    invoke-interface {v0, p1}, LQd/b;->d(LOd/c;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget v0, p0, LQd/e;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LQd/e;->d:I

    iget-object v1, p0, LQd/e;->b:LOd/e;

    iget v1, v1, LOd/e;->b:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, LQd/e;->a:LQd/b;

    invoke-interface {v0, p1}, LQd/b;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFSizeException;

    const-string v0, "Too many materials."

    invoke-direct {p1, v0}, Lcom/mokiat/data/front/error/WFSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget-object v0, p0, LQd/e;->a:LQd/b;

    invoke-interface {v0, p1}, LQd/b;->f(Ljava/lang/String;)V

    return-void
.end method

.method public g(LOd/c;LOd/c;LOd/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget-object v0, p0, LQd/e;->a:LQd/b;

    invoke-interface {v0, p1, p2, p3}, LQd/b;->g(LOd/c;LOd/c;LOd/c;)V

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget-object v0, p0, LQd/e;->a:LQd/b;

    invoke-interface {v0, p1}, LQd/b;->h(Ljava/lang/String;)V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget-object v0, p0, LQd/e;->a:LQd/b;

    invoke-interface {v0, p1}, LQd/b;->i(Ljava/lang/String;)V

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget-object v0, p0, LQd/e;->a:LQd/b;

    invoke-interface {v0, p1}, LQd/b;->j(Ljava/lang/String;)V

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget-object v0, p0, LQd/e;->a:LQd/b;

    invoke-interface {v0, p1}, LQd/b;->k(Ljava/lang/String;)V

    return-void
.end method

.method public l(LOd/c;LOd/c;LOd/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget-object v0, p0, LQd/e;->a:LQd/b;

    invoke-interface {v0, p1, p2, p3}, LQd/b;->l(LOd/c;LOd/c;LOd/c;)V

    return-void
.end method

.method public m(LOd/c;LOd/c;LOd/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget-object v0, p0, LQd/e;->a:LQd/b;

    invoke-interface {v0, p1, p2, p3}, LQd/b;->m(LOd/c;LOd/c;LOd/c;)V

    return-void
.end method
