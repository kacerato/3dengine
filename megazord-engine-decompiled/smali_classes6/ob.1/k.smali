.class public Lob/k;
.super Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;
.source "SourceFile"


# static fields
.field public static final i:Ljava/lang/String; = "VectorDecompose"

.field public static final j:I


# instance fields
.field public final g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

.field public final h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lob/k$a;

    invoke-direct {v0}, Lob/k$a;-><init>()V

    invoke-static {v0}, Lya/o;->a(Lya/p;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v1, "Vector"

    sget-object v2, Lya/H;->DYNAMIC:Lya/H;

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_VECTOR:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    filled-new-array {v0}, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    iput-object v0, p0, Lob/k;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v1, Lya/H;->NUMBER:Lya/H;

    const-string v2, "X"

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_X:LUc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v3, "Y"

    invoke-direct {v2, v3, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_Y:LUc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v4, "Z"

    invoke-direct {v3, v4, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_Z:LUc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v3

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v5, "W"

    invoke-direct {v4, v5, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_W:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    filled-new-array {v0, v2, v3, v1}, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    iput-object v0, p0, Lob/k;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v0, "VectorDecompose"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->serializedNodeType:Ljava/lang/String;

    return-void
.end method

.method private H0()I
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->branchConnections:Ljava/util/List;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v4, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->fromNodeId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    iget v3, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->fromSlot:I

    if-ltz v3, :cond_1

    iget-object v4, p0, Lob/k;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    return v3

    :cond_4
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->connections:Ljava/util/List;

    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    iget-object v4, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->fromNodeId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_1

    :cond_7
    iget v3, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->fromSlot:I

    if-ltz v3, :cond_5

    iget-object v4, p0, Lob/k;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    array-length v4, v4

    if-ge v3, v4, :cond_5

    return v3

    :cond_8
    return v1
.end method


# virtual methods
.method public F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    iget-object v0, p0, Lob/k;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public final G0(Lya/H;)Lya/H;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    sget-object v0, Lya/H;->NUMBER01:Lya/H;

    if-ne p1, v0, :cond_0

    sget-object p1, Lya/H;->NUMBER:Lya/H;

    :cond_0
    return-object p1
.end method

.method public J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    iget-object v0, p0, Lob/k;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public M()Lya/B;
    .locals 1

    sget-object v0, Lya/B;->BOTH:Lya/B;

    return-object v0
.end method

.method public N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphData"
        }
    .end annotation

    const-string p1, "Vector Decompose"

    return-object p1
.end method

.method public m0()V
    .locals 8

    iget-object v0, p0, Lob/k;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v2, :cond_0

    new-instance v3, Lya/A;

    invoke-direct {v3, v2}, Lya/A;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V

    invoke-virtual {v3, p0, v1}, Lya/A;->b(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;I)Lya/H;

    move-result-object v2

    invoke-virtual {p0, v2}, Lob/k;->G0(Lya/H;)Lya/H;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-object v2, Lya/H;->DYNAMIC:Lya/H;

    :goto_0
    sget-object v3, Lya/H;->NUMBER:Lya/H;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_b

    sget-object v3, Lya/H;->NUMBER01:Lya/H;

    if-ne v2, v3, :cond_1

    goto/16 :goto_7

    :cond_1
    sget-object v3, Lya/H;->FLOAT2:Lya/H;

    if-ne v2, v3, :cond_2

    invoke-static {v0}, Lya/m;->l0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    :goto_1
    move v3, v4

    move v4, v2

    move v2, v3

    goto/16 :goto_8

    :cond_2
    sget-object v3, Lya/H;->FLOAT3:Lya/H;

    if-eq v2, v3, :cond_a

    sget-object v3, Lya/H;->DIRECTION:Lya/H;

    if-ne v2, v3, :cond_3

    goto/16 :goto_6

    :cond_3
    sget-object v3, Lya/H;->FLOAT4:Lya/H;

    if-eq v2, v3, :cond_9

    sget-object v3, Lya/H;->QUATERNION:Lya/H;

    if-ne v2, v3, :cond_4

    goto/16 :goto_5

    :cond_4
    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_5

    invoke-static {v0}, Lya/m;->V(Ljava/lang/Object;)F

    move-result v0

    :goto_2
    move v2, v4

    move v3, v2

    move v4, v0

    move v0, v3

    goto/16 :goto_8

    :cond_5
    instance-of v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    if-eqz v2, :cond_6

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    goto :goto_1

    :cond_6
    instance-of v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz v2, :cond_7

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v0

    :goto_3
    move v6, v3

    move v3, v0

    move v0, v6

    move v7, v4

    move v4, v2

    move v2, v7

    goto :goto_8

    :cond_7
    instance-of v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    if-eqz v2, :cond_8

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->u()F

    move-result v4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->v()F

    move-result v2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w()F

    move-result v3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->s()F

    move-result v0

    :goto_4
    move v6, v2

    move v2, v0

    move v0, v6

    goto :goto_8

    :cond_8
    move v0, v4

    move v2, v0

    move v3, v2

    goto :goto_8

    :cond_9
    :goto_5
    invoke-static {v0}, Lya/m;->p0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->u()F

    move-result v4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->v()F

    move-result v2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w()F

    move-result v3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->s()F

    move-result v0

    goto :goto_4

    :cond_a
    :goto_6
    invoke-static {v0}, Lya/m;->n0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v0

    goto :goto_3

    :cond_b
    :goto_7
    invoke-static {v0}, Lya/m;->V(Ljava/lang/Object;)F

    move-result v0

    goto :goto_2

    :goto_8
    iget-object v5, p0, Lob/k;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v1, v5, v1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->y0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Ljava/lang/Object;)V

    iget-object v1, p0, Lob/k;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v4, 0x1

    aget-object v1, v1, v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->y0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Ljava/lang/Object;)V

    iget-object v0, p0, Lob/k;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->y0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Ljava/lang/Object;)V

    iget-object v0, p0, Lob/k;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->y0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Ljava/lang/Object;)V

    iget-object v0, p0, Lob/k;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    invoke-direct {p0}, Lob/k;->H0()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

    return-void
.end method

.method public t0(ILya/D;)Lya/H;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "resolver"
        }
    .end annotation

    sget-object p1, Lya/H;->NUMBER:Lya/H;

    return-object p1
.end method

.method public x(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphData"
        }
    .end annotation

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_VECTOR_DECOMPOSE:LUc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
