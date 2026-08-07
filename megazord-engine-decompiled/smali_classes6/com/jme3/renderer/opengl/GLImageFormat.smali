.class public final Lcom/jme3/renderer/opengl/GLImageFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final compressed:Z

.field public final dataType:I

.field public final format:I

.field public final internalFormat:I

.field public final swizzleRequired:Z


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->internalFormat:I

    .line 3
    iput p2, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->format:I

    .line 4
    iput p3, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->dataType:I

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->compressed:Z

    .line 6
    iput-boolean p1, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->swizzleRequired:Z

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->internalFormat:I

    .line 9
    iput p2, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->format:I

    .line 10
    iput p3, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->dataType:I

    .line 11
    iput-boolean p4, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->compressed:Z

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->swizzleRequired:Z

    return-void
.end method

.method public constructor <init>(IIIZZ)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->internalFormat:I

    .line 15
    iput p2, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->format:I

    .line 16
    iput p3, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->dataType:I

    .line 17
    iput-boolean p4, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->compressed:Z

    .line 18
    iput-boolean p5, p0, Lcom/jme3/renderer/opengl/GLImageFormat;->swizzleRequired:Z

    return-void
.end method
