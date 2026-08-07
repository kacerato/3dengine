.class public Lyb/e$a$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyb/e$a$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lyb/e$a$f;


# direct methods
.method public constructor <init>(Lyb/e$a$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lyb/e$a$f$a;->a:Lyb/e$a$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/content/Context;Le8/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "context",
            "tbButton"
        }
    .end annotation

    iget-object p2, p0, Lyb/e$a$f$a;->a:Lyb/e$a$f;

    iget-object p2, p2, Lyb/e$a$f;->b:Lyb/e$a;

    iget-object p2, p2, Lyb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->objectsPanelColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iput-object v0, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->objectsPanelColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    :cond_0
    iget-object p2, p0, Lyb/e$a$f$a;->a:Lyb/e$a$f;

    iget-object p2, p2, Lyb/e$a$f;->b:Lyb/e$a;

    iget-object p2, p2, Lyb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->objectsPanelColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v0

    sget-object v1, LL4/a$e;->Left:LL4/a$e;

    new-instance v2, Lyb/e$a$f$a$a;

    invoke-direct {v2, p0, p3}, Lyb/e$a$f$a$a;-><init>(Lyb/e$a$f$a;Le8/c;)V

    invoke-static {p2, p1, v0, v1, v2}, LN5/f;->K1(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Landroid/view/View;Landroid/content/Context;LL4/a$e;LN5/f$j;)V

    return-void
.end method
