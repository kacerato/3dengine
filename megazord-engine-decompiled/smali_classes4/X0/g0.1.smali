.class public final LX0/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/p$a;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/common/api/p;

.field public final synthetic b:LQ1/l;

.field public final synthetic c:LX0/z$a;

.field public final synthetic d:LX0/j0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/p;LQ1/l;LX0/z$a;LX0/j0;)V
    .locals 0

    iput-object p1, p0, LX0/g0;->a:Lcom/google/android/gms/common/api/p;

    iput-object p2, p0, LX0/g0;->b:LQ1/l;

    iput-object p3, p0, LX0/g0;->c:LX0/z$a;

    iput-object p4, p0, LX0/g0;->d:LX0/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->A0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, LX0/g0;->a:Lcom/google/android/gms/common/api/p;

    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/common/api/p;->e(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/u;

    move-result-object p1

    iget-object v0, p0, LX0/g0;->b:LQ1/l;

    iget-object v1, p0, LX0/g0;->c:LX0/z$a;

    invoke-interface {v1, p1}, LX0/z$a;->a(Lcom/google/android/gms/common/api/u;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, LQ1/l;->c(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, LX0/g0;->b:LQ1/l;

    invoke-static {p1}, LX0/c;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    invoke-virtual {v0, p1}, LQ1/l;->b(Ljava/lang/Exception;)V

    return-void
.end method
