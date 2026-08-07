.class public final LU0/T0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:LU0/R0;

.field public final synthetic c:LU0/U0;


# direct methods
.method public constructor <init>(LU0/U0;LU0/R0;)V
    .locals 0

    iput-object p1, p0, LU0/T0;->c:LU0/U0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LU0/T0;->b:LU0/R0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, LU0/T0;->c:LU0/U0;

    iget-boolean v0, v0, LU0/U0;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LU0/T0;->b:LU0/R0;

    invoke-virtual {v0}, LU0/R0;->b()LS0/c;

    move-result-object v0

    invoke-virtual {v0}, LS0/c;->e0()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LU0/T0;->c:LU0/U0;

    iget-object v2, v1, LU0/h;->b:LU0/i;

    invoke-virtual {v1}, LU0/h;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0}, LS0/c;->c0()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {v0}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iget-object v3, p0, LU0/T0;->b:LU0/R0;

    invoke-virtual {v3}, LU0/R0;->a()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v0, v3, v4}, Lcom/google/android/gms/common/api/GoogleApiActivity;->a(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v2, v0, v1}, LU0/i;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    iget-object v1, p0, LU0/T0;->c:LU0/U0;

    invoke-virtual {v1}, LU0/h;->b()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0}, LS0/c;->B()I

    move-result v3

    iget-object v1, v1, LU0/U0;->f:LS0/h;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, LS0/h;->e(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LU0/T0;->c:LU0/U0;

    invoke-virtual {v1}, LU0/h;->b()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, v1, LU0/h;->b:LU0/i;

    invoke-virtual {v0}, LS0/c;->B()I

    move-result v5

    iget-object v7, p0, LU0/T0;->c:LU0/U0;

    iget-object v2, v1, LU0/U0;->f:LS0/h;

    const/4 v6, 0x2

    invoke-virtual/range {v2 .. v7}, LS0/h;->L(Landroid/app/Activity;LU0/i;IILandroid/content/DialogInterface$OnCancelListener;)Z

    return-void

    :cond_2
    invoke-virtual {v0}, LS0/c;->B()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_3

    iget-object v0, p0, LU0/T0;->c:LU0/U0;

    iget-object v1, v0, LU0/U0;->f:LS0/h;

    invoke-virtual {v0}, LU0/h;->b()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, LS0/h;->G(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, LU0/T0;->c:LU0/U0;

    invoke-virtual {v1}, LU0/h;->b()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, LU0/S0;

    invoke-direct {v3, p0, v0}, LU0/S0;-><init>(LU0/T0;Landroid/app/Dialog;)V

    iget-object v0, v1, LU0/U0;->f:LS0/h;

    invoke-virtual {v0, v2, v3}, LS0/h;->H(Landroid/content/Context;LU0/h0;)LU0/i0;

    return-void

    :cond_3
    iget-object v1, p0, LU0/T0;->c:LU0/U0;

    iget-object v2, p0, LU0/T0;->b:LU0/R0;

    invoke-virtual {v2}, LU0/R0;->a()I

    move-result v2

    invoke-static {v1, v0, v2}, LU0/U0;->r(LU0/U0;LS0/c;I)V

    return-void
.end method
