.class public final LQ0/x;
.super LQ0/s;
.source "SourceFile"


# instance fields
.field public final e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, LQ0/s;-><init>()V

    iput-object p1, p0, LQ0/x;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final g()V
    .locals 4

    iget-object v0, p0, LQ0/x;->e:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lk1/E;->a(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x29

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Calling UID "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not Google Play services."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final p()V
    .locals 4

    invoke-virtual {p0}, LQ0/x;->g()V

    iget-object v0, p0, LQ0/x;->e:Landroid/content/Context;

    invoke-static {v0}, LQ0/c;->b(Landroid/content/Context;)LQ0/c;

    move-result-object v1

    invoke-virtual {v1}, LQ0/c;->c()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->m:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, LQ0/c;->d()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v3

    :cond_0
    invoke-static {v0, v3}, Lcom/google/android/gms/auth/api/signin/a;->d(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)LP0/b;

    move-result-object v0

    if-eqz v2, :cond_1

    invoke-virtual {v0}, LP0/b;->h0()LQ1/k;

    return-void

    :cond_1
    invoke-virtual {v0}, LP0/b;->C()LQ1/k;

    return-void
.end method

.method public final v()V
    .locals 1

    invoke-virtual {p0}, LQ0/x;->g()V

    iget-object v0, p0, LQ0/x;->e:Landroid/content/Context;

    invoke-static {v0}, LQ0/r;->a(Landroid/content/Context;)LQ0/r;

    move-result-object v0

    invoke-virtual {v0}, LQ0/r;->b()V

    return-void
.end method
