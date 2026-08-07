.class public abstract LRg/b;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "LNg/d;",
        ">",
        "Ljava/io/InputStream;"
    }
.end annotation


# instance fields
.field public b:LRg/j;

.field public c:LNg/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public d:[B

.field public e:[B

.field public f:LTg/k;


# direct methods
.method public constructor <init>(LRg/j;LTg/k;[CIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, LRg/b;->e:[B

    iput-object p1, p0, LRg/b;->b:LRg/j;

    invoke-virtual {p0, p2, p3, p5}, LRg/b;->g(LTg/k;[CZ)LNg/d;

    move-result-object p1

    iput-object p1, p0, LRg/b;->c:LNg/d;

    iput-object p2, p0, LRg/b;->f:LTg/k;

    invoke-static {p2}, LXg/h;->i(LTg/b;)LUg/d;

    move-result-object p1

    sget-object p2, LUg/d;->DEFLATE:LUg/d;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, p4, [B

    iput-object p1, p0, LRg/b;->d:[B

    :cond_0
    return-void
.end method


# virtual methods
.method public final a([BI)V
    .locals 2

    iget-object v0, p0, LRg/b;->d:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public b(Ljava/io/InputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public c()LNg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, LRg/b;->c:LNg/d;

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LRg/b;->b:LRg/j;

    invoke-virtual {v0}, LRg/j;->close()V

    return-void
.end method

.method public d()[B
    .locals 1

    iget-object v0, p0, LRg/b;->d:[B

    return-object v0
.end method

.method public e()LTg/k;
    .locals 1

    iget-object v0, p0, LRg/b;->f:LTg/k;

    return-object v0
.end method

.method public f()J
    .locals 2

    iget-object v0, p0, LRg/b;->b:LRg/j;

    invoke-virtual {v0}, LRg/j;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract g(LTg/k;[CZ)LNg/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTg/k;",
            "[CZ)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public h([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LRg/b;->b:LRg/j;

    invoke-virtual {v0, p1}, LRg/j;->d([B)I

    move-result p1

    return p1
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, LRg/b;->e:[B

    invoke-virtual {p0, v0}, LRg/b;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, LRg/b;->e:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, LRg/b;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, LRg/b;->b:LRg/j;

    invoke-static {v0, p1, p2, p3}, LXg/h;->m(Ljava/io/InputStream;[BII)I

    move-result p3

    if-lez p3, :cond_0

    .line 5
    invoke-virtual {p0, p1, p3}, LRg/b;->a([BI)V

    .line 6
    iget-object v0, p0, LRg/b;->c:LNg/d;

    invoke-interface {v0, p1, p2, p3}, LNg/d;->a([BII)I

    :cond_0
    return p3
.end method
