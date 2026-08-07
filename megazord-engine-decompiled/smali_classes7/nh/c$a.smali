.class public Lnh/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnh/c;->d(Landroid/view/View;Ljava/io/File;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/io/File;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$file",
            "val$copyToWorld"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnh/c$a;->a:Ljava/io/File;

    iput-boolean p2, p0, Lnh/c$a;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "importOptions"
        }
    .end annotation

    sget-object v0, Lo8/b;->h:Lt8/f;

    invoke-static {}, Lf8/c;->o()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lnh/c$a$a;

    invoke-direct {v2, p0, p1}, Lnh/c$a$a;-><init>(Lnh/c$a;Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;)V

    invoke-virtual {v0, v1, v2}, Lt8/f;->f(Landroid/app/Activity;Lt8/g;)V

    return-void
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method
