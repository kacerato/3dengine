.class public final LJ2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ2/b;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation


# instance fields
.field public final a:LJ2/l;

.field public final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(LJ2/l;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LJ2/g;->b:Landroid/os/Handler;

    iput-object p1, p0, LJ2/g;->a:LJ2/l;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;LJ2/a;)LQ1/k;
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LJ2/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "LJ2/a;",
            ")",
            "LQ1/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, LJ2/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, LQ1/n;->g(Ljava/lang/Object;)LQ1/k;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/play/core/common/PlayCoreDialogWrapperActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "confirmation_intent"

    invoke-virtual {p2}, LJ2/a;->b()Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result p2

    const-string v1, "window_flags"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance p2, LQ1/l;

    invoke-direct {p2}, LQ1/l;-><init>()V

    new-instance v1, LJ2/f;

    iget-object v2, p0, LJ2/g;->b:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, p2}, LJ2/f;-><init>(LJ2/g;Landroid/os/Handler;LQ1/l;)V

    const-string v2, "result_receiver"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p2}, LQ1/l;->a()LQ1/k;

    move-result-object p1

    return-object p1
.end method

.method public final b()LQ1/k;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQ1/k<",
            "LJ2/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LJ2/g;->a:LJ2/l;

    invoke-virtual {v0}, LJ2/l;->a()LQ1/k;

    move-result-object v0

    return-object v0
.end method
