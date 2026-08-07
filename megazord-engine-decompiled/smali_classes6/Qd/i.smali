.class public LQd/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQd/d;


# instance fields
.field public final a:LQd/d;

.field public final b:LOd/f;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>(LQd/d;LOd/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LQd/i;->c:I

    iput v0, p0, LQd/i;->d:I

    iput v0, p0, LQd/i;->e:I

    iput v0, p0, LQd/i;->f:I

    iput v0, p0, LQd/i;->g:I

    iput v0, p0, LQd/i;->h:I

    iput v0, p0, LQd/i;->i:I

    iput v0, p0, LQd/i;->j:I

    iput v0, p0, LQd/i;->k:I

    iput-object p1, p0, LQd/i;->a:LQd/d;

    iput-object p2, p0, LQd/i;->b:LOd/f;

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

    iget v0, p0, LQd/i;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LQd/i;->c:I

    iget-object v1, p0, LQd/i;->b:LOd/f;

    iget v1, v1, LOd/f;->a:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, LQd/i;->a:LQd/d;

    invoke-interface {v0, p1}, LQd/d;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFSizeException;

    const-string v0, "Too many comments."

    invoke-direct {p1, v0}, Lcom/mokiat/data/front/error/WFSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget v0, p0, LQd/i;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LQd/i;->j:I

    iget-object v1, p0, LQd/i;->b:LOd/f;

    iget v1, v1, LOd/f;->h:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, LQd/i;->a:LQd/d;

    invoke-interface {v0, p1}, LQd/d;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFSizeException;

    const-string v0, "Too many material libraries."

    invoke-direct {p1, v0}, Lcom/mokiat/data/front/error/WFSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(LOd/c;LOd/c;LOd/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget v0, p0, LQd/i;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LQd/i;->f:I

    iget-object v1, p0, LQd/i;->b:LOd/f;

    iget v1, v1, LOd/f;->d:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, LQd/i;->a:LQd/d;

    invoke-interface {v0, p1, p2, p3}, LQd/d;->c(LOd/c;LOd/c;LOd/c;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFSizeException;

    const-string p2, "Too many normals."

    invoke-direct {p1, p2}, Lcom/mokiat/data/front/error/WFSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(LOd/c;LOd/c;LOd/c;LOd/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget v0, p0, LQd/i;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LQd/i;->d:I

    iget-object v1, p0, LQd/i;->b:LOd/f;

    iget v1, v1, LOd/f;->b:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, LQd/i;->a:LQd/d;

    invoke-interface {v0, p1, p2, p3, p4}, LQd/d;->d(LOd/c;LOd/c;LOd/c;LOd/c;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFSizeException;

    const-string p2, "Too many vertices."

    invoke-direct {p1, p2}, Lcom/mokiat/data/front/error/WFSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget-object v0, p0, LQd/i;->a:LQd/d;

    invoke-interface {v0}, LQd/d;->e()V

    return-void
.end method

.method public f(LOd/c;LOd/c;LOd/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget v0, p0, LQd/i;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LQd/i;->e:I

    iget-object v1, p0, LQd/i;->b:LOd/f;

    iget v1, v1, LOd/f;->c:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, LQd/i;->a:LQd/d;

    invoke-interface {v0, p1, p2, p3}, LQd/d;->f(LOd/c;LOd/c;LOd/c;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFSizeException;

    const-string p2, "Too many texture coordinates."

    invoke-direct {p1, p2}, Lcom/mokiat/data/front/error/WFSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget v0, p0, LQd/i;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LQd/i;->h:I

    iget-object v1, p0, LQd/i;->b:LOd/f;

    iget v1, v1, LOd/f;->f:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, LQd/i;->a:LQd/d;

    invoke-interface {v0}, LQd/d;->g()V

    return-void

    :cond_0
    new-instance v0, Lcom/mokiat/data/front/error/WFSizeException;

    const-string v1, "Too many faces."

    invoke-direct {v0, v1}, Lcom/mokiat/data/front/error/WFSizeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget v0, p0, LQd/i;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LQd/i;->g:I

    iget-object v1, p0, LQd/i;->b:LOd/f;

    iget v1, v1, LOd/f;->e:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, LQd/i;->a:LQd/d;

    invoke-interface {v0, p1}, LQd/d;->h(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFSizeException;

    const-string v0, "Too many objects."

    invoke-direct {p1, v0}, Lcom/mokiat/data/front/error/WFSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget v0, p0, LQd/i;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LQd/i;->k:I

    iget-object v1, p0, LQd/i;->b:LOd/f;

    iget v1, v1, LOd/f;->i:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, LQd/i;->a:LQd/d;

    invoke-interface {v0, p1}, LQd/d;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFSizeException;

    const-string v0, "Too many material references."

    invoke-direct {p1, v0}, Lcom/mokiat/data/front/error/WFSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(LOd/d;LOd/d;LOd/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget v0, p0, LQd/i;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LQd/i;->i:I

    iget-object v1, p0, LQd/i;->b:LOd/f;

    iget v1, v1, LOd/f;->g:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, LQd/i;->a:LQd/d;

    invoke-interface {v0, p1, p2, p3}, LQd/d;->j(LOd/d;LOd/d;LOd/d;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFSizeException;

    const-string p2, "Too many data references."

    invoke-direct {p1, p2}, Lcom/mokiat/data/front/error/WFSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
