.class public interface abstract Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/b$a;
    }
.end annotation


# virtual methods
.method public afterLevel(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    return-void
.end method

.method public abstract allowLeveling(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation
.end method

.method public abstract getWorldY(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;FFFFLcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/b$a;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "terrain",
            "worldX",
            "worldZ",
            "minY",
            "maxY",
            "output"
        }
    .end annotation
.end method
