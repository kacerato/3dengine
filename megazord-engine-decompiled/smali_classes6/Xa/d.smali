.class public abstract LXa/d;
.super Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;
.source "SourceFile"

# interfaces
.implements Lya/c;


# static fields
.field public static final j:Ljava/lang/String; = "0.0001"


# instance fields
.field public final g:Ljava/lang/String;

.field public final h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

.field public final i:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v1, Lya/H;->NUMBER:Lya/H;

    const-string v2, "A"

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_A:LUc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v3, "B"

    invoke-direct {v2, v3, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_B:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    filled-new-array {v0, v1}, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    iput-object v0, p0, LXa/d;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v1, Lya/H;->BRANCH:Lya/H;

    const-string v2, "True"

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_TRUE:LUc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v3, "False"

    invoke-direct {v2, v3, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_FALSE:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    filled-new-array {v0, v1}, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    iput-object v0, p0, LXa/d;->i:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    iput-object p1, p0, LXa/d;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    iget-object v0, p0, LXa/d;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public G0(ZZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "current",
            "componentResult"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract H0(FF)Z
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
.end method

.method public I0(Ljava/lang/Object;Ljava/lang/Object;Lya/H;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "aValue",
            "bValue",
            "compareType"
        }
    .end annotation

    sget-object v0, Lya/H;->COLOR:Lya/H;

    if-ne p3, v0, :cond_1

    invoke-static {p1}, Lya/m;->Q(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    invoke-static {p2}, Lya/m;->Q(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p2

    invoke-virtual {p0}, LXa/d;->K0()Z

    move-result p3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    invoke-static {p1, v0}, Lya/m;->h(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;I)F

    move-result v1

    invoke-static {p2, v0}, Lya/m;->h(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;I)F

    move-result v2

    invoke-virtual {p0, v1, v2}, LXa/d;->H0(FF)Z

    move-result v1

    invoke-virtual {p0, p3, v1}, LXa/d;->G0(ZZ)Z

    move-result p3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p3

    :cond_1
    sget-object v0, Lya/H;->FLOAT4:Lya/H;

    if-eq p3, v0, :cond_5

    sget-object v0, Lya/H;->QUATERNION:Lya/H;

    if-ne p3, v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lya/H;->FLOAT3:Lya/H;

    if-ne p3, v0, :cond_3

    invoke-static {p1}, Lya/m;->n0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-static {p2}, Lya/m;->n0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p2

    invoke-virtual {p0}, LXa/d;->K0()Z

    move-result p3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v1

    invoke-virtual {p0, v0, v1}, LXa/d;->H0(FF)Z

    move-result v0

    invoke-virtual {p0, p3, v0}, LXa/d;->G0(ZZ)Z

    move-result p3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v1

    invoke-virtual {p0, v0, v1}, LXa/d;->H0(FF)Z

    move-result v0

    invoke-virtual {p0, p3, v0}, LXa/d;->G0(ZZ)Z

    move-result p3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p2

    invoke-virtual {p0, p1, p2}, LXa/d;->H0(FF)Z

    move-result p1

    invoke-virtual {p0, p3, p1}, LXa/d;->G0(ZZ)Z

    move-result p1

    return p1

    :cond_3
    sget-object v0, Lya/H;->FLOAT2:Lya/H;

    if-ne p3, v0, :cond_4

    invoke-static {p1}, Lya/m;->l0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-static {p2}, Lya/m;->l0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p2

    invoke-virtual {p0}, LXa/d;->K0()Z

    move-result p3

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-virtual {p0, v0, v1}, LXa/d;->H0(FF)Z

    move-result v0

    invoke-virtual {p0, p3, v0}, LXa/d;->G0(ZZ)Z

    move-result p3

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget p2, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-virtual {p0, p1, p2}, LXa/d;->H0(FF)Z

    move-result p1

    invoke-virtual {p0, p3, p1}, LXa/d;->G0(ZZ)Z

    move-result p1

    return p1

    :cond_4
    invoke-static {p1}, Lya/m;->V(Ljava/lang/Object;)F

    move-result p1

    invoke-static {p2}, Lya/m;->V(Ljava/lang/Object;)F

    move-result p2

    invoke-virtual {p0, p1, p2}, LXa/d;->H0(FF)Z

    move-result p1

    return p1

    :cond_5
    :goto_1
    invoke-static {p1}, Lya/m;->p0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    move-result-object p1

    invoke-static {p2}, Lya/m;->p0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    move-result-object p2

    invoke-virtual {p0}, LXa/d;->K0()Z

    move-result p3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->u()F

    move-result v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->u()F

    move-result v1

    invoke-virtual {p0, v0, v1}, LXa/d;->H0(FF)Z

    move-result v0

    invoke-virtual {p0, p3, v0}, LXa/d;->G0(ZZ)Z

    move-result p3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->v()F

    move-result v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->v()F

    move-result v1

    invoke-virtual {p0, v0, v1}, LXa/d;->H0(FF)Z

    move-result v0

    invoke-virtual {p0, p3, v0}, LXa/d;->G0(ZZ)Z

    move-result p3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w()F

    move-result v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w()F

    move-result v1

    invoke-virtual {p0, v0, v1}, LXa/d;->H0(FF)Z

    move-result v0

    invoke-virtual {p0, p3, v0}, LXa/d;->G0(ZZ)Z

    move-result p3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->s()F

    move-result p1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->s()F

    move-result p2

    invoke-virtual {p0, p1, p2}, LXa/d;->H0(FF)Z

    move-result p1

    invoke-virtual {p0, p3, p1}, LXa/d;->G0(ZZ)Z

    move-result p1

    return p1
.end method

.method public J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    iget-object v0, p0, LXa/d;->i:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public abstract J0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
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
.end method

.method public K0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
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

    iget-object p1, p0, LXa/d;->g:Ljava/lang/String;

    return-object p1
.end method

.method public m0()V
    .locals 7

    iget-object v0, p0, LXa/d;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, LXa/d;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v2

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v4, :cond_0

    new-instance v5, Lya/A;

    invoke-direct {v5, v4}, Lya/A;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V

    invoke-virtual {v5, p0, v1}, Lya/A;->b(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;I)Lya/H;

    move-result-object v4

    new-instance v5, Lya/A;

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-direct {v5, v6}, Lya/A;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V

    invoke-virtual {v5, p0, v3}, Lya/A;->b(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;I)Lya/H;

    move-result-object v5

    invoke-static {v4, v5}, Lya/C;->i(Lya/H;Lya/H;)Lya/H;

    move-result-object v4

    goto :goto_0

    :cond_0
    sget-object v4, Lya/H;->NUMBER:Lya/H;

    :goto_0
    invoke-virtual {p0, v0, v2, v4}, LXa/d;->I0(Ljava/lang/Object;Ljava/lang/Object;Lya/H;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LXa/d;->i:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, LXa/d;->i:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

    :goto_1
    return-void
.end method
