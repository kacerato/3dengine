.class public final LJ2/f;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic b:LQ1/l;


# direct methods
.method public constructor <init>(LJ2/g;Landroid/os/Handler;LQ1/l;)V
    .locals 0

    iput-object p3, p0, LJ2/f;->b:LQ1/l;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, LJ2/f;->b:LQ1/l;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, LQ1/l;->e(Ljava/lang/Object;)Z

    return-void
.end method
