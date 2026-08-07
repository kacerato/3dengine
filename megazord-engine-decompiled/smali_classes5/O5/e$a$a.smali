.class public LO5/e$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV3/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LO5/e$a;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LO5/e$a;


# direct methods
.method public constructor <init>(LO5/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LO5/e$a$a;->a:LO5/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    iget-object v0, p0, LO5/e$a$a;->a:LO5/e$a;

    iget-object v0, v0, LO5/e$a;->b:LO5/e;

    invoke-static {v0, p1}, LO5/e;->J1(LO5/e;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;LV3/a$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "files",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/documentfile/provider/DocumentFile;",
            ">;",
            "LV3/a$c;",
            ")V"
        }
    .end annotation

    new-instance v0, LO5/e$a$a$a;

    invoke-direct {v0, p0, p1, p2}, LO5/e$a$a$a;-><init>(LO5/e$a$a;Ljava/util/List;LV3/a$c;)V

    const/4 p1, 0x1

    invoke-static {p1, v0}, LI7/a;->t1(ZLI7/a$d;)V

    return-void
.end method
