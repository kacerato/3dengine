.class public LD5/b$d$a;
.super LN5/i$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LD5/b$d;->onClick(Landroid/view/View;Landroid/content/Context;Le8/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LD5/b$d;


# direct methods
.method public constructor <init>(LD5/b$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LD5/b$d$a;->a:LD5/b$d;

    invoke-direct {p0}, LN5/i$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LD5/b$d$a;->a:LD5/b$d;

    iget-object v0, v0, LD5/b$d;->a:LD5/b;

    invoke-static {v0}, LD5/b;->H(LD5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v0

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->brushIntensity:F

    return-void
.end method

.method public get()F
    .locals 1

    iget-object v0, p0, LD5/b$d$a;->a:LD5/b$d;

    iget-object v0, v0, LD5/b$d;->a:LD5/b;

    invoke-static {v0}, LD5/b;->H(LD5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v0

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->brushIntensity:F

    return v0
.end method

.method public getMax()F
    .locals 1

    iget-object v0, p0, LD5/b$d$a;->a:LD5/b$d;

    iget-object v0, v0, LD5/b$d;->a:LD5/b;

    invoke-static {v0}, LD5/b;->H(LD5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getBrushIntensityMaxSliderValue()F

    move-result v0

    return v0
.end method

.method public getMin()F
    .locals 1

    iget-object v0, p0, LD5/b$d$a;->a:LD5/b$d;

    iget-object v0, v0, LD5/b$d;->a:LD5/b;

    invoke-static {v0}, LD5/b;->H(LD5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getBrushIntensityMinSliderValue()F

    move-result v0

    return v0
.end method
