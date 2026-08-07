.class public Lg4/a$c$a;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg4/a$c;->c(Lg4/i;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lg4/i;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lg4/a$c;


# direct methods
.method public constructor <init>(Lg4/a$c;Lg4/i;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$holder",
            "val$path"
        }
    .end annotation

    iput-object p1, p0, Lg4/a$c$a;->d:Lg4/a$c;

    iput-object p2, p0, Lg4/a$c$a;->b:Lg4/i;

    iput-object p3, p0, Lg4/a$c$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-static {}, Lm/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, LL4/a$e;->Below:LL4/a$e;

    const/high16 v1, 0x43960000    # 300.0f

    const/high16 v2, 0x43e10000    # 450.0f

    const-string v3, "https://itsmagic.com.br/index.html"

    invoke-static {v3, p1, v0, v1, v2}, Lr7/k;->v1(Ljava/lang/String;Landroid/view/View;LL4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void

    :cond_0
    iget-object p1, p0, Lg4/a$c$a;->d:Lg4/a$c;

    iget-object p1, p1, Lg4/a$c;->a:Lg4/a;

    invoke-static {p1}, Lg4/a;->o1(Lg4/a;)[Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lg4/a$c$a;->d:Lg4/a$c;

    iget-object p1, p1, Lg4/a$c;->a:Lg4/a;

    invoke-static {p1}, Lg4/a;->o1(Lg4/a;)[Landroid/widget/ImageView;

    move-result-object p1

    aget-object p1, p1, v0

    iget-object v1, p0, Lg4/a$c$a;->d:Lg4/a$c;

    iget-object v1, v1, Lg4/a$c;->a:Lg4/a;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL:LUc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    invoke-static {p1, v1, v2}, Lod/e;->y(Landroid/widget/ImageView;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object p1, p0, Lg4/a$c$a;->d:Lg4/a$c;

    iget-object p1, p1, Lg4/a$c;->a:Lg4/a;

    invoke-static {p1}, Lg4/a;->o1(Lg4/a;)[Landroid/widget/ImageView;

    move-result-object p1

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_1
    iget-object p1, p0, Lg4/a$c$a;->b:Lg4/i;

    iget-object p1, p1, Lg4/i;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lg4/a$c$a;->d:Lg4/a$c;

    iget-object v1, v1, Lg4/a$c;->a:Lg4/a;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05003e

    invoke-static {p1, v1, v2}, Lod/e;->x(Landroid/widget/ImageView;Landroid/content/Context;I)V

    iget-object p1, p0, Lg4/a$c$a;->d:Lg4/a$c;

    iget-object p1, p1, Lg4/a$c;->a:Lg4/a;

    invoke-static {p1}, Lg4/a;->o1(Lg4/a;)[Landroid/widget/ImageView;

    move-result-object p1

    iget-object v1, p0, Lg4/a$c$a;->b:Lg4/i;

    iget-object v1, v1, Lg4/i;->c:Landroid/widget/ImageView;

    aput-object v1, p1, v0

    iget-object p1, p0, Lg4/a$c$a;->d:Lg4/a$c;

    iget-object p1, p1, Lg4/a$c;->a:Lg4/a;

    invoke-static {p1}, Lg4/a;->p1(Lg4/a;)Lg4/e;

    move-result-object p1

    iget-object v0, p0, Lg4/a$c$a;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Lg4/e;->onSelected(Ljava/lang/String;)V

    iget-object p1, p0, Lg4/a$c$a;->d:Lg4/a$c;

    iget-object p1, p1, Lg4/a$c;->a:Lg4/a;

    iget-object v0, p0, Lg4/a$c$a;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lg4/a;->r1(Lg4/a;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
