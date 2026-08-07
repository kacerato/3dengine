.class public final synthetic Lv1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU0/n;


# instance fields
.field public final synthetic a:Lv1/k;

.field public final synthetic b:Lcom/google/android/gms/auth/api/identity/k;


# direct methods
.method public synthetic constructor <init>(Lv1/k;Lcom/google/android/gms/auth/api/identity/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1/i;->a:Lv1/k;

    iput-object p2, p0, Lv1/i;->b:Lcom/google/android/gms/auth/api/identity/k;

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lv1/i;->a:Lv1/k;

    check-cast p2, LQ1/l;

    check-cast p1, Lv1/T;

    new-instance v1, Lv1/h;

    invoke-direct {v1, v0, p2}, Lv1/h;-><init>(Lv1/k;LQ1/l;)V

    invoke-virtual {p1}, LX0/f;->M()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lv1/Z;

    iget-object v0, p0, Lv1/i;->b:Lcom/google/android/gms/auth/api/identity/k;

    invoke-static {v0}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/identity/k;

    invoke-virtual {p1}, LX0/f;->G()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lv1/A;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/b;

    move-result-object p1

    invoke-virtual {p2, v1, v0, p1}, Lv1/Z;->f1(Lv1/h0;Lcom/google/android/gms/auth/api/identity/k;Lcom/google/android/gms/common/api/b;)V

    return-void
.end method
