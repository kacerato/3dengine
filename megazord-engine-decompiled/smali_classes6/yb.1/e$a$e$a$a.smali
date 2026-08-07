.class public Lyb/e$a$e$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN5/f$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyb/e$a$e$a;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lyb/e$a$e$a;


# direct methods
.method public constructor <init>(Lyb/e$a$e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lyb/e$a$e$a$a;->a:Lyb/e$a$e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorINT"
        }
    .end annotation

    iget-object v0, p0, Lyb/e$a$e$a$a;->a:Lyb/e$a$e$a;

    iget-object v0, v0, Lyb/e$a$e$a;->a:Lyb/e$a$e;

    iget-object v0, v0, Lyb/e$a$e;->b:Lyb/e$a;

    iget-object v0, v0, Lyb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->objectsPanelColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->N1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method
