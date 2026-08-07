.class public LWg/n;
.super LWg/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LWg/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LWg/h<",
        "LWg/n$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:LTg/r;


# direct methods
.method public constructor <init>(LTg/r;LWg/h$b;)V
    .locals 0

    invoke-direct {p0, p2}, LWg/h;-><init>(LWg/h$b;)V

    iput-object p1, p0, LWg/n;->d:LTg/r;

    return-void
.end method


# virtual methods
.method public bridge synthetic d(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    check-cast p1, LWg/n$a;

    invoke-virtual {p0, p1}, LWg/n;->k(LWg/n$a;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic f(Ljava/lang/Object;LVg/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, LWg/n$a;

    invoke-virtual {p0, p1, p2}, LWg/n;->l(LWg/n$a;LVg/a;)V

    return-void
.end method

.method public g()LVg/a$c;
    .locals 1

    sget-object v0, LVg/a$c;->SET_COMMENT:LVg/a$c;

    return-object v0
.end method

.method public k(LWg/n$a;)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public l(LWg/n$a;LVg/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, LWg/n$a;->a(LWg/n$a;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, LWg/n;->d:LTg/r;

    invoke-virtual {p2}, LTg/r;->e()LTg/g;

    move-result-object p2

    invoke-static {p1}, LWg/n$a;->a(LWg/n$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, LTg/g;->k(Ljava/lang/String;)V

    new-instance v0, LSg/h;

    iget-object v1, p0, LWg/n;->d:LTg/r;

    invoke-virtual {v1}, LTg/r;->k()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, LSg/h;-><init>(Ljava/io/File;)V

    :try_start_0
    iget-object v1, p0, LWg/n;->d:LTg/r;

    invoke-virtual {v1}, LTg/r;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p2, p0, LWg/n;->d:LTg/r;

    invoke-virtual {p2}, LTg/r;->j()LTg/o;

    move-result-object p2

    invoke-virtual {p2}, LTg/o;->f()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LSg/h;->j(J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, LTg/g;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LSg/h;->j(J)V

    :goto_0
    new-instance p2, LQg/e;

    invoke-direct {p2}, LQg/e;-><init>()V

    iget-object v1, p0, LWg/n;->d:LTg/r;

    iget-object p1, p1, LWg/d;->a:LTg/m;

    invoke-virtual {p1}, LTg/m;->b()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p2, v1, v0, p1}, LQg/e;->e(LTg/r;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, LSg/h;->close()V

    return-void

    :goto_1
    :try_start_1
    invoke-virtual {v0}, LSg/h;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1

    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "comment is null, cannot update Zip file with comment"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
