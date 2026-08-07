.class public LB3/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB3/r;


# instance fields
.field public final a:LB3/s;

.field public final b:LQ1/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQ1/l<",
            "LB3/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LB3/s;LQ1/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LB3/s;",
            "LQ1/l<",
            "LB3/n;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB3/l;->a:LB3/s;

    iput-object p2, p0, LB3/l;->b:LQ1/l;

    return-void
.end method


# virtual methods
.method public a(LF3/d;)Z
    .locals 4

    invoke-virtual {p1}, LF3/d;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LB3/l;->a:LB3/s;

    invoke-virtual {v0, p1}, LB3/s;->f(LF3/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LB3/l;->b:LQ1/l;

    invoke-static {}, LB3/n;->a()LB3/n$a;

    move-result-object v1

    invoke-virtual {p1}, LF3/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LB3/n$a;->b(Ljava/lang/String;)LB3/n$a;

    move-result-object v1

    invoke-virtual {p1}, LF3/d;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, LB3/n$a;->d(J)LB3/n$a;

    move-result-object v1

    invoke-virtual {p1}, LF3/d;->h()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, LB3/n$a;->c(J)LB3/n$a;

    move-result-object p1

    invoke-virtual {p1}, LB3/n$a;->a()LB3/n;

    move-result-object p1

    invoke-virtual {v0, p1}, LQ1/l;->c(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onException(Ljava/lang/Exception;)Z
    .locals 1

    iget-object v0, p0, LB3/l;->b:LQ1/l;

    invoke-virtual {v0, p1}, LQ1/l;->d(Ljava/lang/Exception;)Z

    const/4 p1, 0x1

    return p1
.end method
