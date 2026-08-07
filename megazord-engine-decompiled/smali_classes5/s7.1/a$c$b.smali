.class public Ls7/a$c$b;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls7/a$c;->c(Ls7/c;Ls7/b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ls7/c;

.field public final synthetic c:I

.field public final synthetic d:Ls7/b;

.field public final synthetic e:Ls7/a$c;


# direct methods
.method public constructor <init>(Ls7/a$c;Ls7/c;ILs7/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$holder",
            "val$position",
            "val$element"
        }
    .end annotation

    iput-object p1, p0, Ls7/a$c$b;->e:Ls7/a$c;

    iput-object p2, p0, Ls7/a$c$b;->b:Ls7/c;

    iput p3, p0, Ls7/a$c$b;->c:I

    iput-object p4, p0, Ls7/a$c$b;->d:Ls7/b;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, Ls7/a$c$b;->e:Ls7/a$c;

    iget-object p1, p1, Ls7/a$c;->a:Ls7/a;

    invoke-static {p1}, Ls7/a;->q1(Ls7/a;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ls7/a$c$b;->e:Ls7/a$c;

    iget-object p1, p1, Ls7/a$c;->a:Ls7/a;

    invoke-static {p1}, Ls7/a;->q1(Ls7/a;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Ls7/a$c$b;->e:Ls7/a$c;

    iget-object v0, v0, Ls7/a$c;->a:Ls7/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->TREE_LIST_ROW1:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lod/e;->t(Landroid/view/View;Landroid/content/Context;I)V

    :cond_0
    iget-object p1, p0, Ls7/a$c$b;->e:Ls7/a$c;

    iget-object p1, p1, Ls7/a$c;->a:Ls7/a;

    iget-object v0, p0, Ls7/a$c$b;->b:Ls7/c;

    iget-object v0, v0, Ls7/c;->e:Landroid/view/View;

    invoke-static {p1, v0}, Ls7/a;->r1(Ls7/a;Landroid/view/View;)Landroid/view/View;

    iget-object p1, p0, Ls7/a$c$b;->b:Ls7/c;

    iget-object p1, p1, Ls7/c;->e:Landroid/view/View;

    iget-object v0, p0, Ls7/a$c$b;->e:Ls7/a$c;

    iget-object v0, v0, Ls7/a$c;->a:Ls7/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ACCENT_GREEN:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lod/e;->t(Landroid/view/View;Landroid/content/Context;I)V

    iget-object p1, p0, Ls7/a$c$b;->e:Ls7/a$c;

    iget-object p1, p1, Ls7/a$c;->a:Ls7/a;

    iget v0, p0, Ls7/a$c$b;->c:I

    invoke-static {p1, v0}, Ls7/a;->p1(Ls7/a;I)I

    iget-object p1, p0, Ls7/a$c$b;->d:Ls7/b;

    iget-object v0, p1, Ls7/b;->d:Ls7/a$g;

    iget-object p1, p1, Ls7/b;->c:LB4/d;

    invoke-interface {v0, p1}, Ls7/a$g;->a(LB4/d;)V

    return-void
.end method
