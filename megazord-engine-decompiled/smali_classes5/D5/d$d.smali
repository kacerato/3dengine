.class public LD5/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LD5/d;->r(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LD5/d;


# direct methods
.method public constructor <init>(LD5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LD5/d$d;->a:LD5/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/content/Context;Le8/c;)V
    .locals 2
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

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->INTENSITY:LUc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, LD5/d$d;->a:LD5/d;

    invoke-static {p2}, LD5/d;->H(LD5/d;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object p2

    iget p2, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->brushIntensity:F

    iget-object p3, p0, LD5/d$d;->a:LD5/d;

    invoke-static {p3}, LD5/d;->H(LD5/d;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getBrushIntensityMinSliderValue()F

    move-result p3

    iget-object v0, p0, LD5/d$d;->a:LD5/d;

    invoke-static {v0}, LD5/d;->H(LD5/d;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getBrushIntensityMaxSliderValue()F

    move-result v0

    new-instance v1, LD5/d$d$a;

    invoke-direct {v1, p0}, LD5/d$d$a;-><init>(LD5/d$d;)V

    invoke-static {p1, p2, p3, v0, v1}, Lr7/e;->A1(Ljava/lang/String;FFFLr7/e$i;)V

    return-void
.end method
