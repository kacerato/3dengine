.class public abstract LWg/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LWg/h$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:LVg/a;

.field public final b:Z

.field public final c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(LWg/h$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LWg/h$b;->a(LWg/h$b;)LVg/a;

    move-result-object v0

    iput-object v0, p0, LWg/h;->a:LVg/a;

    invoke-static {p1}, LWg/h$b;->b(LWg/h$b;)Z

    move-result v0

    iput-boolean v0, p0, LWg/h;->b:Z

    invoke-static {p1}, LWg/h$b;->c(LWg/h$b;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, LWg/h;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic a(LWg/h;)LVg/a;
    .locals 0

    iget-object p0, p0, LWg/h;->a:LVg/a;

    return-object p0
.end method

.method public static synthetic b(LWg/h;Ljava/lang/Object;LVg/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, LWg/h;->i(Ljava/lang/Object;LVg/a;)V

    return-void
.end method

.method public static synthetic c(LWg/h;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, LWg/h;->c:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method


# virtual methods
.method public abstract d(Ljava/lang/Object;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation
.end method

.method public e(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    iget-boolean v0, p0, LWg/h;->b:Z

    if-eqz v0, :cond_1

    sget-object v0, LVg/a$b;->BUSY:LVg/a$b;

    iget-object v1, p0, LWg/h;->a:LVg/a;

    invoke-virtual {v1}, LVg/a;->i()LVg/a$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "invalid operation - Zip4j is in busy state"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, LWg/h;->h()V

    iget-boolean v0, p0, LWg/h;->b:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, LWg/h;->d(Ljava/lang/Object;)J

    move-result-wide v0

    iget-object v2, p0, LWg/h;->a:LVg/a;

    invoke-virtual {v2, v0, v1}, LVg/a;->w(J)V

    iget-object v0, p0, LWg/h;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, LWg/h$a;

    invoke-direct {v1, p0, p1}, LWg/h$a;-><init>(LWg/h;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, LWg/h;->a:LVg/a;

    invoke-virtual {p0, p1, v0}, LWg/h;->i(Ljava/lang/Object;LVg/a;)V

    :goto_1
    return-void
.end method

.method public abstract f(Ljava/lang/Object;LVg/a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "LVg/a;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract g()LVg/a$c;
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, LWg/h;->a:LVg/a;

    invoke-virtual {v0}, LVg/a;->c()V

    iget-object v0, p0, LWg/h;->a:LVg/a;

    sget-object v1, LVg/a$b;->BUSY:LVg/a$b;

    invoke-virtual {v0, v1}, LVg/a;->v(LVg/a$b;)V

    iget-object v0, p0, LWg/h;->a:LVg/a;

    invoke-virtual {p0}, LWg/h;->g()LVg/a$c;

    move-result-object v1

    invoke-virtual {v0, v1}, LVg/a;->p(LVg/a$c;)V

    return-void
.end method

.method public final i(Ljava/lang/Object;LVg/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "LVg/a;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2}, LWg/h;->f(Ljava/lang/Object;LVg/a;)V

    invoke-virtual {p2}, LVg/a;->a()V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    invoke-virtual {p2, p1}, LVg/a;->b(Ljava/lang/Exception;)V

    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :goto_1
    invoke-virtual {p2, p1}, LVg/a;->b(Ljava/lang/Exception;)V

    throw p1
.end method

.method public j()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    iget-object v0, p0, LWg/h;->a:LVg/a;

    invoke-virtual {v0}, LVg/a;->l()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LWg/h;->a:LVg/a;

    sget-object v1, LVg/a$a;->CANCELLED:LVg/a$a;

    invoke-virtual {v0, v1}, LVg/a;->u(LVg/a$a;)V

    iget-object v0, p0, LWg/h;->a:LVg/a;

    sget-object v1, LVg/a$b;->READY:LVg/a$b;

    invoke-virtual {v0, v1}, LVg/a;->v(LVg/a$b;)V

    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Task cancelled"

    sget-object v2, Lnet/lingala/zip4j/exception/ZipException$a;->TASK_CANCELLED_EXCEPTION:Lnet/lingala/zip4j/exception/ZipException$a;

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$a;)V

    throw v0
.end method
