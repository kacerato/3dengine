.class public final Lp0/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ll0/h;)Lp0/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/h<",
            "*>;)",
            "Lp0/r;"
        }
    .end annotation

    instance-of v0, p0, Lp0/u;

    if-eqz v0, :cond_0

    check-cast p0, Lp0/u;

    invoke-virtual {p0}, Lp0/u;->d()Lp0/r;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected instance of TransportImpl."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ll0/h;Ll0/e;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/h<",
            "*>;",
            "Ll0/e;",
            ")V"
        }
    .end annotation

    invoke-static {p0}, Lp0/m;->a(Ll0/h;)Lp0/r;

    move-result-object p0

    invoke-virtual {p0, p1}, Lp0/r;->f(Ll0/e;)Lp0/r;

    move-result-object p0

    invoke-static {}, Lp0/w;->c()Lp0/w;

    move-result-object p1

    invoke-virtual {p1}, Lp0/w;->e()Ly0/s;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Ly0/s;->u(Lp0/r;I)Lq0/h;

    return-void
.end method
