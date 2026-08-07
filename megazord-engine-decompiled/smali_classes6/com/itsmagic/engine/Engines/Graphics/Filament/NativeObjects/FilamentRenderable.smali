.class public Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;
.super Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;
.source "SourceFile"


# annotations
.annotation runtime Lbd/p;
.end annotation


# static fields
.field public static final DESTROYER:Lea/b;

.field private static final concreteEntityReferences:Ljava/util/Map;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lkc/c;",
            ">;"
        }
    .end annotation
.end field

.field private static final concreteIBReferences:Ljava/util/Map;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lkc/d;",
            ">;"
        }
    .end annotation
.end field

.field private static final concreteMaterialReferences:Ljava/util/Map;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;",
            ">;"
        }
    .end annotation
.end field

.field private static final concreteSkinningBReferences:Ljava/util/Map;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final concreteVBReferences:Ljava/util/Map;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activeLayerSelect:I

.field private activeLayerValue:I

.field private boundingBox:Lcom/google/android/filament/Box;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private destroyied:Z

.field private final entity:Lkc/c;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private hasGeometry:Z

.field private indexBuffer:Lkc/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private material:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private pendingLayerApply:Z

.field private final renderingLayers:[Z

.field private skinningBuffer:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private vertexBuffer:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable$a;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->DESTROYER:Lea/b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteMaterialReferences:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteEntityReferences:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteVBReferences:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteIBReferences:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteSkinningBReferences:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Lkc/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;Lkc/d;Lcom/google/android/filament/RenderableManager$b;ILcom/google/android/filament/Box;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "builder",
            "filamentMaterial",
            "filamentEntity",
            "vertexBuffer",
            "indexBuffer",
            "type",
            "boneCount",
            "bounding"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->hasGeometry:Z

    .line 4
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyied:Z

    const/16 v1, 0x8

    .line 5
    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->renderingLayers:[Z

    const/4 v2, 0x1

    .line 6
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([ZZ)V

    .line 7
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->pendingLayerApply:Z

    const/16 v1, 0xff

    .line 8
    iput v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerValue:I

    .line 9
    iput v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerSelect:I

    .line 10
    invoke-static {}, Ljc/a;->d()V

    .line 11
    invoke-static {}, Lc9/a;->F()V

    if-eqz p4, :cond_8

    if-eqz p5, :cond_7

    .line 12
    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/filament/Engine;->e0()Lcom/google/android/filament/RenderableManager;

    move-result-object v1

    .line 13
    invoke-virtual {p3}, Lkc/c;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/filament/RenderableManager;->R(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 14
    invoke-static {}, Ljc/a;->d()V

    .line 15
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->material:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    .line 16
    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->entity:Lkc/c;

    .line 17
    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->vertexBuffer:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    .line 18
    iput-object p5, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->indexBuffer:Lkc/d;

    .line 19
    iput-object p8, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->boundingBox:Lcom/google/android/filament/Box;

    .line 20
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->y()Lcom/google/android/filament/MaterialInstance;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/filament/RenderableManager$a;->q(ILcom/google/android/filament/MaterialInstance;)Lcom/google/android/filament/RenderableManager$a;

    .line 21
    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->r()Lcom/google/android/filament/VertexBuffer;

    move-result-object v1

    invoke-virtual {p5}, Lkc/d;->r()Lcom/google/android/filament/IndexBuffer;

    move-result-object v3

    invoke-virtual {p1, v0, p6, v1, v3}, Lcom/google/android/filament/RenderableManager$a;->i(ILcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/VertexBuffer;Lcom/google/android/filament/IndexBuffer;)Lcom/google/android/filament/RenderableManager$a;

    .line 22
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->hasGeometry:Z

    if-lez p7, :cond_1

    const/16 p6, 0x100

    if-gt p7, p6, :cond_0

    .line 23
    invoke-virtual {p1, v2}, Lcom/google/android/filament/RenderableManager$a;->g(Z)Lcom/google/android/filament/RenderableManager$a;

    .line 24
    new-instance p6, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;

    invoke-direct {p6, p7}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;-><init>(I)V

    iput-object p6, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->skinningBuffer:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;

    .line 25
    invoke-virtual {p6}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;->r()Lcom/google/android/filament/SkinningBuffer;

    move-result-object p6

    invoke-virtual {p1, p6, p7, v0}, Lcom/google/android/filament/RenderableManager$a;->z(Lcom/google/android/filament/SkinningBuffer;II)Lcom/google/android/filament/RenderableManager$a;

    goto :goto_0

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Can`t be more than 256 bones"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p8, :cond_4

    move p6, v0

    .line 27
    :goto_1
    invoke-virtual {p8}, Lcom/google/android/filament/Box;->b()[F

    move-result-object p7

    array-length p7, p7

    if-ge p6, p7, :cond_3

    .line 28
    invoke-virtual {p8}, Lcom/google/android/filament/Box;->b()[F

    move-result-object p7

    aget p7, p7, p6

    const/4 v1, 0x0

    cmpl-float p7, p7, v1

    if-eqz p7, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr p6, v2

    goto :goto_1

    :cond_3
    const/high16 p6, 0x3f800000    # 1.0f

    .line 29
    invoke-virtual {p8, p6, p6, p6}, Lcom/google/android/filament/Box;->d(FFF)V

    .line 30
    :goto_2
    invoke-virtual {p1, p8}, Lcom/google/android/filament/RenderableManager$a;->b(Lcom/google/android/filament/Box;)Lcom/google/android/filament/RenderableManager$a;

    .line 31
    invoke-virtual {p1, v2}, Lcom/google/android/filament/RenderableManager$a;->f(Z)Lcom/google/android/filament/RenderableManager$a;

    goto :goto_3

    .line 32
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/filament/RenderableManager$a;->f(Z)Lcom/google/android/filament/RenderableManager$a;

    .line 33
    :goto_3
    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object p6

    invoke-virtual {p3}, Lkc/c;->getId()I

    move-result p7

    invoke-virtual {p1, p6, p7}, Lcom/google/android/filament/RenderableManager$a;->c(Lcom/google/android/filament/Engine;I)V

    .line 34
    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->e0()Lcom/google/android/filament/RenderableManager;

    move-result-object p1

    .line 35
    invoke-virtual {p3}, Lkc/c;->getId()I

    move-result p6

    invoke-virtual {p1, p6}, Lcom/google/android/filament/RenderableManager;->J(I)I

    .line 36
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->applyLayers()V

    .line 37
    new-instance p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable$b;

    const-class p6, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    invoke-direct {p1, p0, p6, p4}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable$b;-><init>(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;Ljava/lang/Class;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;)V

    new-instance p6, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable$c;

    const-class p7, Lkc/d;

    invoke-direct {p6, p0, p7, p5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable$c;-><init>(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;Ljava/lang/Class;Lkc/d;)V

    const/4 p7, 0x2

    new-array p7, p7, [Lea/a;

    aput-object p1, p7, v0

    aput-object p6, p7, v2

    invoke-super {p0, p7}, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;->setDestroyListeners([Lea/a;)V

    .line 38
    invoke-virtual {p3}, Lkc/c;->getId()I

    move-result p1

    int-to-long p6, p1

    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->DESTROYER:Lea/b;

    invoke-static {p0, p6, p7, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLea/b;Z)V

    .line 39
    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteMaterialReferences:Ljava/util/Map;

    invoke-virtual {p3}, Lkc/c;->getId()I

    move-result p6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-interface {p1, p6, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteEntityReferences:Ljava/util/Map;

    invoke-virtual {p3}, Lkc/c;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteVBReferences:Ljava/util/Map;

    invoke-virtual {p3}, Lkc/c;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteIBReferences:Ljava/util/Map;

    invoke-virtual {p3}, Lkc/c;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->skinningBuffer:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;

    if-eqz p1, :cond_5

    .line 44
    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteSkinningBReferences:Ljava/util/Map;

    invoke-virtual {p3}, Lkc/c;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->skinningBuffer:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void

    .line 45
    :cond_6
    new-instance p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;

    const-string p2, "Entity already have renderable"

    invoke-direct {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "indexBuffer can`t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "vertexBuffer can`t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Lkc/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;Lkc/d;Lcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/Box;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "builder",
            "filamentMaterial",
            "filamentEntity",
            "vertexBuffer",
            "indexBuffer",
            "type",
            "bounding"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    .line 1
    invoke-direct/range {v0 .. v8}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;-><init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Lkc/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;Lkc/d;Lcom/google/android/filament/RenderableManager$b;ILcom/google/android/filament/Box;)V

    return-void
.end method

.method public static synthetic access$000()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteMaterialReferences:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic access$100()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteEntityReferences:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic access$200()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteVBReferences:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic access$300()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteIBReferences:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic access$400()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteSkinningBReferences:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic access$500(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyied:Z

    return p0
.end method

.method private buildLayerData()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->renderingLayers:[Z

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v0, v3, :cond_1

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    shl-int v2, v4, v0

    or-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerValue:I

    const/16 v2, 0xff

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerSelect:I

    if-eq v0, v2, :cond_3

    :cond_2
    iput-boolean v4, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->pendingLayerApply:Z

    :cond_3
    iput v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerSelect:I

    iput v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerValue:I

    return-void
.end method

.method public static isUsed(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filamentMaterial"
        }
    .end annotation

    .line 7
    invoke-static {}, Ljc/a;->d()V

    .line 8
    invoke-static {}, Lc9/a;->F()V

    .line 9
    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteMaterialReferences:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isUsed(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "skinningBuffer"
        }
    .end annotation

    .line 13
    invoke-static {}, Ljc/a;->d()V

    .line 14
    invoke-static {}, Lc9/a;->F()V

    .line 15
    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteSkinningBReferences:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isUsed(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertexBuffer"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljc/a;->d()V

    .line 2
    invoke-static {}, Lc9/a;->F()V

    .line 3
    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteVBReferences:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isUsed(Lkc/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filamentEntity"
        }
    .end annotation

    .line 10
    invoke-static {}, Ljc/a;->d()V

    .line 11
    invoke-static {}, Lc9/a;->F()V

    .line 12
    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteEntityReferences:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isUsed(Lkc/d;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indexBuffer"
        }
    .end annotation

    .line 4
    invoke-static {}, Ljc/a;->d()V

    .line 5
    invoke-static {}, Lc9/a;->F()V

    .line 6
    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteIBReferences:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public applyLayers()V
    .locals 4

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->pendingLayerApply:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->pendingLayerApply:Z

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->e0()Lcom/google/android/filament/RenderableManager;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->entity:Lkc/c;

    invoke-virtual {v1}, Lkc/c;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/RenderableManager;->J(I)I

    move-result v1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerSelect:I

    iget v3, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerValue:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/filament/RenderableManager;->i0(III)V

    return-void
.end method

.method public destroyImmediate()V
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyied:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyied:Z

    invoke-static {}, Ljc/a;->d()V

    invoke-static {}, Lc9/a;->F()V

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->destroyImmediate(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public getSkinningBuffer()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyied:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->skinningBuffer:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public hasGeometry()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->hasGeometry:Z

    return v0
.end method

.method public hideFromAllLayers()V
    .locals 3

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyied:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->renderingLayers:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerValue:I

    const/16 v2, 0xff

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerSelect:I

    if-eq v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->pendingLayerApply:Z

    :cond_1
    iput v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerValue:I

    iput v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerSelect:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->applyLayers()V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public hideFromAllLayersButNoApply()Z
    .locals 3

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyied:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->renderingLayers:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerValue:I

    const/16 v2, 0xff

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerSelect:I

    if-eq v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->pendingLayerApply:Z

    :cond_1
    iput v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerValue:I

    iput v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerSelect:I

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->pendingLayerApply:Z

    return v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public isDestroyied()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyied:Z

    return v0
.end method

.method public removeGeometryAt(I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "primitiveIndex"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyied:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    invoke-static {}, Ljc/a;->d()V

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->e0()Lcom/google/android/filament/RenderableManager;

    move-result-object v1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->entity:Lkc/c;

    invoke-virtual {v0}, Lkc/c;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/filament/RenderableManager;->J(I)I

    move-result v2

    sget-object v4, Lcom/google/android/filament/RenderableManager$b;->TRIANGLES:Lcom/google/android/filament/RenderableManager$b;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->Q:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->m1()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->r()Lcom/google/android/filament/VertexBuffer;

    move-result-object v5

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->u0()Lkc/d;

    move-result-object v3

    invoke-virtual {v3}, Lkc/d;->r()Lcom/google/android/filament/IndexBuffer;

    move-result-object v6

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/filament/RenderableManager;->f0(IILcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/VertexBuffer;Lcom/google/android/filament/IndexBuffer;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->m1()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->vertexBuffer:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->u0()Lkc/d;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->indexBuffer:Lkc/d;

    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteVBReferences:Ljava/util/Map;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->entity:Lkc/c;

    invoke-virtual {v0}, Lkc/c;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->vertexBuffer:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteIBReferences:Ljava/util/Map;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->entity:Lkc/c;

    invoke-virtual {v0}, Lkc/c;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->indexBuffer:Lkc/d;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->hasGeometry:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Please code concrete material list, we need to reference materials per primitive"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public removeMaterialInstanceAt(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "primitiveIndex"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyied:Z

    if-nez v0, :cond_1

    invoke-static {}, Ljc/a;->d()V

    if-nez p1, :cond_0

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->e0()Lcom/google/android/filament/RenderableManager;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->entity:Lkc/c;

    invoke-virtual {v1}, Lkc/c;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/RenderableManager;->J(I)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->C(II)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->material:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteMaterialReferences:Ljava/util/Map;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->entity:Lkc/c;

    invoke-virtual {v1}, Lkc/c;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Please code concrete material list, we need to reference materials per primitive"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public setAllLayersOffExceptFor(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layerID"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyied:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->renderingLayers:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->renderingLayers:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->buildLayerData()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->applyLayers()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public setBlendOrderAt(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "select",
            "blendOrder"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyied:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljc/a;->d()V

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->e0()Lcom/google/android/filament/RenderableManager;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->entity:Lkc/c;

    invoke-virtual {v1}, Lkc/c;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/RenderableManager;->J(I)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/filament/RenderableManager;->Y(III)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public setBounding(Lcom/google/android/filament/Box;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounding"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/filament/Box;->b()[F

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/filament/Box;->b()[F

    move-result-object v2

    aget v2, v2, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/filament/Box;->a()[F

    move-result-object p1

    new-instance v8, Lcom/google/android/filament/Box;

    aget v2, p1, v0

    const/4 v0, 0x1

    aget v3, p1, v0

    const/4 v0, 0x2

    aget v4, p1, v0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/filament/Box;-><init>(FFFFFF)V

    move-object p1, v8

    :goto_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->boundingBox:Lcom/google/android/filament/Box;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->boundingBox:Lcom/google/android/filament/Box;

    :try_start_0
    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/filament/Engine;->e0()Lcom/google/android/filament/RenderableManager;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->entity:Lkc/c;

    invoke-virtual {v2}, Lkc/c;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/filament/RenderableManager;->J(I)I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/google/android/filament/RenderableManager;->X(ILcom/google/android/filament/Box;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->boundingBox:Lcom/google/android/filament/Box;

    throw p1
.end method

.method public setGeometryAt(ILcom/google/android/filament/RenderableManager$b;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;Lkc/d;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "primitiveIndex",
            "type",
            "vertexBuffer",
            "indexBuffer"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyied:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    invoke-static {}, Ljc/a;->d()V

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->e0()Lcom/google/android/filament/RenderableManager;

    move-result-object v1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->entity:Lkc/c;

    invoke-virtual {v0}, Lkc/c;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/filament/RenderableManager;->J(I)I

    move-result v2

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->r()Lcom/google/android/filament/VertexBuffer;

    move-result-object v5

    invoke-virtual {p4}, Lkc/d;->r()Lcom/google/android/filament/IndexBuffer;

    move-result-object v6

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/filament/RenderableManager;->f0(IILcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/VertexBuffer;Lcom/google/android/filament/IndexBuffer;)V

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->vertexBuffer:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->indexBuffer:Lkc/d;

    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteVBReferences:Ljava/util/Map;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->entity:Lkc/c;

    invoke-virtual {p2}, Lkc/c;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteIBReferences:Ljava/util/Map;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->entity:Lkc/c;

    invoke-virtual {p2}, Lkc/c;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->hasGeometry:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Please code concrete material list, we need to reference materials per primitive"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public setGlobalBlendOrderEnabledAt(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "b"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyied:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljc/a;->d()V

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->e0()Lcom/google/android/filament/RenderableManager;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->entity:Lkc/c;

    invoke-virtual {v1}, Lkc/c;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/RenderableManager;->J(I)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/filament/RenderableManager;->h0(IIZ)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public setLayerEnabled(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layerID",
            "enable"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyied:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->renderingLayers:[Z

    aput-boolean p2, v0, p1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->buildLayerData()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->applyLayers()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public setMaterialInstanceAt(ILcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "primitiveIndex",
            "filamentMaterial"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyied:Z

    if-nez v0, :cond_1

    invoke-static {}, Ljc/a;->d()V

    if-nez p1, :cond_0

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->e0()Lcom/google/android/filament/RenderableManager;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->entity:Lkc/c;

    invoke-virtual {v1}, Lkc/c;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/RenderableManager;->J(I)I

    move-result v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->y()Lcom/google/android/filament/MaterialInstance;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/filament/RenderableManager;->k0(IILcom/google/android/filament/MaterialInstance;)V

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->material:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteMaterialReferences:Ljava/util/Map;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->entity:Lkc/c;

    invoke-virtual {v0}, Lkc/c;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Please code concrete material list, we need to reference materials per primitive"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public setPriority(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "coarse"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyied:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljc/a;->d()V

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->e0()Lcom/google/android/filament/RenderableManager;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->entity:Lkc/c;

    invoke-virtual {v1}, Lkc/c;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/RenderableManager;->J(I)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->n0(II)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public setSkinningBuffer(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "skinningBuffer"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyied:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;->getBoneCount()I

    move-result v0

    const/16 v1, 0x100

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->skinningBuffer:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;

    :try_start_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->skinningBuffer:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/filament/Engine;->e0()Lcom/google/android/filament/RenderableManager;

    move-result-object v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->entity:Lkc/c;

    invoke-virtual {v3}, Lkc/c;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/filament/RenderableManager;->J(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;->r()Lcom/google/android/filament/SkinningBuffer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/google/android/filament/RenderableManager;->q0(ILcom/google/android/filament/SkinningBuffer;II)V

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteSkinningBReferences:Ljava/util/Map;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->entity:Lkc/c;

    invoke-virtual {v2}, Lkc/c;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->skinningBuffer:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Can`t be more than 256 bones"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public showAllLayers()V
    .locals 3

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyied:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->renderingLayers:[Z

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerValue:I

    const/16 v2, 0xff

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerSelect:I

    if-eq v0, v2, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->pendingLayerApply:Z

    :cond_1
    iput v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerValue:I

    iput v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerSelect:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->applyLayers()V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public showAllLayersButNoApply()Z
    .locals 3

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyied:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->renderingLayers:[Z

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerValue:I

    const/16 v2, 0xff

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerSelect:I

    if-eq v0, v2, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->pendingLayerApply:Z

    :cond_1
    iput v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerValue:I

    iput v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerSelect:I

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->pendingLayerApply:Z

    return v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
