.class public LWg/f;
.super LWg/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LWg/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LWg/a<",
        "LWg/f$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(LTg/r;[CLQg/e;LWg/h$b;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, LWg/a;-><init>(LTg/r;[CLQg/e;LWg/h$b;)V

    return-void
.end method


# virtual methods
.method public final A(LWg/f$a;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LWg/f$a;",
            ")",
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

    invoke-static {p1}, LWg/f$a;->b(LWg/f$a;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, LWg/f$a;->a(LWg/f$a;)LTg/s;

    move-result-object v1

    invoke-static {v0, v1}, LXg/c;->n(Ljava/io/File;LTg/s;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, LWg/f$a;->a(LWg/f$a;)LTg/s;

    move-result-object v1

    invoke-virtual {v1}, LTg/s;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, LWg/f$a;->b(LWg/f$a;)Ljava/io/File;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public final B(LWg/f$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, LWg/f$a;->b(LWg/f$a;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, LWg/f$a;->a(LWg/f$a;)LTg/s;

    move-result-object v1

    invoke-virtual {v1}, LTg/s;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p1}, LWg/f$a;->a(LWg/f$a;)LTg/s;

    move-result-object p1

    invoke-virtual {p1, v0}, LTg/s;->z(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    check-cast p1, LWg/f$a;

    invoke-virtual {p0, p1}, LWg/f;->y(LWg/f$a;)J

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

    check-cast p1, LWg/f$a;

    invoke-virtual {p0, p1, p2}, LWg/f;->z(LWg/f$a;LVg/a;)V

    return-void
.end method

.method public y(LWg/f$a;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-virtual {p0, p1}, LWg/f;->A(LWg/f$a;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, LWg/f$a;->a(LWg/f$a;)LTg/s;

    move-result-object v1

    invoke-virtual {v1}, LTg/s;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, LWg/f$a;->b(LWg/f$a;)Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {p1}, LWg/f$a;->a(LWg/f$a;)LTg/s;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, LWg/a;->o(Ljava/util/List;LTg/s;)J

    move-result-wide v0

    return-wide v0
.end method

.method public z(LWg/f$a;LVg/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, LWg/f;->A(LWg/f$a;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1}, LWg/f;->B(LWg/f$a;)V

    invoke-static {p1}, LWg/f$a;->a(LWg/f$a;)LTg/s;

    move-result-object v1

    iget-object p1, p1, LWg/d;->a:LTg/m;

    invoke-virtual {p0, v0, p2, v1, p1}, LWg/a;->l(Ljava/util/List;LVg/a;LTg/s;LTg/m;)V

    return-void
.end method
