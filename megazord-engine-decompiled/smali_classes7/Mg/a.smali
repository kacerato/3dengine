.class public LMg/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public b:Ljava/io/File;

.field public c:LTg/r;

.field public d:Z

.field public e:LVg/a;

.field public f:Z

.field public g:[C

.field public h:LQg/e;

.field public i:Ljava/nio/charset/Charset;

.field public j:Ljava/util/concurrent/ThreadFactory;

.field public k:Ljava/util/concurrent/ExecutorService;

.field public l:I

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field public n:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, LMg/a;-><init>(Ljava/io/File;[C)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;[C)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, LQg/e;

    invoke-direct {v0}, LQg/e;-><init>()V

    iput-object v0, p0, LMg/a;->h:LQg/e;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, LMg/a;->i:Ljava/nio/charset/Charset;

    const/16 v0, 0x1000

    .line 7
    iput v0, p0, LMg/a;->l:I

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LMg/a;->m:Ljava/util/List;

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, LMg/a;->n:Z

    if-eqz p1, :cond_0

    .line 10
    iput-object p1, p0, LMg/a;->b:Ljava/io/File;

    .line 11
    iput-object p2, p0, LMg/a;->g:[C

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, LMg/a;->f:Z

    .line 13
    new-instance p1, LVg/a;

    invoke-direct {p1}, LVg/a;-><init>()V

    iput-object p1, p0, LMg/a;->e:LVg/a;

    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "input zip file parameter is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, LMg/a;-><init>(Ljava/io/File;[C)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[C)V
    .locals 1

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, LMg/a;-><init>(Ljava/io/File;[C)V

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LTg/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-static {p1}, LXg/h;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, LXg/h;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p4, :cond_0

    new-instance p4, LTg/l;

    invoke-direct {p4}, LTg/l;-><init>()V

    :cond_0
    invoke-virtual {p0}, LMg/a;->n0()V

    new-instance v0, LWg/j;

    iget-object v1, p0, LMg/a;->c:LTg/r;

    iget-object v2, p0, LMg/a;->g:[C

    invoke-virtual {p0}, LMg/a;->l()LWg/h$b;

    move-result-object v3

    invoke-direct {v0, v1, v2, p4, v3}, LWg/j;-><init>(LTg/r;[CLTg/l;LWg/h$b;)V

    new-instance p4, LWg/j$a;

    invoke-virtual {p0}, LMg/a;->n()LTg/m;

    move-result-object v1

    invoke-direct {p4, p2, p1, p3, v1}, LWg/j$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LTg/m;)V

    invoke-virtual {v0, p4}, LWg/h;->e(Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "destination path is empty or null, cannot extract file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "file to extract is null or empty, cannot extract file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public A0([C)V
    .locals 0

    iput-object p1, p0, LMg/a;->g:[C

    return-void
.end method

.method public B()I
    .locals 1

    iget v0, p0, LMg/a;->l:I

    return v0
.end method

.method public D0(Z)V
    .locals 0

    iput-boolean p1, p0, LMg/a;->f:Z

    return-void
.end method

.method public F0(Ljava/util/concurrent/ThreadFactory;)V
    .locals 0

    iput-object p1, p0, LMg/a;->j:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public G0(Z)V
    .locals 0

    iput-boolean p1, p0, LMg/a;->n:Z

    return-void
.end method

.method public final H0(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public P()Ljava/nio/charset/Charset;
    .locals 1

    iget-object v0, p0, LMg/a;->i:Ljava/nio/charset/Charset;

    if-nez v0, :cond_0

    sget-object v0, LXg/d;->w:Ljava/nio/charset/Charset;

    :cond_0
    return-object v0
.end method

.method public Q()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    iget-object v0, p0, LMg/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, LMg/a;->n0()V

    iget-object v0, p0, LMg/a;->c:LTg/r;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LTg/r;->e()LTg/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LMg/a;->c:LTg/r;

    invoke-virtual {v0}, LTg/r;->e()LTg/g;

    move-result-object v0

    invoke-virtual {v0}, LTg/g;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "end of central directory record is null, cannot read comment"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "zip model is null, cannot read comment"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "zip file does not exist, cannot read comment"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public R()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, LMg/a;->k:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public S()Ljava/io/File;
    .locals 1

    iget-object v0, p0, LMg/a;->b:Ljava/io/File;

    return-object v0
.end method

.method public T(Ljava/lang/String;)LTg/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-static {p1}, LXg/h;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, LMg/a;->n0()V

    iget-object v0, p0, LMg/a;->c:LTg/r;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LTg/r;->b()LTg/d;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LMg/a;->c:LTg/r;

    invoke-static {v0, p1}, LQg/d;->c(LTg/r;Ljava/lang/String;)LTg/j;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1

    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "input file name is emtpy or null, cannot get FileHeader"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public U()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LTg/j;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-virtual {p0}, LMg/a;->n0()V

    iget-object v0, p0, LMg/a;->c:LTg/r;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LTg/r;->b()LTg/d;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LMg/a;->c:LTg/r;

    invoke-virtual {v0}, LTg/r;->b()LTg/d;

    move-result-object v0

    invoke-virtual {v0}, LTg/d;->b()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public X(LTg/j;)LRg/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p0}, LMg/a;->n0()V

    iget-object v0, p0, LMg/a;->c:LTg/r;

    if-eqz v0, :cond_0

    iget-object v1, p0, LMg/a;->g:[C

    invoke-static {v0, p1, v1}, LXg/g;->c(LTg/r;LTg/j;[C)LRg/k;

    move-result-object p1

    iget-object v0, p0, LMg/a;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "zip model is null, cannot get inputstream"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "FileHeader is null, cannot get InputStream"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Z()LVg/a;
    .locals 1

    iget-object v0, p0, LMg/a;->e:LVg/a;

    return-object v0
.end method

.method public a(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, LTg/s;

    invoke-direct {v0}, LTg/s;-><init>()V

    invoke-virtual {p0, p1, v0}, LMg/a;->f(Ljava/util/List;LTg/s;)V

    return-void
.end method

.method public b(Ljava/io/File;LTg/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, LMg/a;->f(Ljava/util/List;LTg/s;)V

    return-void
.end method

.method public b0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-virtual {p0}, LMg/a;->n0()V

    iget-object v0, p0, LMg/a;->c:LTg/r;

    invoke-static {v0}, LXg/c;->s(LTg/r;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    new-instance v0, LTg/s;

    invoke-direct {v0}, LTg/s;-><init>()V

    invoke-virtual {p0, p1, v0}, LMg/a;->d(Ljava/lang/String;LTg/s;)V

    return-void
.end method

.method public final c0()Ljava/io/RandomAccessFile;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LMg/a;->b:Ljava/io/File;

    invoke-static {v0}, LXg/c;->w(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LMg/a;->b:Ljava/io/File;

    invoke-static {v0}, LXg/c;->h(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    new-instance v1, LRg/g;

    iget-object v2, p0, LMg/a;->b:Ljava/io/File;

    sget-object v3, LUg/f;->READ:LUg/f;

    invoke-virtual {v3}, LUg/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, LRg/g;-><init>(Ljava/io/File;Ljava/lang/String;[Ljava/io/File;)V

    invoke-virtual {v1}, LRg/g;->c()V

    return-object v1

    :cond_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, LMg/a;->b:Ljava/io/File;

    sget-object v2, LUg/f;->READ:LUg/f;

    invoke-virtual {v2}, LUg/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LMg/a;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LMg/a;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public d(Ljava/lang/String;LTg/s;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-static {p1}, LXg/h;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, LMg/a;->f(Ljava/util/List;LTg/s;)V

    return-void

    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "file to add is null or empty"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    new-instance v0, LTg/s;

    invoke-direct {v0}, LTg/s;-><init>()V

    invoke-virtual {p0, p1, v0}, LMg/a;->f(Ljava/util/List;LTg/s;)V

    return-void
.end method

.method public e0()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    iget-object v0, p0, LMg/a;->c:LTg/r;

    if-nez v0, :cond_1

    invoke-virtual {p0}, LMg/a;->n0()V

    iget-object v0, p0, LMg/a;->c:LTg/r;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Zip Model is null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, LMg/a;->c:LTg/r;

    invoke-virtual {v0}, LTg/r;->b()LTg/d;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, LMg/a;->c:LTg/r;

    invoke-virtual {v0}, LTg/r;->b()LTg/d;

    move-result-object v0

    invoke-virtual {v0}, LTg/d;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, LMg/a;->c:LTg/r;

    invoke-virtual {v0}, LTg/r;->b()LTg/d;

    move-result-object v0

    invoke-virtual {v0}, LTg/d;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LTg/j;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, LTg/b;->t()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, LMg/a;->d:Z

    :cond_3
    iget-boolean v0, p0, LMg/a;->d:Z

    return v0

    :cond_4
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid zip file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f(Ljava/util/List;LTg/s;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "LTg/s;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    invoke-virtual {p0}, LMg/a;->n0()V

    iget-object v0, p0, LMg/a;->c:LTg/r;

    if-eqz v0, :cond_2

    iget-object v0, p0, LMg/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LMg/a;->c:LTg/r;

    invoke-virtual {v0}, LTg/r;->m()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Zip file already exists. Zip file format does not allow updating split/spanned files"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, LWg/e;

    iget-object v1, p0, LMg/a;->c:LTg/r;

    iget-object v2, p0, LMg/a;->g:[C

    iget-object v3, p0, LMg/a;->h:LQg/e;

    invoke-virtual {p0}, LMg/a;->l()LWg/h$b;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, LWg/e;-><init>(LTg/r;[CLQg/e;LWg/h$b;)V

    new-instance v1, LWg/e$a;

    invoke-virtual {p0}, LMg/a;->n()LTg/m;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, LWg/e$a;-><init>(Ljava/util/List;LTg/s;LTg/m;)V

    invoke-virtual {v0, v1}, LWg/h;->e(Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "internal error: zip model is null"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input parameters are null"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input file List is null or empty"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f0()Z
    .locals 1

    iget-boolean v0, p0, LMg/a;->f:Z

    return v0
.end method

.method public g(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    new-instance v0, LTg/s;

    invoke-direct {v0}, LTg/s;-><init>()V

    invoke-virtual {p0, p1, v0}, LMg/a;->h(Ljava/io/File;LTg/s;)V

    return-void
.end method

.method public h(Ljava/io/File;LTg/s;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, LMg/a;->j(Ljava/io/File;LTg/s;Z)V

    return-void

    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input parameters are null, cannot add folder to zip file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "cannot read input folder"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input folder is not a directory"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "folder does not exist"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input path is null, cannot add folder to zip file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h0()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    iget-object v0, p0, LMg/a;->c:LTg/r;

    if-nez v0, :cond_1

    invoke-virtual {p0}, LMg/a;->n0()V

    iget-object v0, p0, LMg/a;->c:LTg/r;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Zip Model is null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, LMg/a;->c:LTg/r;

    invoke-virtual {v0}, LTg/r;->m()Z

    move-result v0

    return v0
.end method

.method public i0()Z
    .locals 1

    iget-boolean v0, p0, LMg/a;->n:Z

    return v0
.end method

.method public final j(Ljava/io/File;LTg/s;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-virtual {p0}, LMg/a;->n0()V

    iget-object v0, p0, LMg/a;->c:LTg/r;

    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {v0}, LTg/r;->m()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "This is a split archive. Zip file format does not allow updating split/spanned files"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance p3, LWg/f;

    iget-object v0, p0, LMg/a;->c:LTg/r;

    iget-object v1, p0, LMg/a;->g:[C

    iget-object v2, p0, LMg/a;->h:LQg/e;

    invoke-virtual {p0}, LMg/a;->l()LWg/h$b;

    move-result-object v3

    invoke-direct {p3, v0, v1, v2, v3}, LWg/f;-><init>(LTg/r;[CLQg/e;LWg/h$b;)V

    new-instance v0, LWg/f$a;

    invoke-virtual {p0}, LMg/a;->n()LTg/m;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, LWg/f$a;-><init>(Ljava/io/File;LTg/s;LTg/m;)V

    invoke-virtual {p3, v0}, LWg/h;->e(Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "internal error: zip model is null"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j0()Z
    .locals 2

    iget-object v0, p0, LMg/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, LMg/a;->n0()V

    iget-object v0, p0, LMg/a;->c:LTg/r;

    invoke-virtual {v0}, LTg/r;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LMg/a;->b0()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, LMg/a;->H0(Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0

    :catch_0
    return v1
.end method

.method public k(Ljava/io/InputStream;LTg/s;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LMg/a;->D0(Z)V

    invoke-virtual {p0}, LMg/a;->n0()V

    iget-object v0, p0, LMg/a;->c:LTg/r;

    if-eqz v0, :cond_2

    iget-object v0, p0, LMg/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LMg/a;->c:LTg/r;

    invoke-virtual {v0}, LTg/r;->m()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Zip file already exists. Zip file format does not allow updating split/spanned files"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, LWg/g;

    iget-object v1, p0, LMg/a;->c:LTg/r;

    iget-object v2, p0, LMg/a;->g:[C

    iget-object v3, p0, LMg/a;->h:LQg/e;

    invoke-virtual {p0}, LMg/a;->l()LWg/h$b;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, LWg/g;-><init>(LTg/r;[CLQg/e;LWg/h$b;)V

    new-instance v1, LWg/g$a;

    invoke-virtual {p0}, LMg/a;->n()LTg/m;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, LWg/g$a;-><init>(Ljava/io/InputStream;LTg/s;LTg/m;)V

    invoke-virtual {v0, v1}, LWg/h;->e(Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "internal error: zip model is null"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "zip parameters are null"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "inputstream is null, cannot add file to zip"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k0(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, LMg/a;->n0()V

    iget-object v0, p0, LMg/a;->c:LTg/r;

    if-eqz v0, :cond_0

    new-instance v1, LWg/k;

    invoke-virtual {p0}, LMg/a;->l()LWg/h$b;

    move-result-object v2

    invoke-direct {v1, v0, v2}, LWg/k;-><init>(LTg/r;LWg/h$b;)V

    new-instance v0, LWg/k$a;

    invoke-virtual {p0}, LMg/a;->n()LTg/m;

    move-result-object v2

    invoke-direct {v0, p1, v2}, LWg/k$a;-><init>(Ljava/io/File;LTg/m;)V

    invoke-virtual {v1, v0}, LWg/h;->e(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "zip model is null, corrupt zip file?"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "output Zip File already exists"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "outputZipFile is null, cannot merge split files"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final l()LWg/h$b;
    .locals 4

    iget-boolean v0, p0, LMg/a;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, LMg/a;->j:Ljava/util/concurrent/ThreadFactory;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    iput-object v0, p0, LMg/a;->j:Ljava/util/concurrent/ThreadFactory;

    :cond_0
    iget-object v0, p0, LMg/a;->j:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, LMg/a;->k:Ljava/util/concurrent/ExecutorService;

    :cond_1
    new-instance v0, LWg/h$b;

    iget-object v1, p0, LMg/a;->k:Ljava/util/concurrent/ExecutorService;

    iget-boolean v2, p0, LMg/a;->f:Z

    iget-object v3, p0, LMg/a;->e:LVg/a;

    invoke-direct {v0, v1, v2, v3}, LWg/h$b;-><init>(Ljava/util/concurrent/ExecutorService;ZLVg/a;)V

    return-object v0
.end method

.method public final n()LTg/m;
    .locals 4

    new-instance v0, LTg/m;

    iget-object v1, p0, LMg/a;->i:Ljava/nio/charset/Charset;

    iget v2, p0, LMg/a;->l:I

    iget-boolean v3, p0, LMg/a;->n:Z

    invoke-direct {v0, v1, v2, v3}, LTg/m;-><init>(Ljava/nio/charset/Charset;IZ)V

    return-object v0
.end method

.method public final n0()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    iget-object v0, p0, LMg/a;->c:LTg/r;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LMg/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, LMg/a;->o()V

    return-void

    :cond_1
    iget-object v0, p0, LMg/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_0
    invoke-virtual {p0}, LMg/a;->c0()Ljava/io/RandomAccessFile;

    move-result-object v0
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, LQg/b;

    invoke-direct {v1}, LQg/b;-><init>()V

    invoke-virtual {p0}, LMg/a;->n()LTg/m;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, LQg/b;->h(Ljava/io/RandomAccessFile;LTg/m;)LTg/r;

    move-result-object v1

    iput-object v1, p0, LMg/a;->c:LTg/r;

    iget-object v2, p0, LMg/a;->b:Ljava/io/File;

    invoke-virtual {v1, v2}, LTg/r;->C(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1
    :try_end_4
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :goto_3
    throw v0

    :cond_4
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "no read access for the input zip file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final o()V
    .locals 2

    new-instance v0, LTg/r;

    invoke-direct {v0}, LTg/r;-><init>()V

    iput-object v0, p0, LMg/a;->c:LTg/r;

    iget-object v1, p0, LMg/a;->b:Ljava/io/File;

    invoke-virtual {v0, v1}, LTg/r;->C(Ljava/io/File;)V

    return-void
.end method

.method public o0(LTg/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LTg/b;->j()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LMg/a;->p0(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "input file header is null, cannot remove file"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public p(Ljava/util/List;LTg/s;ZJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "LTg/s;",
            "ZJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    iget-object v0, p0, LMg/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LMg/a;->o()V

    iget-object v0, p0, LMg/a;->c:LTg/r;

    invoke-virtual {v0, p3}, LTg/r;->v(Z)V

    iget-object p3, p0, LMg/a;->c:LTg/r;

    invoke-virtual {p3, p4, p5}, LTg/r;->w(J)V

    new-instance p3, LWg/e;

    iget-object p4, p0, LMg/a;->c:LTg/r;

    iget-object p5, p0, LMg/a;->g:[C

    iget-object v0, p0, LMg/a;->h:LQg/e;

    invoke-virtual {p0}, LMg/a;->l()LWg/h$b;

    move-result-object v1

    invoke-direct {p3, p4, p5, v0, v1}, LWg/e;-><init>(LTg/r;[CLQg/e;LWg/h$b;)V

    new-instance p4, LWg/e$a;

    invoke-virtual {p0}, LMg/a;->n()LTg/m;

    move-result-object p5

    invoke-direct {p4, p1, p2, p5}, LWg/e$a;-><init>(Ljava/util/List;LTg/s;LTg/m;)V

    invoke-virtual {p3, p4}, LWg/h;->e(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input file List is null, cannot create zip file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "zip file: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, LMg/a;->b:Ljava/io/File;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " already exists. To add files to existing zip file use addFile method"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public p0(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-static {p1}, LXg/h;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, LMg/a;->q0(Ljava/util/List;)V

    return-void

    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "file name is empty or null, cannot remove file"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q(Ljava/io/File;LTg/s;ZJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    iget-object v0, p0, LMg/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, LMg/a;->o()V

    iget-object v0, p0, LMg/a;->c:LTg/r;

    invoke-virtual {v0, p3}, LTg/r;->v(Z)V

    if-eqz p3, :cond_0

    iget-object p3, p0, LMg/a;->c:LTg/r;

    invoke-virtual {p3, p4, p5}, LTg/r;->w(J)V

    :cond_0
    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, LMg/a;->j(Ljava/io/File;LTg/s;Z)V

    return-void

    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "zip file: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, LMg/a;->b:Ljava/io/File;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " already exists. To add files to existing zip file use addFolder method"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input parameters are null, cannot create zip file from folder"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "folderToAdd is null, cannot create zip file from folder"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q0(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LMg/a;->c:LTg/r;

    if-nez v0, :cond_1

    invoke-virtual {p0}, LMg/a;->n0()V

    :cond_1
    iget-object v0, p0, LMg/a;->c:LTg/r;

    invoke-virtual {v0}, LTg/r;->m()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, LWg/l;

    iget-object v1, p0, LMg/a;->c:LTg/r;

    iget-object v2, p0, LMg/a;->h:LQg/e;

    invoke-virtual {p0}, LMg/a;->l()LWg/h$b;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, LWg/l;-><init>(LTg/r;LQg/e;LWg/h$b;)V

    new-instance v1, LWg/l$a;

    invoke-virtual {p0}, LMg/a;->n()LTg/m;

    move-result-object v2

    invoke-direct {v1, p1, v2}, LWg/l$a;-><init>(Ljava/util/List;LTg/m;)V

    invoke-virtual {v0, v1}, LWg/h;->e(Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "Zip file format does not allow updating split/spanned files"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "fileNames list is null"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    new-instance v0, LTg/l;

    invoke-direct {v0}, LTg/l;-><init>()V

    invoke-virtual {p0, p1, v0}, LMg/a;->s(Ljava/lang/String;LTg/l;)V

    return-void
.end method

.method public s(Ljava/lang/String;LTg/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-static {p1}, LXg/h;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LXg/h;->d(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LMg/a;->c:LTg/r;

    if-nez v0, :cond_0

    invoke-virtual {p0}, LMg/a;->n0()V

    :cond_0
    iget-object v0, p0, LMg/a;->c:LTg/r;

    if-eqz v0, :cond_1

    new-instance v1, LWg/i;

    iget-object v2, p0, LMg/a;->g:[C

    invoke-virtual {p0}, LMg/a;->l()LWg/h$b;

    move-result-object v3

    invoke-direct {v1, v0, v2, p2, v3}, LWg/i;-><init>(LTg/r;[CLTg/l;LWg/h$b;)V

    new-instance p2, LWg/i$a;

    invoke-virtual {p0}, LMg/a;->n()LTg/m;

    move-result-object v0

    invoke-direct {p2, p1, v0}, LWg/i$a;-><init>(Ljava/lang/String;LTg/m;)V

    invoke-virtual {v1, p2}, LWg/h;->e(Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Internal error occurred when extracting zip file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid output path"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "output path is null or invalid"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public s0(LTg/j;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LTg/b;->j()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, LMg/a;->t0(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "File header is null"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public t(LTg/j;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    new-instance v0, LTg/l;

    invoke-direct {v0}, LTg/l;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, LMg/a;->w(LTg/j;Ljava/lang/String;Ljava/lang/String;LTg/l;)V

    return-void
.end method

.method public t0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-static {p1}, LXg/h;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, LXg/h;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, LMg/a;->u0(Ljava/util/Map;)V

    return-void

    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "newFileName is null or empty"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "file name to be changed is null or empty"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LMg/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(LTg/j;Ljava/lang/String;LTg/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, LMg/a;->w(LTg/j;Ljava/lang/String;Ljava/lang/String;LTg/l;)V

    return-void
.end method

.method public u0(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LMg/a;->n0()V

    iget-object v0, p0, LMg/a;->c:LTg/r;

    invoke-virtual {v0}, LTg/r;->m()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, LMg/a;->l()LWg/h$b;

    move-result-object v0

    new-instance v1, LWg/m;

    iget-object v2, p0, LMg/a;->c:LTg/r;

    iget-object v3, p0, LMg/a;->h:LQg/e;

    new-instance v4, LXg/f;

    invoke-direct {v4}, LXg/f;-><init>()V

    invoke-direct {v1, v2, v3, v4, v0}, LWg/m;-><init>(LTg/r;LQg/e;LXg/f;LWg/h$b;)V

    new-instance v0, LWg/m$a;

    invoke-virtual {p0}, LMg/a;->n()LTg/m;

    move-result-object v2

    invoke-direct {v0, p1, v2}, LWg/m$a;-><init>(Ljava/util/Map;LTg/m;)V

    invoke-virtual {v1, v0}, LWg/h;->e(Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "Zip file format does not allow updating split/spanned files"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "fileNamesMap is null"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public v(LTg/j;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    new-instance v0, LTg/l;

    invoke-direct {v0}, LTg/l;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, LMg/a;->w(LTg/j;Ljava/lang/String;Ljava/lang/String;LTg/l;)V

    return-void
.end method

.method public v0(I)V
    .locals 1

    const/16 v0, 0x200

    if-lt p1, v0, :cond_0

    iput p1, p0, LMg/a;->l:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Buffer size cannot be less than 512 bytes"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public w(LTg/j;Ljava/lang/String;Ljava/lang/String;LTg/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LTg/b;->j()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, LMg/a;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LTg/l;)V

    return-void

    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input file header is null, cannot extract file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public x(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    new-instance v0, LTg/l;

    invoke-direct {v0}, LTg/l;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, LMg/a;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LTg/l;)V

    return-void
.end method

.method public y(Ljava/lang/String;Ljava/lang/String;LTg/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, LMg/a;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LTg/l;)V

    return-void
.end method

.method public y0(Ljava/nio/charset/Charset;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, LMg/a;->i:Ljava/nio/charset/Charset;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "charset cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    new-instance v0, LTg/l;

    invoke-direct {v0}, LTg/l;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, LMg/a;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LTg/l;)V

    return-void
.end method

.method public z0(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_3

    iget-object v0, p0, LMg/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, LMg/a;->n0()V

    iget-object v0, p0, LMg/a;->c:LTg/r;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LTg/r;->e()LTg/g;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, LWg/n;

    iget-object v1, p0, LMg/a;->c:LTg/r;

    invoke-virtual {p0}, LMg/a;->l()LWg/h$b;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LWg/n;-><init>(LTg/r;LWg/h$b;)V

    new-instance v1, LWg/n$a;

    invoke-virtual {p0}, LMg/a;->n()LTg/m;

    move-result-object v2

    invoke-direct {v1, p1, v2}, LWg/n$a;-><init>(Ljava/lang/String;LTg/m;)V

    invoke-virtual {v0, v1}, LWg/h;->e(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "end of central directory is null, cannot set comment"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "zipModel is null, cannot update zip file"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "zip file does not exist, cannot set comment for zip file"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "input comment is null, cannot update zip file"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
