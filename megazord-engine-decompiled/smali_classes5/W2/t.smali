.class public final LW2/t;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# annotations
.annotation build LQ2/a;
.end annotation

.annotation runtime LW2/k;
.end annotation


# instance fields
.field public final b:LW2/r;


# direct methods
.method public constructor <init>(LW2/q;Ljava/io/InputStream;)V
    .locals 0

    invoke-static {p2}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/InputStream;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {p1}, LW2/q;->g()LW2/r;

    move-result-object p1

    invoke-static {p1}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LW2/r;

    iput-object p1, p0, LW2/t;->b:LW2/r;

    return-void
.end method


# virtual methods
.method public c()LW2/p;
    .locals 1

    iget-object v0, p0, LW2/t;->b:LW2/r;

    invoke-interface {v0}, LW2/r;->i()LW2/p;

    move-result-object v0

    return-object v0
.end method

.method public mark(I)V
    .locals 0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation build Ld3/a;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v1, p0, LW2/t;->b:LW2/r;

    int-to-byte v2, v0

    invoke-interface {v1, v2}, LW2/r;->c(B)LW2/r;

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation build Ld3/a;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 4
    iget-object v0, p0, LW2/t;->b:LW2/r;

    invoke-interface {v0, p1, p2, p3}, LW2/r;->e([BII)LW2/r;

    :cond_0
    return p3
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    const-string v1, "reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
