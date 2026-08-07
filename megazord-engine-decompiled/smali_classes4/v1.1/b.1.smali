.class public final synthetic Lv1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU0/n;


# instance fields
.field public final synthetic a:Lv1/e;

.field public final synthetic b:Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;


# direct methods
.method public synthetic constructor <init>(Lv1/e;Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1/b;->a:Lv1/e;

    iput-object p2, p0, Lv1/b;->b:Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lv1/b;->a:Lv1/e;

    check-cast p2, LQ1/l;

    check-cast p1, Lv1/S;

    new-instance v1, Lv1/l0;

    invoke-direct {v1, v0, p2}, Lv1/l0;-><init>(Lv1/e;LQ1/l;)V

    invoke-virtual {p1}, LX0/f;->M()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lv1/W;

    iget-object v0, p0, Lv1/b;->b:Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;

    invoke-static {v0}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;

    invoke-virtual {p1}, LX0/f;->G()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lv1/A;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/b;

    move-result-object p1

    invoke-virtual {p2, v1, v0, p1}, Lv1/W;->f1(Lcom/google/android/gms/common/api/internal/e;Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;Lcom/google/android/gms/common/api/b;)V

    return-void
.end method
