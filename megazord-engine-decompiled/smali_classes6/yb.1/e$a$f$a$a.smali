.class public Lyb/e$a$f$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN5/f$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyb/e$a$f$a;->onClick(Landroid/view/View;Landroid/content/Context;Le8/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le8/c;

.field public final synthetic b:Lyb/e$a$f$a;


# direct methods
.method public constructor <init>(Lyb/e$a$f$a;Le8/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$tbButton"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lyb/e$a$f$a$a;->b:Lyb/e$a$f$a;

    iput-object p2, p0, Lyb/e$a$f$a$a;->a:Le8/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorINT"
        }
    .end annotation

    iget-object v0, p0, Lyb/e$a$f$a$a;->b:Lyb/e$a$f$a;

    iget-object v0, v0, Lyb/e$a$f$a;->a:Lyb/e$a$f;

    iget-object v0, v0, Lyb/e$a$f;->b:Lyb/e$a;

    iget-object v0, v0, Lyb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->objectsPanelColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->N1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object p1, p0, Lyb/e$a$f$a$a;->a:Le8/c;

    iget-object v0, p0, Lyb/e$a$f$a$a;->b:Lyb/e$a$f$a;

    iget-object v0, v0, Lyb/e$a$f$a;->a:Lyb/e$a$f;

    iget-object v0, v0, Lyb/e$a$f;->b:Lyb/e$a;

    iget-object v0, v0, Lyb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->objectsPanelColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-eqz v0, :cond_0

    :goto_0
    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    goto :goto_0

    :goto_1
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Le8/c;->a0(IZ)Le8/c;

    return-void
.end method
