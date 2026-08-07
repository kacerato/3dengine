.class public final synthetic Ls1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU0/n;


# instance fields
.field public final synthetic a:Ls1/a;

.field public final synthetic b:Lcom/google/android/gms/fido/u2f/api/common/RegisterRequestParams;


# direct methods
.method public synthetic constructor <init>(Ls1/a;Lcom/google/android/gms/fido/u2f/api/common/RegisterRequestParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/d;->a:Ls1/a;

    iput-object p2, p0, Ls1/d;->b:Lcom/google/android/gms/fido/u2f/api/common/RegisterRequestParams;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Ls1/d;->a:Ls1/a;

    iget-object v1, p0, Ls1/d;->b:Lcom/google/android/gms/fido/u2f/api/common/RegisterRequestParams;

    check-cast p1, LA1/k0;

    check-cast p2, LQ1/l;

    new-instance v2, Ls1/e;

    invoke-direct {v2, v0, p2}, Ls1/e;-><init>(Ls1/a;LQ1/l;)V

    invoke-virtual {p1}, LX0/f;->M()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, LA1/i0;

    invoke-virtual {p1, v2, v1}, LA1/i0;->i(LA1/h0;Lcom/google/android/gms/fido/u2f/api/common/RegisterRequestParams;)V

    return-void
.end method
