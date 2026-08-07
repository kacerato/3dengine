.class public abstract LSg/b;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "LNg/e;",
        ">",
        "Ljava/io/OutputStream;"
    }
.end annotation


# instance fields
.field public b:LSg/j;

.field public c:LNg/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LSg/j;LTg/s;[CZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, LSg/b;->b:LSg/j;

    invoke-virtual {p0, p1, p2, p3, p4}, LSg/b;->f(Ljava/io/OutputStream;LTg/s;[CZ)LNg/e;

    move-result-object p1

    iput-object p1, p0, LSg/b;->c:LNg/e;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LSg/b;->b:LSg/j;

    invoke-virtual {v0}, LSg/j;->c()V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LSg/b;->b:LSg/j;

    invoke-virtual {v0}, LSg/j;->close()V

    return-void
.end method

.method public d()LNg/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, LSg/b;->c:LNg/e;

    return-object v0
.end method

.method public e()J
    .locals 2

    iget-object v0, p0, LSg/b;->b:LSg/j;

    invoke-virtual {v0}, LSg/j;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract f(Ljava/io/OutputStream;LTg/s;[CZ)LNg/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "LTg/s;",
            "[CZ)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public g([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LSg/b;->b:LSg/j;

    invoke-virtual {v0, p1}, LSg/j;->write([B)V

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, LSg/b;->b:LSg/j;

    invoke-virtual {v0, p1}, LSg/j;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, LSg/b;->b:LSg/j;

    invoke-virtual {v0, p1}, LSg/j;->write([B)V

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
    iget-object v0, p0, LSg/b;->c:LNg/e;

    invoke-interface {v0, p1, p2, p3}, LNg/e;->a([BII)I

    .line 4
    iget-object v0, p0, LSg/b;->b:LSg/j;

    invoke-virtual {v0, p1, p2, p3}, LSg/j;->write([BII)V

    return-void
.end method
