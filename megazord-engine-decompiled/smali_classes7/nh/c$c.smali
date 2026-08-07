.class public Lnh/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt8/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnh/c;->b(Landroid/view/View;Ljava/io/File;ZLnh/c$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lnh/c$e;

.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

.field public final synthetic c:Ljava/io/File;

.field public final synthetic d:Z


# direct methods
.method public constructor <init>(Lnh/c$e;Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;Ljava/io/File;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$importListener",
            "val$importOptions",
            "val$file",
            "val$copyToWorld"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnh/c$c;->a:Lnh/c$e;

    iput-object p2, p0, Lnh/c$c;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    iput-object p3, p0, Lnh/c$c;->c:Ljava/io/File;

    iput-boolean p4, p0, Lnh/c$c;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    new-instance p1, Lnh/c$c$a;

    invoke-direct {p1, p0}, Lnh/c$c$a;-><init>(Lnh/c$c;)V

    const/4 v0, 0x1

    invoke-static {v0, p1}, LI7/a;->t1(ZLI7/a$d;)V

    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    return-void
.end method
