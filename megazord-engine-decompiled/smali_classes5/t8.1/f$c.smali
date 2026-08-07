.class public Lt8/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt8/f;->g(Landroid/app/Activity;Lt8/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Lt8/g;

.field public final synthetic c:Lt8/f;


# direct methods
.method public constructor <init>(Lt8/f;Landroid/app/Activity;Lt8/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$activity",
            "val$saveListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lt8/f$c;->c:Lt8/f;

    iput-object p2, p0, Lt8/f$c;->a:Landroid/app/Activity;

    iput-object p3, p0, Lt8/f$c;->b:Lt8/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    new-instance v0, Lud/a;

    const-string v1, "Save failed!"

    const-string v2, "O salvamento falhou!"

    invoke-direct {v0, v1, v2}, Lud/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lf8/c;->w0(Lud/a;)V

    iget-object v0, p0, Lt8/f$c;->a:Landroid/app/Activity;

    new-instance v1, Lt8/f$c$b;

    invoke-direct {v1, p0}, Lt8/f$c$b;-><init>(Lt8/f$c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    invoke-static {}, Lf8/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->i0()V

    new-instance v0, Lt8/f$c$a;

    invoke-direct {v0, p0}, Lt8/f$c$a;-><init>(Lt8/f$c;)V

    invoke-static {v0}, Lga/b;->d(Ljava/lang/Runnable;)V

    return-void
.end method
