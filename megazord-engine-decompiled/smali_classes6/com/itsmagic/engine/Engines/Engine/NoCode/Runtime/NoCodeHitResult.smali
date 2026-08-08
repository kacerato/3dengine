.class public final Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeHitResult;
.super Ljava/lang/Object;
.source "NoCodeHitResult.java"


# instance fields
.field private final distance:F

.field private final hit:Z

.field private final normal:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field private final object:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

.field private final point:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;


# direct methods
.method private constructor <init>(ZLcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeHitResult;->hit:Z

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeHitResult;->object:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

    if-eqz p3, :point_missing

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    goto :point_done

    :point_missing
    const/4 v0, 0x0

    :point_done
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeHitResult;->point:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz p4, :normal_missing

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    goto :normal_done

    :normal_missing
    const/4 v0, 0x0

    :normal_done
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeHitResult;->normal:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput p5, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeHitResult;->distance:F

    return-void
.end method

.method public static hit(Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeHitResult;
    .locals 7

    if-eqz p0, :miss

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;->isValid()Z

    move-result v0

    if-eqz v0, :miss

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeHitResult;

    const/4 v1, 0x1

    move-object v2, p0
    move-object v3, p1
    move-object v4, p2
    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeHitResult;-><init>(ZLcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V

    return-object v0

    :miss
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeHitResult;->miss()Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeHitResult;

    move-result-object v0

    return-object v0
.end method

.method public static miss()Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeHitResult;
    .locals 6

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeHitResult;

    const/4 v1, 0x0
    const/4 v2, 0x0
    const/4 v3, 0x0
    const/4 v4, 0x0
    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeHitResult;-><init>(ZLcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V

    return-object v0
.end method


# virtual methods
.method public getDistance()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeHitResult;->distance:F

    return v0
.end method

.method public getNormal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeHitResult;->normal:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz v0, :missing

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-object v1

    :missing
    const/4 v0, 0x0

    return-object v0
.end method

.method public getObject()Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeHitResult;->object:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

    return-object v0
.end method

.method public getPoint()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeHitResult;->point:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz v0, :missing

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-object v1

    :missing
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasHit()Z
    .locals 2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeHitResult;->hit:Z

    if-eqz v0, :invalid

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeHitResult;->object:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

    if-eqz v0, :invalid

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;->isValid()Z

    move-result v1

    if-eqz v1, :invalid

    const/4 v0, 0x1

    return v0

    :invalid
    const/4 v0, 0x0

    return v0
.end method
