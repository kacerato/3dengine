.class public final LW2/u;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# annotations
.annotation build LQ2/a;
.end annotation

.annotation runtime LW2/k;
.end annotation


# instance fields
.field public final b:LW2/r;


# direct methods
.method public constructor <init>(LW2/q;Ljava/io/OutputStream;)V
    .locals 0

    invoke-static {p2}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/OutputStream;

    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-interface {p1}, LW2/q;->g()LW2/r;

    move-result-object p1

    invoke-static {p1}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LW2/r;

    iput-object p1, p0, LW2/u;->b:LW2/r;

    return-void
.end method


# virtual methods
.method public c()LW2/p;
    .locals 1

    iget-object v0, p0, LW2/u;->b:LW2/r;

    invoke-interface {v0}, LW2/r;->i()LW2/p;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, LW2/u;->b:LW2/r;

    int-to-byte v1, p1

    invoke-interface {v0, v1}, LW2/r;->c(B)LW2/r;

    .line 2
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, LW2/u;->b:LW2/r;

    invoke-interface {v0, p1, p2, p3}, LW2/r;->e([BII)LW2/r;

    .line 4
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
