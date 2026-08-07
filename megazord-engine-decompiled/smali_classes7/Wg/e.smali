.class public LWg/e;
.super LWg/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LWg/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LWg/a<",
        "LWg/e$a;",
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
.method public A(LWg/e$a;LVg/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, LWg/e$a;->a(LWg/e$a;)LTg/s;

    move-result-object v0

    invoke-virtual {p0, v0}, LWg/a;->x(LTg/s;)V

    invoke-virtual {p0, p1}, LWg/e;->z(LWg/e$a;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, LWg/e$a;->a(LWg/e$a;)LTg/s;

    move-result-object v1

    iget-object p1, p1, LWg/d;->a:LTg/m;

    invoke-virtual {p0, v0, p2, v1, p1}, LWg/a;->l(Ljava/util/List;LVg/a;LTg/s;LTg/m;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    check-cast p1, LWg/e$a;

    invoke-virtual {p0, p1}, LWg/e;->y(LWg/e$a;)J

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

    check-cast p1, LWg/e$a;

    invoke-virtual {p0, p1, p2}, LWg/e;->A(LWg/e$a;LVg/a;)V

    return-void
.end method

.method public g()LVg/a$c;
    .locals 1

    invoke-super {p0}, LWg/a;->g()LVg/a$c;

    move-result-object v0

    return-object v0
.end method

.method public y(LWg/e$a;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-static {p1}, LWg/e$a;->b(LWg/e$a;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, LWg/e$a;->a(LWg/e$a;)LTg/s;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, LWg/a;->o(Ljava/util/List;LTg/s;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final z(LWg/e$a;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LWg/e$a;",
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, LWg/e$a;->b(LWg/e$a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, LXg/c;->x(Ljava/io/File;)Z

    move-result v3

    invoke-static {p1}, LWg/e$a;->a(LWg/e$a;)LTg/s;

    move-result-object v4

    invoke-virtual {v4}, LTg/s;->n()LTg/s$a;

    move-result-object v4

    if-eqz v3, :cond_0

    sget-object v3, LTg/s$a;->INCLUDE_LINK_ONLY:LTg/s$a;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, LWg/e$a;->a(LWg/e$a;)LTg/s;

    move-result-object v3

    invoke-static {v2, v3}, LXg/c;->n(Ljava/io/File;LTg/s;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
