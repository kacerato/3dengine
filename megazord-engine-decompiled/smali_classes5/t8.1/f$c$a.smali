.class public Lt8/f$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt8/f$c;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lt8/f$c;


# direct methods
.method public constructor <init>(Lt8/f$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lt8/f$c$a;->b:Lt8/f$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lva/g;->s()V

    iget-object v0, p0, Lt8/f$c$a;->b:Lt8/f$c;

    iget-object v0, v0, Lt8/f$c;->a:Landroid/app/Activity;

    new-instance v1, Lt8/f$c$a$a;

    invoke-direct {v1, p0}, Lt8/f$c$a$a;-><init>(Lt8/f$c$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
