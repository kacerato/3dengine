.class public LL5/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM8/b$u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LL5/c;->b()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LL5/c;


# direct methods
.method public constructor <init>(LL5/c;)V
    .locals 0

    iput-object p1, p0, LL5/c$a;->a:LL5/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/io/File;)V
    .locals 3

    sget-boolean v0, Lcom/itsmagic/engine/Activities/Editor/Dialogs/KeystoreDialog;->isAabExport:Z

    if-eqz v0, :cond_0

    new-instance v0, LL5/c$a$a;

    invoke-direct {v0, p0, p1}, LL5/c$a$a;-><init>(LL5/c$a;Ljava/io/File;)V

    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/itsmagic/engine/Exporter/AabBuilder;->copyFileToDownloads(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    const-string v1, ".apk"

    invoke-static {p1, v0, v1}, Lbd/i;->t(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
