.class public Lnh/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnh/c$e;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/itsmagic/engine/Engines/Engine/World/b$g;
    .locals 1

    invoke-static {}, Lnh/c;->c()Lcom/itsmagic/engine/Engines/Engine/World/b$g;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/view/View;Ljava/io/File;ZLnh/c$e;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "file",
            "copyToWorld",
            "importListener"
        }
    .end annotation

    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;-><init>()V

    sget-object v0, Lo8/b;->h:Lt8/f;

    invoke-static {}, Lf8/c;->o()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lnh/c$c;

    invoke-direct {v2, p3, p0, p1, p2}, Lnh/c$c;-><init>(Lnh/c$e;Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;Ljava/io/File;Z)V

    invoke-virtual {v0, v1, v2}, Lt8/f;->f(Landroid/app/Activity;Lt8/g;)V

    return-void
.end method

.method public static c()Lcom/itsmagic/engine/Engines/Engine/World/b$g;
    .locals 1

    new-instance v0, Lnh/c$d;

    invoke-direct {v0}, Lnh/c$d;-><init>()V

    return-object v0
.end method

.method public static d(Landroid/view/View;Ljava/io/File;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "file",
            "copyToWorld"
        }
    .end annotation

    new-instance v0, Lnh/c$a;

    invoke-direct {v0, p1, p2}, Lnh/c$a;-><init>(Ljava/io/File;Z)V

    invoke-static {p0, p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup;->d(Landroid/view/View;Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$u;)V

    return-void
.end method

.method public static e(Landroid/view/View;Ljava/io/File;ZLnh/c$e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "file",
            "copyToWorld",
            "importListener"
        }
    .end annotation

    new-instance v0, Lnh/c$b;

    invoke-direct {v0, p3, p1, p2}, Lnh/c$b;-><init>(Lnh/c$e;Ljava/io/File;Z)V

    invoke-static {p0, p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup;->d(Landroid/view/View;Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$u;)V

    return-void
.end method
