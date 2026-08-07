.class public interface abstract Lcom/jme3/renderer/Renderer;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract applyRenderState(Lcom/jme3/material/RenderState;)V
.end method

.method public abstract cleanup()V
.end method

.method public abstract clearBuffers(ZZZ)V
.end method

.method public abstract clearClipRect()V
.end method

.method public abstract copyFrameBuffer(Lcom/jme3/texture/FrameBuffer;Lcom/jme3/texture/FrameBuffer;Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract copyFrameBuffer(Lcom/jme3/texture/FrameBuffer;Lcom/jme3/texture/FrameBuffer;ZZ)V
.end method

.method public abstract deleteBuffer(Lcom/jme3/scene/VertexBuffer;)V
.end method

.method public abstract deleteBuffer(Lcom/jme3/shader/bufferobject/BufferObject;)V
.end method

.method public abstract deleteFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V
.end method

.method public abstract deleteImage(Lcom/jme3/texture/Image;)V
.end method

.method public abstract deleteShader(Lcom/jme3/shader/Shader;)V
.end method

.method public abstract deleteShaderSource(Lcom/jme3/shader/Shader$ShaderSource;)V
.end method

.method public abstract generateProfilingTasks(I)[I
.end method

.method public abstract getAlphaToCoverage()Z
.end method

.method public abstract getCaps()Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/jme3/renderer/Caps;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurrentFrameBuffer()Lcom/jme3/texture/FrameBuffer;
.end method

.method public abstract getDefaultAnisotropicFilter()I
.end method

.method public abstract getLimits()Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap<",
            "Lcom/jme3/renderer/Limits;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxLineWidth()F
.end method

.method public abstract getProfilingTime(I)J
.end method

.method public abstract getStatistics()Lcom/jme3/renderer/Statistics;
.end method

.method public abstract initialize()V
.end method

.method public abstract invalidateState()V
.end method

.method public abstract isLinearizeSrgbImages()Z
.end method

.method public abstract isMainFrameBufferSrgb()Z
.end method

.method public abstract isTaskResultAvailable(I)Z
.end method

.method public abstract modifyTexture(Lcom/jme3/texture/Texture;Lcom/jme3/texture/Image;II)V
.end method

.method public popDebugGroup()V
    .locals 0

    return-void
.end method

.method public abstract postFrame()V
.end method

.method public pushDebugGroup(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public abstract readFrameBuffer(Lcom/jme3/texture/FrameBuffer;Ljava/nio/ByteBuffer;)V
.end method

.method public abstract readFrameBufferWithFormat(Lcom/jme3/texture/FrameBuffer;Ljava/nio/ByteBuffer;Lcom/jme3/texture/Image$Format;)V
.end method

.method public abstract renderMesh(Lcom/jme3/scene/Mesh;II[Lcom/jme3/scene/VertexBuffer;)V
.end method

.method public abstract resetGLObjects()V
.end method

.method public abstract setAlphaToCoverage(Z)V
.end method

.method public abstract setBackgroundColor(Lcom/jme3/math/ColorRGBA;)V
.end method

.method public abstract setClipRect(IIII)V
.end method

.method public abstract setDefaultAnisotropicFilter(I)V
.end method

.method public abstract setDepthRange(FF)V
.end method

.method public abstract setFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V
.end method

.method public abstract setLinearizeSrgbImages(Z)V
.end method

.method public abstract setMainFrameBufferOverride(Lcom/jme3/texture/FrameBuffer;)V
.end method

.method public abstract setMainFrameBufferSrgb(Z)V
.end method

.method public abstract setShader(Lcom/jme3/shader/Shader;)V
.end method

.method public abstract setShaderStorageBufferObject(ILcom/jme3/shader/bufferobject/BufferObject;)V
.end method

.method public abstract setTexture(ILcom/jme3/texture/Texture;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jme3/renderer/TextureUnitException;
        }
    .end annotation
.end method

.method public abstract setTextureImage(ILcom/jme3/texture/TextureImage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jme3/renderer/TextureUnitException;
        }
    .end annotation
.end method

.method public abstract setUniformBufferObject(ILcom/jme3/shader/bufferobject/BufferObject;)V
.end method

.method public abstract setViewPort(IIII)V
.end method

.method public abstract startProfiling(I)V
.end method

.method public abstract stopProfiling()V
.end method

.method public abstract updateBufferData(Lcom/jme3/scene/VertexBuffer;)V
.end method

.method public abstract updateShaderStorageBufferObjectData(Lcom/jme3/shader/bufferobject/BufferObject;)V
.end method

.method public abstract updateUniformBufferObjectData(Lcom/jme3/shader/bufferobject/BufferObject;)V
.end method
