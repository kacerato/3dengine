.class public LJ5/b$n$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJ5/b$n$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LJ5/b$n$a;


# direct methods
.method public constructor <init>(LJ5/b$n$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, LJ5/b$n$a$a;->a:LJ5/b$n$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, LJ5/b$n$a$a;->a:LJ5/b$n$a;

    iget-object p1, p1, LJ5/b$n$a;->b:LJ5/b$n;

    iget-object p1, p1, LJ5/b$n;->c:LJ5/b;

    iget-object p1, p1, LJ5/b;->X:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->b()Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/Orientations;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/Orientations;->e(Z)V

    iget-object p1, p0, LJ5/b$n$a$a;->a:LJ5/b$n$a;

    iget-object p1, p1, LJ5/b$n$a;->b:LJ5/b$n;

    iget-object p1, p1, LJ5/b$n;->c:LJ5/b;

    iget-object p1, p1, LJ5/b;->X:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->b()Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/Orientations;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/Orientations;->f(Z)V

    iget-object p1, p0, LJ5/b$n$a$a;->a:LJ5/b$n$a;

    iget-object p1, p1, LJ5/b$n$a;->b:LJ5/b$n;

    iget-object p1, p1, LJ5/b$n;->b:Landroid/widget/TextView;

    const-string v0, "Landscape"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, LJ5/b$n$a$a;->a:LJ5/b$n$a;

    iget-object p1, p1, LJ5/b$n$a;->b:LJ5/b$n;

    iget-object p1, p1, LJ5/b$n;->c:LJ5/b;

    invoke-static {p1}, LJ5/b;->o1(LJ5/b;)V

    return-void
.end method
