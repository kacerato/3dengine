.class public final synthetic Lq1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU0/n;


# instance fields
.field public final synthetic a:Lq1/a;

.field public final synthetic b:Lcom/google/android/gms/fido/fido2/api/common/d;


# direct methods
.method public synthetic constructor <init>(Lq1/a;Lcom/google/android/gms/fido/fido2/api/common/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq1/g;->a:Lq1/a;

    iput-object p2, p0, Lq1/g;->b:Lcom/google/android/gms/fido/fido2/api/common/d;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lq1/g;->a:Lq1/a;

    iget-object v1, p0, Lq1/g;->b:Lcom/google/android/gms/fido/fido2/api/common/d;

    check-cast p1, LA1/b0;

    check-cast p2, LQ1/l;

    new-instance v2, Lq1/k;

    invoke-direct {v2, v0, p2}, Lq1/k;-><init>(Lq1/a;LQ1/l;)V

    invoke-virtual {p1}, LX0/f;->M()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, LA1/e0;

    invoke-virtual {p1, v2, v1}, LA1/e0;->i(LA1/d0;Lcom/google/android/gms/fido/fido2/api/common/d;)V

    return-void
.end method
