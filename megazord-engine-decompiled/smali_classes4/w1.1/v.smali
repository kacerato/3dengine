.class public final synthetic Lw1/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU0/n;


# instance fields
.field public final synthetic a:Lw1/y;


# direct methods
.method public synthetic constructor <init>(Lw1/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw1/v;->a:Lw1/y;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lw1/z;

    check-cast p2, LQ1/l;

    new-instance v0, Lw1/x;

    iget-object v1, p0, Lw1/v;->a:Lw1/y;

    invoke-direct {v0, v1, p2}, Lw1/x;-><init>(Lw1/y;LQ1/l;)V

    invoke-virtual {p1}, LX0/f;->M()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lw1/k;

    invoke-virtual {p1, v0}, Lw1/k;->M1(Lcom/google/android/gms/common/api/internal/e;)V

    return-void
.end method
