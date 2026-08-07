.class public Lyb/e$a$g;
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

    iput-object p1, p0, Lyb/e$a$g;->a:Lyb/e$a;

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

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v0, "New Child"

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lyb/e$a$g;->a:Lyb/e$a;

    iget-object v0, v0, Lyb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/World/b;->e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method
