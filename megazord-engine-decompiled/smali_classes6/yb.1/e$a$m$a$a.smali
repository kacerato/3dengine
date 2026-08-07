.class public Lyb/e$a$m$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La5/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyb/e$a$m$a;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/ITsMagic/Atlas/BakeOptions;

.field public final synthetic b:Lyb/e$a$m$a;


# direct methods
.method public constructor <init>(Lyb/e$a$m$a;Lorg/ITsMagic/Atlas/BakeOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lyb/e$a$m$a$a;->b:Lyb/e$a$m$a;

    iput-object p2, p0, Lyb/e$a$m$a$a;->a:Lorg/ITsMagic/Atlas/BakeOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La5/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entriesClassPanel"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p1, La5/e;->b0:Z

    iget-object v0, p0, Lyb/e$a$m$a$a;->b:Lyb/e$a$m$a;

    iget-object v1, p0, Lyb/e$a$m$a$a;->a:Lorg/ITsMagic/Atlas/BakeOptions;

    invoke-virtual {v0, v1}, Lyb/e$a$m$a;->a(Lorg/ITsMagic/Atlas/BakeOptions;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, La5/e;->u1(Ljava/util/List;)V

    return-void
.end method

.method public b(La5/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entriesClassPanel"
        }
    .end annotation

    return-void
.end method

.method public c(Landroid/view/View;La5/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "panel"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->Q0()V

    iget-object p1, p0, Lyb/e$a$m$a$a;->b:Lyb/e$a$m$a;

    new-instance p2, Lorg/ITsMagic/Atlas/g;

    iget-object v0, p1, Lyb/e$a$m$a;->b:Lyb/e$a$m;

    iget-object v0, v0, Lyb/e$a$m;->b:Lyb/e$a;

    iget-object v0, v0, Lyb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, p0, Lyb/e$a$m$a$a;->a:Lorg/ITsMagic/Atlas/BakeOptions;

    invoke-direct {p2, v0, v1}, Lorg/ITsMagic/Atlas/g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lorg/ITsMagic/Atlas/BakeOptions;)V

    iput-object p2, p1, Lyb/e$a$m$a;->a:Lorg/ITsMagic/Atlas/g;

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lyb/e$a$m$a$a;->b:Lyb/e$a$m$a;

    iget-object p2, p2, Lyb/e$a$m$a;->a:Lorg/ITsMagic/Atlas/g;

    invoke-static {p1, p2}, LV4/c;->w1(Landroid/content/Context;Lorg/ITsMagic/Atlas/g;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void
.end method

.method public d(La5/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entriesClassPanel"
        }
    .end annotation

    iget-object v0, p0, Lyb/e$a$m$a$a;->b:Lyb/e$a$m$a;

    iget-object v1, p0, Lyb/e$a$m$a$a;->a:Lorg/ITsMagic/Atlas/BakeOptions;

    invoke-virtual {v0, v1}, Lyb/e$a$m$a;->a(Lorg/ITsMagic/Atlas/BakeOptions;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, La5/e;->u1(Ljava/util/List;)V

    return-void
.end method

.method public e(La5/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entriesClassPanel"
        }
    .end annotation

    iget-object v0, p0, Lyb/e$a$m$a$a;->b:Lyb/e$a$m$a;

    iget-object v1, p0, Lyb/e$a$m$a$a;->a:Lorg/ITsMagic/Atlas/BakeOptions;

    invoke-virtual {v0, v1}, Lyb/e$a$m$a;->a(Lorg/ITsMagic/Atlas/BakeOptions;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, La5/e;->u1(Ljava/util/List;)V

    return-void
.end method

.method public g(Landroid/view/View;La5/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "panel"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->Q0()V

    return-void
.end method
