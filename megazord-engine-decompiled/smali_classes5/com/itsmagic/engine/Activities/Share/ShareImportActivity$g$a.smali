.class public Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$toastMessage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g$a;->c:Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g$a;->c:Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g;->c:Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g$a;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g$a;->c:Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g;

    iget-boolean v1, v0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g;->b:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g;->c:Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
