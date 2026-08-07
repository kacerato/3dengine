.class public Lyb/e$a$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyb/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lyb/e$a;


# direct methods
.method public constructor <init>(Lyb/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lyb/e$a$l;->a:Lyb/e$a;

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
            "view"
        }
    .end annotation

    iget-object p1, p0, Lyb/e$a$l;->a:Lyb/e$a;

    iget-object p1, p1, Lyb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->SkinnedModelRenderer:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;

    if-nez p1, :cond_0

    const-string p1, "No SkinnedModelRenderer found"

    invoke-static {p1}, Lf8/c;->u0(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lyb/e$a$l$a;

    invoke-direct {v0, p0, p1}, Lyb/e$a$l$a;-><init>(Lyb/e$a$l;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;)V

    invoke-static {v0}, LP5/b;->x1(LP5/b$i;)V

    return-void
.end method
