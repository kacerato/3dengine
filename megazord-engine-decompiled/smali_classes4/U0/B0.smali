.class public final LU0/B0;
.super LO1/d;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/l$b;
.implements Lcom/google/android/gms/common/api/l$c;


# static fields
.field public static final l:Lcom/google/android/gms/common/api/a$a;


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Landroid/os/Handler;

.field public final g:Lcom/google/android/gms/common/api/a$a;

.field public final h:Ljava/util/Set;

.field public final i:LX0/i;

.field public j:LN1/f;

.field public k:LU0/A0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, LN1/e;->c:Lcom/google/android/gms/common/api/a$a;

    sput-object v0, LU0/B0;->l:Lcom/google/android/gms/common/api/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;LX0/i;)V
    .locals 1
    .param p3    # LX0/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    sget-object v0, LU0/B0;->l:Lcom/google/android/gms/common/api/a$a;

    invoke-direct {p0}, LO1/d;-><init>()V

    iput-object p1, p0, LU0/B0;->e:Landroid/content/Context;

    iput-object p2, p0, LU0/B0;->f:Landroid/os/Handler;

    const-string p1, "ClientSettings must not be null"

    invoke-static {p3, p1}, LX0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LX0/i;

    iput-object p1, p0, LU0/B0;->i:LX0/i;

    invoke-virtual {p3}, LX0/i;->i()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, LU0/B0;->h:Ljava/util/Set;

    iput-object v0, p0, LU0/B0;->g:Lcom/google/android/gms/common/api/a$a;

    return-void
.end method

.method public static bridge synthetic M1(LU0/B0;)LU0/A0;
    .locals 0

    iget-object p0, p0, LU0/B0;->k:LU0/A0;

    return-object p0
.end method

.method public static bridge synthetic j2(LU0/B0;LO1/l;)V
    .locals 4

    invoke-virtual {p1}, LO1/l;->B()LS0/c;

    move-result-object v0

    invoke-virtual {v0}, LS0/c;->k0()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, LO1/l;->b0()LX0/m0;

    move-result-object p1

    invoke-static {p1}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LX0/m0;

    invoke-virtual {p1}, LX0/m0;->B()LS0/c;

    move-result-object v0

    invoke-virtual {v0}, LS0/c;->k0()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "SignInCoordinator"

    const-string v3, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, LU0/B0;->k:LU0/A0;

    invoke-interface {p1, v0}, LU0/A0;->b(LS0/c;)V

    iget-object p0, p0, LU0/B0;->j:LN1/f;

    invoke-interface {p0}, Lcom/google/android/gms/common/api/a$f;->p()V

    return-void

    :cond_0
    iget-object v0, p0, LU0/B0;->k:LU0/A0;

    invoke-virtual {p1}, LX0/m0;->b0()LX0/r;

    move-result-object p1

    iget-object v1, p0, LU0/B0;->h:Ljava/util/Set;

    invoke-interface {v0, p1, v1}, LU0/A0;->a(LX0/r;Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, LU0/B0;->k:LU0/A0;

    invoke-interface {p1, v0}, LU0/A0;->b(LS0/c;)V

    :goto_0
    iget-object p0, p0, LU0/B0;->j:LN1/f;

    invoke-interface {p0}, Lcom/google/android/gms/common/api/a$f;->p()V

    return-void
.end method


# virtual methods
.method public final T(LO1/l;)V
    .locals 1
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    new-instance v0, LU0/z0;

    invoke-direct {v0, p0, p1}, LU0/z0;-><init>(LU0/B0;LO1/l;)V

    iget-object p1, p0, LU0/B0;->f:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final e(LS0/c;)V
    .locals 1
    .param p1    # LS0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, LU0/B0;->k:LU0/A0;

    invoke-interface {v0, p1}, LU0/A0;->b(LS0/c;)V

    return-void
.end method

.method public final g(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object p1, p0, LU0/B0;->j:LN1/f;

    invoke-interface {p1, p0}, LN1/f;->e(LO1/f;)V

    return-void
.end method

.method public final i(I)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, LU0/B0;->k:LU0/A0;

    invoke-interface {v0, p1}, LU0/A0;->d(I)V

    return-void
.end method

.method public final k2(LU0/A0;)V
    .locals 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, LU0/B0;->j:LN1/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->p()V

    :cond_0
    iget-object v0, p0, LU0/B0;->i:LX0/i;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, LX0/i;->o(Ljava/lang/Integer;)V

    iget-object v2, p0, LU0/B0;->g:Lcom/google/android/gms/common/api/a$a;

    iget-object v3, p0, LU0/B0;->e:Landroid/content/Context;

    iget-object v0, p0, LU0/B0;->f:Landroid/os/Handler;

    iget-object v5, p0, LU0/B0;->i:LX0/i;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v5}, LX0/i;->k()LN1/a;

    move-result-object v6

    move-object v7, p0

    move-object v8, p0

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/common/api/a$a;->d(Landroid/content/Context;Landroid/os/Looper;LX0/i;Ljava/lang/Object;Lcom/google/android/gms/common/api/l$b;Lcom/google/android/gms/common/api/l$c;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    iput-object v0, p0, LU0/B0;->j:LN1/f;

    iput-object p1, p0, LU0/B0;->k:LU0/A0;

    iget-object p1, p0, LU0/B0;->h:Ljava/util/Set;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, LU0/B0;->j:LN1/f;

    invoke-interface {p1}, LN1/f;->d()V

    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, LU0/B0;->f:Landroid/os/Handler;

    new-instance v0, LU0/y0;

    invoke-direct {v0, p0}, LU0/y0;-><init>(LU0/B0;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final l2()V
    .locals 1

    iget-object v0, p0, LU0/B0;->j:LN1/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->p()V

    :cond_0
    return-void
.end method
