.class public LJAVARuntime/ToneMapper;
.super LJAVARuntime/Component;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Post processing"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJAVARuntime/ToneMapper$Type;
    }
.end annotation


# instance fields
.field public instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;
    .annotation runtime LZ6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/ToneMapper;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;)V

    return-void
.end method

.method public constructor <init>(Lc9/a;)V
    .locals 0
    .annotation runtime LG8/c;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, LJAVARuntime/Component;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;)V
    .locals 0
    .annotation runtime LZ6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, LJAVARuntime/Component;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    .line 2
    iput-object p1, p0, LJAVARuntime/ToneMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;

    .line 3
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->setRuntime(LJAVARuntime/Component;)V

    return-void
.end method

.method private static ENUMCONVERT(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$i;)LJAVARuntime/ToneMapper$Type;
    .locals 0
    .annotation runtime LZ6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "un"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LJAVARuntime/ToneMapper$Type;->valueOf(Ljava/lang/String;)LJAVARuntime/ToneMapper$Type;

    move-result-object p0

    return-object p0
.end method

.method private static ENUMCONVERT(LJAVARuntime/ToneMapper$Type;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$i;
    .locals 0
    .annotation runtime LZ6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "un"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$i;->valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$i;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;)Z
    .locals 1
    .annotation runtime LZ6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    const-class v0, LJAVARuntime/ToneMapper;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public getContrast()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/ToneMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->getContrast()F

    move-result v0

    return v0
.end method

.method public getOffsetB()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/ToneMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->getOffsetB()F

    move-result v0

    return v0
.end method

.method public getOffsetG()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/ToneMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->getOffsetG()F

    move-result v0

    return v0
.end method

.method public getOffsetR()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/ToneMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->getOffsetR()F

    move-result v0

    return v0
.end method

.method public getPowerB()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/ToneMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->getPowerB()F

    move-result v0

    return v0
.end method

.method public getPowerG()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/ToneMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->getPowerG()F

    move-result v0

    return v0
.end method

.method public getPowerR()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/ToneMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->getPowerR()F

    move-result v0

    return v0
.end method

.method public getSaturation()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/ToneMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->getSaturation()F

    move-result v0

    return v0
.end method

.method public getSlopeB()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/ToneMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->getSlopeB()F

    move-result v0

    return v0
.end method

.method public getSlopeG()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/ToneMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->getSlopeG()F

    move-result v0

    return v0
.end method

.method public getSlopeR()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/ToneMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->getSlopeR()F

    move-result v0

    return v0
.end method

.method public getTemperature()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/ToneMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->getTemperature()F

    move-result v0

    return v0
.end method

.method public getTint()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/ToneMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->getTint()F

    move-result v0

    return v0
.end method

.method public getTonnemapType()LJAVARuntime/ToneMapper$Type;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/ToneMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->getTonnemapType()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$i;

    move-result-object v0

    invoke-static {v0}, LJAVARuntime/ToneMapper;->ENUMCONVERT(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$i;)LJAVARuntime/ToneMapper$Type;

    move-result-object v0

    return-object v0
.end method

.method public getVibrance()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/ToneMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->getVibrance()F

    move-result v0

    return v0
.end method

.method public setContrast(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "contrast"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/ToneMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->setContrast(F)V

    return-void
.end method

.method public setOffsetB(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "offsetB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/ToneMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->setOffsetB(F)V

    return-void
.end method

.method public setOffsetG(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "offsetG"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/ToneMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->setOffsetG(F)V

    return-void
.end method

.method public setOffsetR(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "offsetR"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/ToneMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->setOffsetR(F)V

    return-void
.end method

.method public setPowerB(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "powerB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/ToneMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->setPowerB(F)V

    return-void
.end method

.method public setPowerG(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "powerG"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/ToneMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->setPowerG(F)V

    return-void
.end method

.method public setPowerR(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "powerR"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/ToneMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->setPowerR(F)V

    return-void
.end method

.method public setSaturation(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "saturation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/ToneMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->setSaturation(F)V

    return-void
.end method

.method public setSlopeB(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "slopeB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/ToneMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->setSlopeB(F)V

    return-void
.end method

.method public setSlopeG(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "slopeG"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/ToneMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->setSlopeG(F)V

    return-void
.end method

.method public setSlopeR(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "slopeR"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/ToneMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->setSlopeR(F)V

    return-void
.end method

.method public setTemperature(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "temperature"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/ToneMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->setTemperature(F)V

    return-void
.end method

.method public setTint(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "tint"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/ToneMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->setTint(F)V

    return-void
.end method

.method public setTonnemapType(LJAVARuntime/ToneMapper$Type;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/ToneMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;

    invoke-static {p1}, LJAVARuntime/ToneMapper;->ENUMCONVERT(LJAVARuntime/ToneMapper$Type;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$i;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->setTonnemapType(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$i;)V

    return-void
.end method

.method public setVibrance(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vibrance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/ToneMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->setVibrance(F)V

    return-void
.end method
