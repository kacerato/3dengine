.class public LV4/c$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LV4/c$a;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LV4/c$a;


# direct methods
.method public constructor <init>(LV4/c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LV4/c$a$b;->b:LV4/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LV4/c$a$b;->b:LV4/c$a;

    iget-object v0, v0, LV4/c$a;->a:LV4/c;

    invoke-static {v0}, LV4/c;->s1(LV4/c;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LV4/c$a$b;->b:LV4/c$a;

    iget-object v0, v0, LV4/c$a;->a:LV4/c;

    invoke-static {v0}, LV4/c;->s1(LV4/c;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->s0()V

    iget-object v0, p0, LV4/c$a$b;->b:LV4/c$a;

    iget-object v0, v0, LV4/c$a;->a:LV4/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LV4/c;->t1(LV4/c;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    :cond_0
    return-void
.end method
