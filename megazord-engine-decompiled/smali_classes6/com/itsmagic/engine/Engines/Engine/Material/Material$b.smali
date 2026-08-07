.class public Lcom/itsmagic/engine/Engines/Engine/Material/Material$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Material/Material;->L(Landroid/content/Context;Lva/f;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/Material/Material;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material$b;->a:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variable"
        }
    .end annotation

    invoke-static {}, Lm/a;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, LL4/a$e;->Below:LL4/a$e;

    const/high16 v0, 0x43960000    # 300.0f

    const/high16 v1, 0x43e10000    # 450.0f

    const-string v2, "https://itsmagic.com.br/index.html"

    const/4 v3, 0x0

    invoke-static {v2, v3, p1, v0, v1}, Lr7/k;->v1(Ljava/lang/String;Landroid/view/View;LL4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void

    :cond_0
    invoke-static {}, Lf8/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object p1

    new-instance v0, LH4/e;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material$b;->a:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-direct {v0, v1}, LH4/e;-><init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->A0(LH4/f;)Z

    return-void
.end method
