.class public LWg/j;
.super LWg/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LWg/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LWg/b<",
        "LWg/j$a;",
        ">;"
    }
.end annotation


# instance fields
.field public f:[C

.field public g:LRg/h;


# direct methods
.method public constructor <init>(LTg/r;[CLTg/l;LWg/h$b;)V
    .locals 0

    invoke-direct {p0, p1, p3, p4}, LWg/b;-><init>(LTg/r;LTg/l;LWg/h$b;)V

    iput-object p2, p0, LWg/j;->f:[C

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

    check-cast p1, LWg/j$a;

    invoke-virtual {p0, p1}, LWg/j;->v(LWg/j$a;)J

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

    check-cast p1, LWg/j$a;

    invoke-virtual {p0, p1, p2}, LWg/j;->y(LWg/j$a;LVg/a;)V

    return-void
.end method

.method public v(LWg/j$a;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-static {p1}, LWg/j$a;->a(LWg/j$a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LWg/j;->z(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, LQg/d;->g(Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final w(LTg/m;)LRg/k;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LWg/b;->q()LTg/r;

    move-result-object v0

    invoke-static {v0}, LXg/g;->b(LTg/r;)LRg/h;

    move-result-object v0

    iput-object v0, p0, LWg/j;->g:LRg/h;

    new-instance v0, LRg/k;

    iget-object v1, p0, LWg/j;->g:LRg/h;

    iget-object v2, p0, LWg/j;->f:[C

    invoke-direct {v0, v1, v2, p1}, LRg/k;-><init>(Ljava/io/InputStream;[CLTg/m;)V

    return-object v0
.end method

.method public final x(Ljava/lang/String;Ljava/lang/String;LTg/j;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, LXg/h;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p2}, LXg/c;->A(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, ""

    :cond_2
    invoke-virtual {p3}, LTg/b;->j()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public y(LWg/j$a;LVg/a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, LWg/j$a;->a(LWg/j$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LWg/j;->z(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :try_start_0
    iget-object v1, p1, LWg/d;->a:LTg/m;

    invoke-virtual {p0, v1}, LWg/j;->w(LTg/m;)LRg/k;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p1, LWg/d;->a:LTg/m;

    invoke-virtual {v2}, LTg/m;->a()I

    move-result v2

    new-array v9, v2, [B

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, LTg/j;

    iget-object v2, p0, LWg/j;->g:LRg/h;

    invoke-virtual {v2, v4}, LRg/h;->a(LTg/j;)V

    invoke-static {p1}, LWg/j$a;->b(LWg/j$a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, LWg/j$a;->a(LWg/j$a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v4}, LWg/j;->x(Ljava/lang/String;Ljava/lang/String;LTg/j;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, LWg/j$a;->c(LWg/j$a;)Ljava/lang/String;

    move-result-object v5

    move-object v2, p0

    move-object v3, v1

    move-object v7, p2

    move-object v8, v9

    invoke-virtual/range {v2 .. v8}, LWg/b;->o(LRg/k;LTg/j;Ljava/lang/String;Ljava/lang/String;LVg/a;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, LRg/k;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_1
    :goto_1
    iget-object p1, p0, LWg/j;->g:LRg/h;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_2
    return-void

    :goto_2
    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, LRg/k;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    iget-object p2, p0, LWg/j;->g:LRg/h;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    :cond_4
    throw p1
.end method

.method public final z(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
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

    invoke-static {p1}, LXg/c;->A(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, LWg/b;->q()LTg/r;

    move-result-object v0

    invoke-static {v0, p1}, LQg/d;->c(LTg/r;Ljava/lang/String;)LTg/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No file found with name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in zip file"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lnet/lingala/zip4j/exception/ZipException$a;->FILE_NOT_FOUND:Lnet/lingala/zip4j/exception/ZipException$a;

    invoke-direct {v0, p1, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$a;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, LWg/b;->q()LTg/r;

    move-result-object v0

    invoke-virtual {v0}, LTg/r;->b()LTg/d;

    move-result-object v0

    invoke-virtual {v0}, LTg/d;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, LQg/d;->e(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
