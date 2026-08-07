.class public Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$e;
.super Lh8/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic w:Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;Landroid/app/Activity;Ln8/d;Ln8/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "activity",
            "explorerDataProvider",
            "filter"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$e;->w:Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;

    invoke-direct {p0, p2, p3, p4}, Lh8/c;-><init>(Landroid/app/Activity;Ln8/d;Ln8/c;)V

    return-void
.end method


# virtual methods
.method public q(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "openFolder",
            "v"
        }
    .end annotation

    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "openFolder"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$e;->w:Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;->j(Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;)V

    return-void
.end method

.method public s(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "openFolder",
            "v"
        }
    .end annotation

    return-void
.end method

.method public t(Ljava/io/File;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "v"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$e;->w:Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;->j(Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;)V

    return-void
.end method

.method public u(Ljava/io/File;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "v"
        }
    .end annotation

    return-void
.end method
