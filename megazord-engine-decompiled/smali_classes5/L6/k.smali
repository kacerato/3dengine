.class public LL6/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LL6/k$a;
    }
.end annotation


# static fields
.field public static volatile a:LL6/k$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    sget-object v0, LL6/k;->a:LL6/k$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, LL6/k$a;->c()V

    return-void
.end method

.method public static b(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deltaTime"
        }
    .end annotation

    sget-object v0, LL6/k;->a:LL6/k$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p0}, LL6/k$a;->a(F)V

    return-void
.end method

.method public static c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    sget-object v0, LL6/k;->a:LL6/k$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p0}, LL6/k$a;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public static d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    sget-object v0, LL6/k;->a:LL6/k$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p0}, LL6/k$a;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public static e(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    sget-object v0, LL6/k;->a:LL6/k$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p0}, LL6/k$a;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public static f(LL6/k$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "h"
        }
    .end annotation

    sput-object p0, LL6/k;->a:LL6/k$a;

    return-void
.end method
