.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/b;


# static fields
.field public static final Q:Ljava/lang/String; = "BoundingTerrainLevel"

.field public static final R:Ljava/lang/Class;


# instance fields
.field public final E:[F

.field public final F:[F

.field public G:I

.field public H:F

.field public I:Lbc/d;

.field public J:I

.field public K:F

.field public L:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public M:LJAVARuntime/GizmoObject;

.field public N:F

.field public final O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public P:LJAVARuntime/Component;

.field public margin:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public verticalMargin:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->R:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel$a;-><init>()V

    invoke-static {v0}, Lxb/a;->b(Lxb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-string v0, "BoundingTerrainLevel"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->margin:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->verticalMargin:F

    const/16 v1, 0x10

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->E:[F

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->F:[F

    const/4 v1, -0x1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->G:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->H:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->J:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->K:F

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v1, 0xd6

    const/16 v2, 0x8a

    const/16 v3, 0xff

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->L:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method private computeBoundsSignature(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "root"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 v0, 0x20f

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->computeBoundsSignatureRecursive(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method private computeBoundsSignatureRecursive(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isHierarchyActive()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/16 v1, 0x11

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->X()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->V(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v3

    instance-of v4, v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v4

    if-eqz v4, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->o0()I

    move-result v3

    add-int/2addr v1, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v2

    if-ge v0, v2, :cond_3

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->M(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->computeBoundsSignatureRecursive(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_2
    return v0
.end method


# virtual methods
.method public allowLeveling(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;-><init>()V

    .line 3
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->margin:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->margin:F

    .line 4
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->verticalMargin:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->verticalMargin:F

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "BoundingTerrainLevel"

    return-object v0
.end method

.method public getFocusBounding()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->N:F

    return v0
.end method

.method public getFocusCenter()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f070234

    return v0
.end method

.method public getInspectorColor(Landroid/content/Context;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const p1, 0x7f0500a2

    return p1
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "LW5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, LW5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;)V

    sget-object v2, LW5/b$a;->SLFloat:LW5/b$a;

    const-string v3, "margin"

    invoke-direct {p1, v1, v3, v2}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LW5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;)V

    const-string v3, "verticalMargin"

    invoke-direct {p1, v1, v3, v2}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getMargin()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->margin:F

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "BoundingTerrainLevel"

    return-object v0
.end method

.method public getVerticalMargin()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->verticalMargin:F

    return v0
.end method

.method public getWorldY(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;FFFFLcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/b$a;)V
    .locals 1
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

    new-instance p4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p5, v0

    invoke-direct {p4, p2, p5, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->A0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p2

    new-instance p3, Lsa/c;

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->maxHeight:F

    const/high16 p5, 0x40000000    # 2.0f

    add-float/2addr p1, p5

    invoke-direct {p3, p4, p2, p1}, Lsa/c;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->I:Lbc/d;

    const/4 p2, 0x1

    const/4 p4, 0x0

    if-eqz p1, :cond_0

    sget-object p5, LJAVARuntime/Vertex$RayMode;->FarHit:LJAVARuntime/Vertex$RayMode;

    invoke-virtual {p1, p3, p5, p4}, Lbc/d;->b(Lsa/c;LJAVARuntime/Vertex$RayMode;Z)Lsa/a;

    move-result-object p1

    if-eqz p1, :cond_1

    iput-boolean p2, p6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/b$a;->b:Z

    invoke-virtual {p1}, Lsa/a;->v()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result p1

    iput p1, p6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/b$a;->a:F

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->CUBE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->I1(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    iget-object p5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->E:[F

    sget-object v0, LJAVARuntime/Vertex$RayMode;->FarHit:LJAVARuntime/Vertex$RayMode;

    invoke-virtual {p1, p5, p3, v0, p4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->O2([FLsa/c;LJAVARuntime/Vertex$RayMode;Z)Lsa/a;

    move-result-object p1

    if-eqz p1, :cond_1

    iput-boolean p2, p6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/b$a;->b:Z

    invoke-virtual {p1}, Lsa/a;->v()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result p1

    iput p1, p6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/b$a;->a:F

    :cond_1
    :goto_0
    return-void
.end method

.method public hasFocusBounding()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public onDetach()V
    .locals 4

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDetach()V

    invoke-static {}, Lj9/f;->A()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    :try_start_0
    invoke-static {v1}, Lj9/f;->z(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->requestRegenLevelTable()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public parallelUpdate()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->parallelUpdate()V

    return-void
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "isEditor"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->I:Lbc/d;

    if-nez p2, :cond_0

    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->CUBE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->I1(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->E:[F

    invoke-static {p2, v2}, Lbc/d;->d(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;[F)Lbc/d;

    move-result-object p2

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->I:Lbc/d;

    :cond_0
    const/4 p2, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz p1, :cond_2

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->G:I

    iget-object v4, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->E:[F

    invoke-virtual {v4, v5, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->L4([FI)I

    move-result v4

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->G:I

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->computeBoundsSignature(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)I

    move-result v4

    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->G:I

    if-ne v3, v5, :cond_1

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->J:I

    if-eq v4, v3, :cond_3

    :cond_1
    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->J:I

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->H:F

    invoke-static {p1, v0, v0}, Lyb/b;->u(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;ZZ)Lyb/b;

    move-result-object v3

    iget-object v4, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->C0()LUb/f;

    move-result-object v4

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    iget-object v6, v3, Lyb/b;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, v3, Lyb/b;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v5, v6, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->F:[F

    invoke-virtual {v4, v3}, LUb/f;->B([F)[F

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->u([F)Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->O()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v4

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->J()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->margin:F

    iget v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->verticalMargin:F

    invoke-virtual {v4, v5, v6, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->H2(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->margin:F

    iget v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->verticalMargin:F

    invoke-virtual {v3, v5, v6, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->D(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v6

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v7

    add-float/2addr v6, v7

    mul-float/2addr v6, v2

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v7

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v8

    add-float/2addr v7, v8

    mul-float/2addr v7, v2

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v8

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v9

    add-float/2addr v8, v9

    mul-float/2addr v8, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v7

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v8

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v3

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-direct {v6, v7, v8, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    new-instance v3, LUb/f;

    invoke-direct {v3}, LUb/f;-><init>()V

    invoke-virtual {v3, v5, v6}, LUb/f;->k1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->E:[F

    invoke-virtual {v3, v4}, LUb/f;->B([F)[F

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->e1()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    new-array v4, v1, [F

    aput v3, v4, v0

    invoke-static {v4}, Lgd/b;->T0([F)F

    move-result v3

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->N:F

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->CUBE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->I1(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->E:[F

    invoke-static {v3, v4}, Lbc/d;->d(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;[F)Lbc/d;

    move-result-object v3

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->I:Lbc/d;

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->G:I

    :cond_3
    :goto_0
    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->H:F

    cmpl-float p2, v3, p2

    if-ltz p2, :cond_5

    invoke-static {}, Lc9/d;->d()F

    move-result p2

    add-float/2addr v3, p2

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->H:F

    cmpl-float p2, v3, v2

    if-ltz p2, :cond_5

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->H:F

    invoke-static {}, Lj9/f;->A()I

    move-result p2

    :goto_1
    if-ge v0, p2, :cond_5

    :try_start_0
    invoke-static {v0}, Lj9/f;->z(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    if-eqz v3, :cond_4

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->requestRegenLevelTable()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_2
    add-int/2addr v0, v1

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->g1()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->O0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->O0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->f1()Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_6
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->M:LJAVARuntime/GizmoObject;

    if-nez p1, :cond_7

    new-instance p1, LJAVARuntime/GizmoObject;

    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->CUBE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->K1(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;LYb/a;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->C2()LJAVARuntime/Vertex;

    move-result-object p2

    invoke-direct {p1, p2}, LJAVARuntime/GizmoObject;-><init>(LJAVARuntime/Vertex;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->M:LJAVARuntime/GizmoObject;

    invoke-virtual {p1, v1}, LJAVARuntime/GizmoElement;->setEnableLight(Z)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->M:LJAVARuntime/GizmoObject;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->L:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->q0()LJAVARuntime/Color;

    move-result-object p2

    invoke-virtual {p1, p2}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->M:LJAVARuntime/GizmoObject;

    sget-object p2, LJAVARuntime/GizmoElement$RenderMode;->WireFrame:LJAVARuntime/GizmoElement$RenderMode;

    invoke-virtual {p1, p2}, LJAVARuntime/GizmoObject;->setRenderMode(LJAVARuntime/GizmoElement$RenderMode;)V

    :cond_7
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->M:LJAVARuntime/GizmoObject;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->E:[F

    invoke-virtual {p1, p2}, LJAVARuntime/GizmoTransform;->setMatrix([F)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->M:LJAVARuntime/GizmoObject;

    invoke-static {p1}, Lnc/a;->a(LJAVARuntime/GizmoElement;)V

    :cond_8
    return-void
.end method

.method public setMargin(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "margin"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->margin:F

    return-void
.end method

.method public setRuntime(LJAVARuntime/Component;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->P:LJAVARuntime/Component;

    return-void
.end method

.method public setVerticalMargin(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "verticalMargin"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->verticalMargin:F

    return-void
.end method

.method public shouldTintIcon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->P:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/BoundingTerrainLevel;

    invoke-direct {v0, p0}, LJAVARuntime/BoundingTerrainLevel;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->P:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method
