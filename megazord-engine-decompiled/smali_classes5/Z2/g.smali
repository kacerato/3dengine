.class public abstract LZ2/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LQ2/a;
.end annotation

.annotation build LQ2/c;
.end annotation

.annotation runtime LZ2/e;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LZ2/g$c;,
        LZ2/g$e;,
        LZ2/g$d;,
        LZ2/g$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()LZ2/g;
    .locals 1

    sget-object v0, LZ2/g$c;->a:LZ2/g$c;

    return-object v0
.end method

.method public static b(D)LZ2/g;
    .locals 3

    invoke-static {p0, p1}, LZ2/d;->d(D)Z

    move-result v0

    invoke-static {v0}, LR2/H;->d(Z)V

    new-instance v0, LZ2/g$d;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, LZ2/g$d;-><init>(DD)V

    return-object v0
.end method

.method public static f(DD)LZ2/g$b;
    .locals 7

    invoke-static {p0, p1}, LZ2/d;->d(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, LZ2/d;->d(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LR2/H;->d(Z)V

    new-instance v0, LZ2/g$b;

    const/4 v6, 0x0

    move-object v1, v0

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, LZ2/g$b;-><init>(DDLZ2/g$a;)V

    return-object v0
.end method

.method public static i(D)LZ2/g;
    .locals 1

    invoke-static {p0, p1}, LZ2/d;->d(D)Z

    move-result v0

    invoke-static {v0}, LR2/H;->d(Z)V

    new-instance v0, LZ2/g$e;

    invoke-direct {v0, p0, p1}, LZ2/g$e;-><init>(D)V

    return-object v0
.end method


# virtual methods
.method public abstract c()LZ2/g;
.end method

.method public abstract d()Z
.end method

.method public abstract e()Z
.end method

.method public abstract g()D
.end method

.method public abstract h(D)D
.end method
