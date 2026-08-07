.class public abstract LSe/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LSe/d$d;,
        LSe/d$b;,
        LSe/d$c;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lpi/C;Lpi/v;)V
    .locals 0

    invoke-static {p0, p1}, LSe/d;->d(Lpi/C;Lpi/v;)V

    return-void
.end method

.method public static b(Lpi/v;)Ljava/lang/String;
    .locals 1
    .param p0    # Lpi/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, LSe/d;->c(Lpi/v;LSe/d$c;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lpi/v;LSe/d$c;)Ljava/lang/String;
    .locals 5
    .param p0    # Lpi/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # LSe/d$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, LSe/d$d;

    invoke-direct {p1, v0}, LSe/d$d;-><init>(LSe/d$a;)V

    :goto_0
    new-instance v1, LSe/d$b;

    invoke-direct {v1, v0}, LSe/d$b;-><init>(LSe/d$a;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lpi/C;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    new-instance v4, LSe/d$a;

    invoke-direct {v4, v1, v0, p1}, LSe/d$a;-><init>(LSe/d$b;Ljava/lang/StringBuilder;LSe/d$c;)V

    invoke-static {v3, v2, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpi/C;

    invoke-virtual {p0, p1}, Lpi/v;->c(Lpi/C;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lpi/C;Lpi/v;)V
    .locals 1
    .param p0    # Lpi/C;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lpi/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lpi/v;->e()Lpi/v;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lpi/v;->g()Lpi/v;

    move-result-object v0

    invoke-virtual {p1, p0}, Lpi/v;->c(Lpi/C;)V

    move-object p1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
