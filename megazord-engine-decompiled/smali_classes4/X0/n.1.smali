.class public abstract LX0/n;
.super LX0/f;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/a$f;
.implements LX0/a0;


# annotations
.annotation build LT0/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "LX0/f<",
        "TT;>;",
        "Lcom/google/android/gms/common/api/a$f;",
        "LX0/a0;"
    }
.end annotation


# static fields
.field public static volatile Q:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field public final N:LX0/i;

.field public final O:Ljava/util/Set;

.field public final P:Landroid/accounts/Account;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;ILX0/i;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # LX0/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {p1}, LX0/o;->e(Landroid/content/Context;)LX0/o;

    move-result-object v3

    .line 2
    invoke-static {}, LS0/h;->x()LS0/h;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    .line 3
    invoke-direct/range {v0 .. v7}, LX0/f;-><init>(Landroid/content/Context;Landroid/os/Handler;LX0/o;LS0/i;ILX0/f$a;LX0/f$b;)V

    .line 4
    invoke-static {p4}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LX0/i;

    iput-object p1, p0, LX0/n;->N:LX0/i;

    .line 5
    invoke-virtual {p4}, LX0/i;->b()Landroid/accounts/Account;

    move-result-object p1

    iput-object p1, p0, LX0/n;->P:Landroid/accounts/Account;

    .line 6
    invoke-virtual {p4}, LX0/i;->e()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, LX0/n;->u0(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, LX0/n;->O:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILX0/i;)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # LX0/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LT0/a;
    .end annotation

    .line 7
    invoke-static {p1}, LX0/o;->e(Landroid/content/Context;)LX0/o;

    move-result-object v3

    .line 8
    invoke-static {}, LS0/h;->x()LS0/h;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    .line 9
    invoke-direct/range {v0 .. v8}, LX0/n;-><init>(Landroid/content/Context;Landroid/os/Looper;LX0/o;LS0/h;ILX0/i;LU0/d;LU0/k;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILX0/i;LU0/d;LU0/k;)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # LX0/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # LU0/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # LU0/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LT0/a;
    .end annotation

    .line 11
    invoke-static {p1}, LX0/o;->e(Landroid/content/Context;)LX0/o;

    move-result-object v3

    .line 12
    invoke-static {}, LS0/h;->x()LS0/h;

    move-result-object v4

    .line 13
    invoke-static {p5}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    move-object v7, p5

    check-cast v7, LU0/d;

    .line 14
    invoke-static {p6}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    move-object v8, p5

    check-cast v8, LU0/k;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    .line 15
    invoke-direct/range {v0 .. v8}, LX0/n;-><init>(Landroid/content/Context;Landroid/os/Looper;LX0/o;LS0/h;ILX0/i;LU0/d;LU0/k;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILX0/i;Lcom/google/android/gms/common/api/l$b;Lcom/google/android/gms/common/api/l$c;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # LX0/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/common/api/l$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/gms/common/api/l$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LT0/a;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10
    invoke-direct/range {p0 .. p6}, LX0/n;-><init>(Landroid/content/Context;Landroid/os/Looper;ILX0/i;LU0/d;LU0/k;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;LX0/o;LS0/h;ILX0/i;LU0/d;LU0/k;)V
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # LX0/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # LS0/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # LX0/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # LU0/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # LU0/k;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    move-object v9, p0

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v6, v2

    goto :goto_0

    .line 16
    :cond_0
    new-instance v3, LX0/Y;

    invoke-direct {v3, v0}, LX0/Y;-><init>(LU0/d;)V

    move-object v6, v3

    :goto_0
    if-nez v1, :cond_1

    move-object v7, v2

    goto :goto_1

    .line 17
    :cond_1
    new-instance v0, LX0/Z;

    invoke-direct {v0, v1}, LX0/Z;-><init>(LU0/k;)V

    move-object v7, v0

    .line 18
    :goto_1
    invoke-virtual/range {p6 .. p6}, LX0/i;->m()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 19
    invoke-direct/range {v0 .. v8}, LX0/f;-><init>(Landroid/content/Context;Landroid/os/Looper;LX0/o;LS0/i;ILX0/f$a;LX0/f$b;Ljava/lang/String;)V

    move-object/from16 v0, p6

    iput-object v0, v9, LX0/n;->N:LX0/i;

    .line 20
    invoke-virtual/range {p6 .. p6}, LX0/i;->b()Landroid/accounts/Account;

    move-result-object v1

    iput-object v1, v9, LX0/n;->P:Landroid/accounts/Account;

    .line 21
    invoke-virtual/range {p6 .. p6}, LX0/i;->e()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, LX0/n;->u0(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, v9, LX0/n;->O:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final B()Landroid/accounts/Account;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LX0/n;->P:Landroid/accounts/Account;

    return-object v0
.end method

.method public E()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final L()Ljava/util/Set;
    .locals 1
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LX0/n;->O:Ljava/util/Set;

    return-object v0
.end method

.method public j()[LS0/e;
    .locals 1
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [LS0/e;

    return-object v0
.end method

.method public o()Ljava/util/Set;
    .locals 1
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, LX0/f;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LX0/n;->O:Ljava/util/Set;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final s0()LX0/i;
    .locals 1
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LX0/n;->N:LX0/i;

    return-object v0
.end method

.method public t0(Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .param p1    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method public final u0(Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .param p1    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, LX0/n;->t0(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Expanding scopes is not permitted, use implied scopes instead"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object v0
.end method
