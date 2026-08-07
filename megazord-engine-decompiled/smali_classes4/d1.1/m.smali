.class public final synthetic Ld1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU0/n;


# instance fields
.field public final synthetic a:Ld1/B;

.field public final synthetic b:Ld1/d;


# direct methods
.method public synthetic constructor <init>(Ld1/B;Ld1/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld1/m;->a:Ld1/B;

    iput-object p2, p0, Ld1/m;->b:Ld1/d;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ld1/C;

    check-cast p2, LQ1/l;

    new-instance v0, Ld1/y;

    iget-object v1, p0, Ld1/m;->a:Ld1/B;

    invoke-direct {v0, v1, p2}, Ld1/y;-><init>(Ld1/B;LQ1/l;)V

    invoke-virtual {p1}, LX0/f;->M()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Ld1/i;

    iget-object p2, p0, Ld1/m;->b:Ld1/d;

    invoke-virtual {p1, v0, p2}, Ld1/i;->l2(Lcom/google/android/gms/common/api/internal/e;Ld1/k;)V

    return-void
.end method
