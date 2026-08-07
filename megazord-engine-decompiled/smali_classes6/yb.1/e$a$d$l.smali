.class public Lyb/e$a$d$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyb/e$a$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lyb/e$a$d;


# direct methods
.method public constructor <init>(Lyb/e$a$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lyb/e$a$d$l;->a:Lyb/e$a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    :try_start_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iget-object v0, p0, Lyb/e$a$d$l;->a:Lyb/e$a$d;

    iget-object v0, v0, Lyb/e$a$d;->b:Lyb/e$a;

    iget-object v0, v0, Lyb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->H0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->s1()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->P(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->s1()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    invoke-static {v3, v4}, Lgd/d;->h(FF)F

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I(FFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method
