.class public abstract Lcom/jme3/audio/Filter;
.super Lcom/jme3/util/NativeObject;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/util/NativeObject;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/jme3/util/NativeObject;-><init>(I)V

    return-void
.end method


# virtual methods
.method public abstract createDestructableClone()Lcom/jme3/util/NativeObject;
.end method

.method public deleteObject(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/jme3/audio/AudioRenderer;

    invoke-interface {p1, p0}, Lcom/jme3/audio/AudioRenderer;->deleteFilter(Lcom/jme3/audio/Filter;)V

    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public resetObject()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/jme3/util/NativeObject;->id:I

    invoke-virtual {p0}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
