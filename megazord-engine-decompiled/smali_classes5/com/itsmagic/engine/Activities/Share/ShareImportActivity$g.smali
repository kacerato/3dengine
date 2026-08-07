.class public Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;->C(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$finishWhenDone"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g;->c:Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;

    iput-boolean p2, p0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g;->c:Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;->l(Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g;->c:Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;->l(Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    invoke-static {v3, v4}, Lod/a;->c(Landroid/content/Context;Landroid/net/Uri;)Lod/a$a;

    move-result-object v3

    invoke-virtual {v3}, Lod/a$a;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g;->c:Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;

    invoke-static {v0, v1, v2}, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;->m(Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g;->c:Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;

    new-instance v2, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g$a;

    invoke-direct {v2, p0, v0}, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g$a;-><init>(Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
