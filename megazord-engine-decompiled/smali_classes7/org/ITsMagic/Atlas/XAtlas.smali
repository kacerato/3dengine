.class public Lorg/ITsMagic/Atlas/XAtlas;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ITsMagic/Atlas/XAtlas$b;,
        Lorg/ITsMagic/Atlas/XAtlas$a;
    }
.end annotation


# static fields
.field public static k:Z = true

.field public static final l:I = 0x0

.field public static final m:I = 0x1

.field public static final n:I = 0x2

.field public static final o:I = 0x3

.field public static final p:F = 0.0f

.field public static final q:F = 0.1f

.field public static final r:F = 0.1f

.field public static final s:F = 0.85f

.field public static final t:F = 0.85f

.field public static final u:F = 0.99f

.field public static final v:F = 0.99f

.field public static final w:F = 1.0f

.field public static final x:I = 0x3e8


# instance fields
.field public a:J

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ITsMagic/Atlas/XAtlas$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmh/k;",
            ">;"
        }
    .end annotation
.end field

.field public final d:LUb/f;

.field public final e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public f:Z

.field public g:I

.field public transient h:Lorg/ITsMagic/Atlas/XAtlas$a;

.field public i:I

.field public j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "xatlas"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lorg/ITsMagic/Atlas/XAtlas;->k:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/ITsMagic/Atlas/XAtlas;->a:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ITsMagic/Atlas/XAtlas;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ITsMagic/Atlas/XAtlas;->c:Ljava/util/List;

    new-instance v0, LUb/f;

    invoke-direct {v0}, LUb/f;-><init>()V

    iput-object v0, p0, Lorg/ITsMagic/Atlas/XAtlas;->d:LUb/f;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lorg/ITsMagic/Atlas/XAtlas;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ITsMagic/Atlas/XAtlas;->f:Z

    iput v0, p0, Lorg/ITsMagic/Atlas/XAtlas;->g:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/ITsMagic/Atlas/XAtlas;->i:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/ITsMagic/Atlas/XAtlas;->j:I

    return-void
.end method

.method public static h(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    sget-boolean v0, Lorg/ITsMagic/Atlas/XAtlas;->k:Z

    if-eqz v0, :cond_0

    const-string v0, "XAtlas"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static native nativeAddMeshFromNative(JJJ)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "verticesPointer",
            "trianglesPointer"
        }
    .end annotation
.end method

.method private static native nativeAtlasCount(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation
.end method

.method private static native nativeAtlasHeight(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation
.end method

.method private static native nativeAtlasWidth(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation
.end method

.method private static native nativeDeleteBuffer(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation
.end method

.method private static native nativeGenerate(JZIFFFFFFFIIZZFLorg/ITsMagic/Atlas/XAtlas;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "allowLog",
            "resolution",
            "maxChartArea",
            "maxBoundaryLength",
            "normalDeviationWeight",
            "roundnessWeight",
            "straightnessWeight",
            "normalSeamWeight",
            "textureSeamWeight",
            "maxChartSize",
            "padding",
            "bilinear",
            "blockAlign",
            "texelsPerUnit",
            "callbackOwner"
        }
    .end annotation
.end method

.method private static native nativeGetFirstAtlasUtilization(J)F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation
.end method

.method private static native nativeGetMeshAtlasIndexCount(JI)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "meshIndex"
        }
    .end annotation
.end method

.method private static native nativeGetMeshIndiceCount(JI)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "meshIndex"
        }
    .end annotation
.end method

.method private static native nativeGetMeshUVFromVertice(JIJIJ)F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "meshIndex",
            "vertice",
            "uvIndex",
            "atlasIndex"
        }
    .end annotation
.end method

.method private static native nativeGetMeshVertexAtlasIndex(JIJ)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "meshIndex",
            "vertice"
        }
    .end annotation
.end method

.method private static native nativeGetMeshVertexIndice(JII)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "meshIndex",
            "indice"
        }
    .end annotation
.end method

.method private static native nativeGetMeshVertexXRefFromVertice(JIJ)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "meshIndex",
            "vertice"
        }
    .end annotation
.end method

.method private static native nativeGetMeshVerticeCount(JI)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "meshIndex"
        }
    .end annotation
.end method

.method public static native nativeTryCreate()J
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lcom/itsmagic/engine/Engines/Engine/Material/Material;[F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "vertex",
            "material",
            "renderMatrix"
        }
    .end annotation

    const-string v0, "Adding vertex"

    invoke-static {v0}, Lorg/ITsMagic/Atlas/XAtlas;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ITsMagic/Atlas/XAtlas;->b:Ljava/util/List;

    new-instance v1, Lorg/ITsMagic/Atlas/XAtlas$b;

    invoke-direct {v1, p1, p3, p2}, Lorg/ITsMagic/Atlas/XAtlas$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;[FLcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/ITsMagic/Atlas/XAtlas;->h:Lorg/ITsMagic/Atlas/XAtlas$a;

    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/ITsMagic/Atlas/XAtlas;->i:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/ITsMagic/Atlas/XAtlas;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final c(Lorg/ITsMagic/Atlas/XAtlas$a;F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listener",
            "progress"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p2, v1}, Lgd/b;->E(FFF)F

    move-result p2

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/16 v1, 0x3e8

    const-string v2, ""

    invoke-interface {p1, v0, v1, p2, v2}, Lorg/ITsMagic/Atlas/XAtlas$a;->a(IIFLjava/lang/String;)V

    return-void
.end method

.method public d(IFFFFFFFIIFZZZLorg/ITsMagic/Atlas/XAtlas$a;)V
    .locals 29
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "forcedResolution",
            "maxChartArea",
            "maxBoundaryLength",
            "normalDeviationWeight",
            "roundnessWeight",
            "straightnessWeight",
            "normalSeamWeight",
            "textureSeamWeight",
            "maxChartSize",
            "padding",
            "texelsPerUnit",
            "bilinear",
            "blockAlign",
            "allowRecursiveSizeReduction",
            "listener"
        }
    .end annotation

    move-object/from16 v15, p0

    move/from16 v0, p1

    move-object/from16 v14, p15

    const/4 v13, 0x0

    invoke-virtual {v15, v14, v13}, Lorg/ITsMagic/Atlas/XAtlas;->c(Lorg/ITsMagic/Atlas/XAtlas$a;F)V

    const/16 v12, 0x1000

    if-lez v0, :cond_0

    iput v0, v15, Lorg/ITsMagic/Atlas/XAtlas;->g:I

    goto :goto_0

    :cond_0
    iput v12, v15, Lorg/ITsMagic/Atlas/XAtlas;->g:I

    :goto_0
    const/4 v11, 0x0

    const/4 v10, 0x1

    if-lez v0, :cond_1

    move v0, v10

    goto :goto_1

    :cond_1
    move v0, v11

    :goto_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move/from16 v18, v0

    move/from16 v19, v11

    :goto_2
    invoke-static {}, Lorg/ITsMagic/Atlas/XAtlas;->nativeTryCreate()J

    move-result-wide v0

    iput-wide v0, v15, Lorg/ITsMagic/Atlas/XAtlas;->a:J

    const-string v0, "Atlas created"

    invoke-static {v0}, Lorg/ITsMagic/Atlas/XAtlas;->h(Ljava/lang/String;)V

    invoke-interface {v9}, Ljava/util/List;->clear()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, v11

    :goto_3
    iget-object v0, v15, Lorg/ITsMagic/Atlas/XAtlas;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    iget-object v0, v15, Lorg/ITsMagic/Atlas/XAtlas;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/ITsMagic/Atlas/XAtlas$b;

    invoke-static {v3}, Lorg/ITsMagic/Atlas/XAtlas$b;->a(Lorg/ITsMagic/Atlas/XAtlas$b;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    invoke-static {v3}, Lorg/ITsMagic/Atlas/XAtlas$b;->b(Lorg/ITsMagic/Atlas/XAtlas$b;)[F

    move-result-object v4

    iget-object v5, v15, Lorg/ITsMagic/Atlas/XAtlas;->d:LUb/f;

    invoke-virtual {v5, v4}, LUb/f;->L0([F)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->p1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->d1()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v5

    if-eqz v5, :cond_5

    if-nez v4, :cond_2

    goto/16 :goto_6

    :cond_2
    :try_start_0
    iget-object v6, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->b:Ljava/lang/String;

    const/4 v7, 0x3

    const/16 v8, 0x9

    invoke-virtual {v15, v4, v7, v8, v6}, Lorg/ITsMagic/Atlas/XAtlas;->m(LPc/a;IILjava/lang/String;)Z

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->b:Ljava/lang/String;

    invoke-virtual {v15, v5, v7, v7, v0}, Lorg/ITsMagic/Atlas/XAtlas;->m(LPc/a;IILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h()I

    move-result v6

    invoke-direct {v0, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    invoke-virtual {v0, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->j0(I)V

    move v6, v11

    :goto_4
    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h()I

    move-result v7

    if-ge v6, v7, :cond_3

    iget-object v7, v15, Lorg/ITsMagic/Atlas/XAtlas;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->e2(F)F

    iget-object v7, v15, Lorg/ITsMagic/Atlas/XAtlas;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v4, v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->i2(F)F

    iget-object v7, v15, Lorg/ITsMagic/Atlas/XAtlas;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    add-int/lit8 v8, v6, 0x2

    invoke-virtual {v4, v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->j2(F)F

    iget-object v7, v15, Lorg/ITsMagic/Atlas/XAtlas;->d:LUb/f;

    iget-object v8, v15, Lorg/ITsMagic/Atlas/XAtlas;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v7, v8, v8}, LUb/f;->B0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object v7, v15, Lorg/ITsMagic/Atlas/XAtlas;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->p0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    add-int/lit8 v6, v6, 0x3

    goto :goto_4

    :cond_3
    iget-wide v6, v15, Lorg/ITsMagic/Atlas/XAtlas;->a:J

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e0()J

    move-result-wide v22

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->X()J

    move-result-wide v24

    move-wide/from16 v20, v6

    invoke-static/range {v20 .. v25}, Lorg/ITsMagic/Atlas/XAtlas;->nativeAddMeshFromNative(JJJ)Z

    move-result v4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    if-eqz v4, :cond_4

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_4
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    iget-object v0, v15, Lorg/ITsMagic/Atlas/XAtlas;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v3, v2

    iget-object v4, v15, Lorg/ITsMagic/Atlas/XAtlas;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    const-string v4, ""

    invoke-interface {v14, v2, v0, v3, v4}, Lorg/ITsMagic/Atlas/XAtlas$a;->a(IIFLjava/lang/String;)V

    goto :goto_7

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_5
    :goto_6
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_6
    iget-object v0, v15, Lorg/ITsMagic/Atlas/XAtlas;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "No mesh do bake"

    invoke-static {v0}, Lorg/ITsMagic/Atlas/XAtlas;->h(Ljava/lang/String;)V

    return-void

    :cond_7
    const-string v0, "Computing charts"

    invoke-interface {v14, v0}, Lorg/ITsMagic/Atlas/XAtlas$a;->b(Ljava/lang/String;)V

    const-string v0, "Please wait..."

    invoke-interface {v14, v11, v11, v13, v0}, Lorg/ITsMagic/Atlas/XAtlas$a;->a(IIFLjava/lang/String;)V

    iget-wide v1, v15, Lorg/ITsMagic/Atlas/XAtlas;->a:J

    sget-boolean v3, Lorg/ITsMagic/Atlas/XAtlas;->k:Z

    iget v4, v15, Lorg/ITsMagic/Atlas/XAtlas;->g:I

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v20, v9

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v21, v11

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p11

    move-object/from16 v17, p0

    invoke-static/range {v1 .. v17}, Lorg/ITsMagic/Atlas/XAtlas;->nativeGenerate(JZIFFFFFFFIIZZFLorg/ITsMagic/Atlas/XAtlas;)Z

    move-object/from16 v1, p0

    if-eqz p14, :cond_a

    iget-wide v2, v1, Lorg/ITsMagic/Atlas/XAtlas;->a:J

    invoke-static {v2, v3}, Lorg/ITsMagic/Atlas/XAtlas;->nativeAtlasCount(J)I

    move-result v0

    const/16 v2, 0xf81

    const/4 v3, 0x5

    const/4 v4, 0x2

    const/16 v5, 0x80

    if-nez v18, :cond_9

    const/4 v6, 0x1

    if-ne v0, v6, :cond_8

    if-nez v19, :cond_a

    iget-wide v2, v1, Lorg/ITsMagic/Atlas/XAtlas;->a:J

    invoke-static {v2, v3}, Lorg/ITsMagic/Atlas/XAtlas;->nativeGetFirstAtlasUtilization(J)F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v2

    const/high16 v2, 0x45800000    # 4096.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    const/16 v7, 0x1000

    invoke-static {v5, v0, v7}, Lgd/b;->F(III)I

    move-result v0

    iput v0, v1, Lorg/ITsMagic/Atlas/XAtlas;->g:I

    iget-wide v2, v1, Lorg/ITsMagic/Atlas/XAtlas;->a:J

    invoke-static {v2, v3}, Lorg/ITsMagic/Atlas/XAtlas;->nativeDeleteBuffer(J)V

    move-object/from16 v14, p15

    move-object v15, v1

    move v10, v6

    move/from16 v18, v10

    :goto_8
    move v12, v7

    move-object/from16 v9, v20

    move/from16 v11, v21

    const/4 v13, 0x0

    goto/16 :goto_2

    :cond_8
    const/16 v7, 0x1000

    if-lt v0, v4, :cond_a

    if-gt v0, v3, :cond_a

    iget v0, v1, Lorg/ITsMagic/Atlas/XAtlas;->g:I

    if-ge v0, v2, :cond_a

    add-int/lit16 v0, v0, 0x80

    invoke-static {v5, v0, v7}, Lgd/b;->F(III)I

    move-result v0

    iput v0, v1, Lorg/ITsMagic/Atlas/XAtlas;->g:I

    iget-wide v2, v1, Lorg/ITsMagic/Atlas/XAtlas;->a:J

    invoke-static {v2, v3}, Lorg/ITsMagic/Atlas/XAtlas;->nativeDeleteBuffer(J)V

    :goto_9
    move-object/from16 v14, p15

    move-object v15, v1

    move v10, v6

    move/from16 v19, v10

    goto :goto_8

    :cond_9
    const/4 v6, 0x1

    const/16 v7, 0x1000

    if-lt v0, v4, :cond_a

    if-gt v0, v3, :cond_a

    iget v0, v1, Lorg/ITsMagic/Atlas/XAtlas;->g:I

    if-ge v0, v2, :cond_a

    add-int/lit16 v0, v0, 0x80

    invoke-static {v5, v0, v7}, Lgd/b;->F(III)I

    move-result v0

    iput v0, v1, Lorg/ITsMagic/Atlas/XAtlas;->g:I

    iget-wide v2, v1, Lorg/ITsMagic/Atlas/XAtlas;->a:J

    invoke-static {v2, v3}, Lorg/ITsMagic/Atlas/XAtlas;->nativeDeleteBuffer(J)V

    goto :goto_9

    :cond_a
    iget-wide v2, v1, Lorg/ITsMagic/Atlas/XAtlas;->a:J

    invoke-static {v2, v3}, Lorg/ITsMagic/Atlas/XAtlas;->nativeAtlasCount(J)I

    move-result v2

    iget-wide v3, v1, Lorg/ITsMagic/Atlas/XAtlas;->a:J

    invoke-static {v3, v4}, Lorg/ITsMagic/Atlas/XAtlas;->nativeAtlasWidth(J)I

    move-result v3

    iget-wide v4, v1, Lorg/ITsMagic/Atlas/XAtlas;->a:J

    invoke-static {v4, v5}, Lorg/ITsMagic/Atlas/XAtlas;->nativeAtlasHeight(J)I

    move-result v4

    move/from16 v5, v21

    move v11, v5

    :goto_a
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_c

    iget-object v0, v1, Lorg/ITsMagic/Atlas/XAtlas;->b:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ITsMagic/Atlas/XAtlas$b;

    move/from16 v0, v21

    :goto_b
    if-ge v0, v2, :cond_b

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_c
    const v6, 0x3f59999a    # 0.85f

    move-object/from16 v7, p15

    invoke-virtual {v1, v7, v6}, Lorg/ITsMagic/Atlas/XAtlas;->c(Lorg/ITsMagic/Atlas/XAtlas$a;F)V

    new-instance v8, LUb/f;

    invoke-direct {v8}, LUb/f;-><init>()V

    iget-object v0, v1, Lorg/ITsMagic/Atlas/XAtlas;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move/from16 v11, v21

    :goto_c
    if-ge v11, v2, :cond_d

    iget-object v0, v1, Lorg/ITsMagic/Atlas/XAtlas;->c:Ljava/util/List;

    new-instance v9, Lmh/k;

    invoke-direct {v9}, Lmh/k;-><init>()V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    :cond_d
    new-instance v9, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    new-instance v10, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    move/from16 v0, v21

    move v11, v0

    :goto_d
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_14

    iget-object v12, v1, Lorg/ITsMagic/Atlas/XAtlas;->b:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/ITsMagic/Atlas/XAtlas$b;

    invoke-static {v12}, Lorg/ITsMagic/Atlas/XAtlas$b;->b(Lorg/ITsMagic/Atlas/XAtlas$b;)[F

    move-result-object v14

    invoke-virtual {v8, v14}, LUb/f;->L0([F)V

    invoke-static {v12}, Lorg/ITsMagic/Atlas/XAtlas$b;->a(Lorg/ITsMagic/Atlas/XAtlas$b;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v14

    move v15, v0

    move/from16 v6, v21

    :goto_e
    if-ge v6, v2, :cond_13

    iget-object v0, v1, Lorg/ITsMagic/Atlas/XAtlas;->c:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lmh/k;

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    iget-wide v12, v1, Lorg/ITsMagic/Atlas/XAtlas;->a:J

    invoke-static {v12, v13, v11}, Lorg/ITsMagic/Atlas/XAtlas;->nativeGetMeshVerticeCount(JI)J

    move-result-wide v12

    long-to-int v12, v12

    move/from16 p13, v4

    move/from16 p14, v5

    iget-wide v4, v1, Lorg/ITsMagic/Atlas/XAtlas;->a:J

    invoke-static {v4, v5, v11}, Lorg/ITsMagic/Atlas/XAtlas;->nativeGetMeshIndiceCount(JI)J

    move-result-wide v4

    long-to-int v0, v4

    new-instance v4, LOc/q;

    invoke-direct {v4, v12}, LOc/q;-><init>(I)V

    new-instance v5, LOc/q;

    invoke-direct {v5, v12}, LOc/q;-><init>(I)V

    new-instance v13, LOc/p;

    invoke-direct {v13, v12}, LOc/p;-><init>(I)V

    move/from16 v16, v2

    new-instance v2, LOc/p;

    invoke-direct {v2, v12}, LOc/p;-><init>(I)V

    new-instance v7, LOc/n;

    move/from16 v17, v15

    new-instance v15, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-direct {v15, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    invoke-direct {v7, v15}, LOc/n;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    new-instance v15, Lmh/g;

    invoke-direct {v15}, Lmh/g;-><init>()V

    invoke-virtual {v15, v4}, Lmh/g;->o(LOc/q;)V

    invoke-virtual {v15, v5}, Lmh/g;->l(LOc/q;)V

    invoke-virtual {v15, v13}, Lmh/g;->k(LOc/p;)V

    invoke-virtual {v15, v2}, Lmh/g;->m(LOc/p;)V

    invoke-virtual {v15, v7}, Lmh/g;->n(LOc/n;)V

    move-object/from16 v18, v15

    move/from16 v15, v21

    :goto_f
    if-ge v15, v12, :cond_10

    move-object/from16 v22, v7

    move-object/from16 v19, v8

    iget-wide v7, v1, Lorg/ITsMagic/Atlas/XAtlas;->a:J

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    int-to-long v9, v15

    invoke-static {v7, v8, v11, v9, v10}, Lorg/ITsMagic/Atlas/XAtlas;->nativeGetMeshVertexAtlasIndex(JIJ)J

    move-result-wide v7

    long-to-int v0, v7

    if-eq v0, v6, :cond_f

    const/4 v7, 0x0

    invoke-virtual {v4, v15, v7, v7, v7}, LOc/q;->A(IFFF)V

    invoke-virtual {v5, v15, v7, v7, v7}, LOc/q;->A(IFFF)V

    invoke-virtual {v2, v15, v7, v7}, LOc/p;->r(IFF)V

    invoke-virtual {v13, v15, v7, v7}, LOc/p;->r(IFF)V

    :cond_e
    move-object v7, v5

    move-object/from16 v8, v23

    move/from16 v5, p13

    move/from16 v23, v12

    move-object/from16 v12, v19

    move-object/from16 v19, v4

    move-object/from16 v4, v24

    goto/16 :goto_13

    :cond_f
    iget-wide v7, v1, Lorg/ITsMagic/Atlas/XAtlas;->a:J

    invoke-static {v7, v8, v11, v9, v10}, Lorg/ITsMagic/Atlas/XAtlas;->nativeGetMeshVertexXRefFromVertice(JIJ)J

    move-result-wide v7

    long-to-int v7, v7

    if-ltz v7, :cond_e

    move-object/from16 v8, v23

    invoke-virtual {v14, v7, v8}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->o1(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move/from16 v23, v12

    move-object/from16 v12, v19

    invoke-virtual {v12, v8, v8}, LUb/f;->B0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {v4, v15, v8}, LOc/q;->C(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    move-object/from16 v19, v4

    move-object/from16 v25, v5

    iget-wide v4, v1, Lorg/ITsMagic/Atlas/XAtlas;->a:J

    move/from16 v26, v7

    move-object/from16 v27, v8

    int-to-long v7, v6

    const/4 v0, 0x0

    move-wide/from16 p1, v4

    move/from16 p3, v11

    move-wide/from16 p4, v9

    move/from16 p6, v0

    move-wide/from16 p7, v7

    invoke-static/range {p1 .. p8}, Lorg/ITsMagic/Atlas/XAtlas;->nativeGetMeshUVFromVertice(JIJIJ)F

    move-result v0

    int-to-float v4, v3

    div-float/2addr v0, v4

    iget-wide v4, v1, Lorg/ITsMagic/Atlas/XAtlas;->a:J

    const/16 v28, 0x1

    move-wide/from16 p1, v4

    move/from16 p6, v28

    invoke-static/range {p1 .. p8}, Lorg/ITsMagic/Atlas/XAtlas;->nativeGetMeshUVFromVertice(JIJIJ)F

    move-result v4

    move/from16 v5, p13

    int-to-float v7, v5

    div-float/2addr v4, v7

    invoke-virtual {v13, v15, v0, v4}, LOc/p;->r(IFF)V

    move-object/from16 v4, v24

    move/from16 v7, v26

    :try_start_1
    invoke-virtual {v14, v7, v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->h1(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v2, v15, v4}, LOc/p;->s(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_10
    move-object/from16 v8, v27

    goto :goto_11

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_10

    :goto_11
    :try_start_2
    invoke-virtual {v14, v7, v8}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->G0(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v12, v8, v8}, LUb/f;->s0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->E1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v7, v25

    :try_start_3
    invoke-virtual {v7, v15, v8}, LOc/q;->C(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_13

    :catch_2
    move-exception v0

    goto :goto_12

    :catch_3
    move-exception v0

    move-object/from16 v7, v25

    :goto_12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_13
    add-int/lit8 v15, v15, 0x1

    move-object v10, v4

    move/from16 p13, v5

    move-object v5, v7

    move-object v9, v8

    move-object v8, v12

    move-object/from16 v4, v19

    move-object/from16 v7, v22

    move/from16 v12, v23

    goto/16 :goto_f

    :cond_10
    move/from16 v5, p13

    move-object/from16 v22, v7

    move-object v12, v8

    move-object v8, v9

    move-object v4, v10

    move/from16 v0, v21

    :goto_14
    invoke-virtual/range {v22 .. v22}, LOc/n;->b()I

    move-result v2

    if-ge v0, v2, :cond_11

    iget-wide v9, v1, Lorg/ITsMagic/Atlas/XAtlas;->a:J

    mul-int/lit8 v2, v0, 0x3

    invoke-static {v9, v10, v11, v2}, Lorg/ITsMagic/Atlas/XAtlas;->nativeGetMeshVertexIndice(JII)I

    move-result v7

    iget-wide v9, v1, Lorg/ITsMagic/Atlas/XAtlas;->a:J

    add-int/lit8 v13, v2, 0x1

    invoke-static {v9, v10, v11, v13}, Lorg/ITsMagic/Atlas/XAtlas;->nativeGetMeshVertexIndice(JII)I

    move-result v9

    move/from16 p1, v3

    move-object/from16 v24, v4

    iget-wide v3, v1, Lorg/ITsMagic/Atlas/XAtlas;->a:J

    add-int/lit8 v10, v2, 0x2

    invoke-static {v3, v4, v11, v10}, Lorg/ITsMagic/Atlas/XAtlas;->nativeGetMeshVertexIndice(JII)I

    move-result v3

    invoke-virtual/range {v22 .. v22}, LOc/n;->g()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v4

    invoke-virtual {v4, v2, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->l0(II)V

    invoke-virtual/range {v22 .. v22}, LOc/n;->g()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v2

    invoke-virtual {v2, v13, v9}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->l0(II)V

    invoke-virtual/range {v22 .. v22}, LOc/n;->g()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v2

    invoke-virtual {v2, v10, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->l0(II)V

    add-int/lit8 v0, v0, 0x1

    move/from16 v3, p1

    move-object/from16 v4, v24

    goto :goto_14

    :cond_11
    move/from16 p1, v3

    move-object/from16 v24, v4

    new-instance v0, Lmh/h;

    invoke-static/range {p11 .. p11}, Lorg/ITsMagic/Atlas/XAtlas$b;->a(Lorg/ITsMagic/Atlas/XAtlas$b;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v2

    invoke-static/range {p11 .. p11}, Lorg/ITsMagic/Atlas/XAtlas$b;->b(Lorg/ITsMagic/Atlas/XAtlas$b;)[F

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lmh/h;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;[F)V

    invoke-virtual/range {p11 .. p11}, Lorg/ITsMagic/Atlas/XAtlas$b;->c()Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmh/h;->f(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    move-object/from16 v2, v18

    invoke-virtual {v0, v2}, Lmh/h;->e(Lmh/g;)V

    move-object/from16 v2, p12

    invoke-virtual {v2, v0}, Lmh/k;->a(Lmh/h;)V

    add-int/lit8 v15, v17, 0x1

    if-lez p14, :cond_12

    int-to-float v0, v15

    move/from16 v2, p14

    int-to-float v3, v2

    div-float/2addr v0, v3

    const v3, 0x3f59999a    # 0.85f

    const v4, 0x3f7d70a4    # 0.99f

    invoke-virtual {v1, v3, v4, v0}, Lorg/ITsMagic/Atlas/XAtlas;->l(FFF)F

    move-result v0

    move-object/from16 v4, p15

    invoke-virtual {v1, v4, v0}, Lorg/ITsMagic/Atlas/XAtlas;->c(Lorg/ITsMagic/Atlas/XAtlas$a;F)V

    goto :goto_15

    :cond_12
    move/from16 v2, p14

    move-object/from16 v4, p15

    const v3, 0x3f59999a    # 0.85f

    :goto_15
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, p1

    move-object v7, v4

    move v4, v5

    move-object v9, v8

    move-object v8, v12

    move-object/from16 v10, v24

    move-object/from16 v12, p11

    move v5, v2

    move/from16 v2, v16

    goto/16 :goto_e

    :cond_13
    move/from16 v16, v2

    move/from16 p1, v3

    move v2, v5

    move-object v12, v8

    move-object v8, v9

    move-object/from16 v24, v10

    move/from16 v17, v15

    const v3, 0x3f59999a    # 0.85f

    move v5, v4

    move-object v4, v7

    add-int/lit8 v11, v11, 0x1

    move v6, v3

    move v4, v5

    move-object v8, v12

    move/from16 v0, v17

    move/from16 v3, p1

    move v5, v2

    move/from16 v2, v16

    goto/16 :goto_d

    :cond_14
    move-object v4, v7

    iget-wide v2, v1, Lorg/ITsMagic/Atlas/XAtlas;->a:J

    invoke-static {v2, v3}, Lorg/ITsMagic/Atlas/XAtlas;->nativeDeleteBuffer(J)V

    const v2, 0x3f7d70a4    # 0.99f

    invoke-virtual {v1, v4, v2}, Lorg/ITsMagic/Atlas/XAtlas;->c(Lorg/ITsMagic/Atlas/XAtlas$a;F)V

    move/from16 v11, v21

    :goto_16
    iget-object v0, v1, Lorg/ITsMagic/Atlas/XAtlas;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-ge v11, v0, :cond_15

    iget-object v0, v1, Lorg/ITsMagic/Atlas/XAtlas;->c:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmh/k;

    invoke-virtual {v0}, Lmh/k;->b()V

    add-int/lit8 v11, v11, 0x1

    int-to-float v0, v11

    iget-object v3, v1, Lorg/ITsMagic/Atlas/XAtlas;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    const v3, 0x3f7d70a4    # 0.99f

    invoke-virtual {v1, v3, v2, v0}, Lorg/ITsMagic/Atlas/XAtlas;->l(FFF)F

    move-result v0

    invoke-virtual {v1, v4, v0}, Lorg/ITsMagic/Atlas/XAtlas;->c(Lorg/ITsMagic/Atlas/XAtlas$a;F)V

    goto :goto_16

    :cond_15
    iget-object v0, v1, Lorg/ITsMagic/Atlas/XAtlas;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v1, v4, v2}, Lorg/ITsMagic/Atlas/XAtlas;->c(Lorg/ITsMagic/Atlas/XAtlas$a;F)V

    :cond_16
    return-void
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmh/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ITsMagic/Atlas/XAtlas;->c:Ljava/util/List;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lorg/ITsMagic/Atlas/XAtlas;->g:I

    return v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lorg/ITsMagic/Atlas/XAtlas;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final i(II)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "category",
            "progress"
        }
    .end annotation

    int-to-float p2, p2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p2, v0

    const/high16 v0, 0x40400000    # 3.0f

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    return p2

    :cond_0
    const/high16 p1, 0x40000000    # 2.0f

    :goto_0
    add-float/2addr p2, p1

    div-float/2addr p2, v0

    return p2

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    div-float/2addr p2, v0

    return p2

    :cond_3
    div-float/2addr p2, v0

    return p2
.end method

.method public final declared-synchronized j(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "category",
            "progress"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/ITsMagic/Atlas/XAtlas;->h:Lorg/ITsMagic/Atlas/XAtlas$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/16 v2, 0x64

    :try_start_1
    invoke-static {v1, p2, v2}, Lgd/b;->F(III)I

    move-result p2

    iget v1, p0, Lorg/ITsMagic/Atlas/XAtlas;->i:I

    if-ne v1, p1, :cond_1

    iget v1, p0, Lorg/ITsMagic/Atlas/XAtlas;->j:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, p2, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_2
    iput p1, p0, Lorg/ITsMagic/Atlas/XAtlas;->i:I

    iput p2, p0, Lorg/ITsMagic/Atlas/XAtlas;->j:I

    invoke-virtual {p0, p1, p2}, Lorg/ITsMagic/Atlas/XAtlas;->i(II)F

    move-result p1

    const p2, 0x3dcccccd    # 0.1f

    const v1, 0x3f59999a    # 0.85f

    invoke-virtual {p0, p2, v1, p1}, Lorg/ITsMagic/Atlas/XAtlas;->l(FFF)F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/ITsMagic/Atlas/XAtlas;->c(Lorg/ITsMagic/Atlas/XAtlas$a;F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized k(Lorg/ITsMagic/Atlas/XAtlas$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/ITsMagic/Atlas/XAtlas;->h:Lorg/ITsMagic/Atlas/XAtlas$a;

    const/high16 p1, -0x80000000

    iput p1, p0, Lorg/ITsMagic/Atlas/XAtlas;->i:I

    const/4 p1, -0x1

    iput p1, p0, Lorg/ITsMagic/Atlas/XAtlas;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final l(FFF)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "phaseStart",
            "phaseEnd",
            "progress"
        }
    .end annotation

    sub-float/2addr p2, p1

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p3, v1}, Lgd/b;->E(FFF)F

    move-result p3

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    return p1
.end method

.method public final m(LPc/a;IILjava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "steps",
            "minimal",
            "id"
        }
    .end annotation

    invoke-virtual {p1}, LPc/a;->h()I

    move-result v0

    const-string v1, "Mesh ignored "

    if-lt v0, p3, :cond_2

    invoke-virtual {p1}, LPc/a;->h()I

    move-result p3

    rem-int/2addr p3, p2

    if-nez p3, :cond_1

    invoke-virtual {p1}, LPc/a;->w()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " buffer is not native"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " buffer is not a divisor of "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " buffer < "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
