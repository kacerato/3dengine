.class public final enum Lorg/hull/BroadphaseNativeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/hull/BroadphaseNativeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/hull/BroadphaseNativeType;

.field public static final enum BOX_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

.field public static final enum CAPSULE_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

.field public static final enum COMPOUND_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

.field public static final enum CONCAVE_SHAPES_END_HERE:Lorg/hull/BroadphaseNativeType;

.field public static final enum CONCAVE_SHAPES_START_HERE:Lorg/hull/BroadphaseNativeType;

.field public static final enum CONE_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

.field public static final enum CONVEX_HULL_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

.field public static final enum CONVEX_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

.field public static final enum CONVEX_TRIANGLEMESH_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

.field public static final enum CYLINDER_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

.field public static final enum EMPTY_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

.field public static final enum FAST_CONCAVE_MESH_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

.field public static final enum GIMPACT_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

.field public static final enum IMPLICIT_CONVEX_SHAPES_START_HERE:Lorg/hull/BroadphaseNativeType;

.field public static final enum INVALID_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

.field public static final enum MAX_BROADPHASE_COLLISION_TYPES:Lorg/hull/BroadphaseNativeType;

.field public static final enum MINKOWSKI_DIFFERENCE_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

.field public static final enum MINKOWSKI_SUM_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

.field public static final enum MULTIMATERIAL_TRIANGLE_MESH_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

.field public static final enum MULTI_SPHERE_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

.field public static final enum SCALED_TRIANGLE_MESH_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

.field public static final enum SOFTBODY_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

.field public static final enum SPHERE_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

.field public static final enum STATIC_PLANE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

.field public static final enum TERRAIN_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

.field public static final enum TETRAHEDRAL_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

.field public static final enum TRIANGLE_MESH_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

.field public static final enum TRIANGLE_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

.field public static final enum UNIFORM_SCALING_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

.field private static values:[Lorg/hull/BroadphaseNativeType;


# direct methods
.method static constructor <clinit>()V
    .locals 32

    new-instance v1, Lorg/hull/BroadphaseNativeType;

    move-object v0, v1

    const-string v2, "BOX_SHAPE_PROXYTYPE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/hull/BroadphaseNativeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/hull/BroadphaseNativeType;->BOX_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

    new-instance v2, Lorg/hull/BroadphaseNativeType;

    move-object v1, v2

    const-string v3, "TRIANGLE_SHAPE_PROXYTYPE"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lorg/hull/BroadphaseNativeType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/hull/BroadphaseNativeType;->TRIANGLE_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

    new-instance v3, Lorg/hull/BroadphaseNativeType;

    move-object v2, v3

    const-string v4, "TETRAHEDRAL_SHAPE_PROXYTYPE"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lorg/hull/BroadphaseNativeType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/hull/BroadphaseNativeType;->TETRAHEDRAL_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

    new-instance v4, Lorg/hull/BroadphaseNativeType;

    move-object v3, v4

    const-string v5, "CONVEX_TRIANGLEMESH_SHAPE_PROXYTYPE"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lorg/hull/BroadphaseNativeType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/hull/BroadphaseNativeType;->CONVEX_TRIANGLEMESH_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

    new-instance v5, Lorg/hull/BroadphaseNativeType;

    move-object v4, v5

    const-string v6, "CONVEX_HULL_SHAPE_PROXYTYPE"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lorg/hull/BroadphaseNativeType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/hull/BroadphaseNativeType;->CONVEX_HULL_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

    new-instance v6, Lorg/hull/BroadphaseNativeType;

    move-object v5, v6

    const-string v7, "IMPLICIT_CONVEX_SHAPES_START_HERE"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lorg/hull/BroadphaseNativeType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/hull/BroadphaseNativeType;->IMPLICIT_CONVEX_SHAPES_START_HERE:Lorg/hull/BroadphaseNativeType;

    new-instance v7, Lorg/hull/BroadphaseNativeType;

    move-object v6, v7

    const-string v8, "SPHERE_SHAPE_PROXYTYPE"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lorg/hull/BroadphaseNativeType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/hull/BroadphaseNativeType;->SPHERE_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

    new-instance v8, Lorg/hull/BroadphaseNativeType;

    move-object v7, v8

    const-string v9, "MULTI_SPHERE_SHAPE_PROXYTYPE"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lorg/hull/BroadphaseNativeType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/hull/BroadphaseNativeType;->MULTI_SPHERE_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

    new-instance v9, Lorg/hull/BroadphaseNativeType;

    move-object v8, v9

    const-string v10, "CAPSULE_SHAPE_PROXYTYPE"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lorg/hull/BroadphaseNativeType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/hull/BroadphaseNativeType;->CAPSULE_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

    new-instance v10, Lorg/hull/BroadphaseNativeType;

    move-object v9, v10

    const-string v11, "CONE_SHAPE_PROXYTYPE"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lorg/hull/BroadphaseNativeType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/hull/BroadphaseNativeType;->CONE_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

    new-instance v11, Lorg/hull/BroadphaseNativeType;

    move-object v10, v11

    const-string v12, "CONVEX_SHAPE_PROXYTYPE"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lorg/hull/BroadphaseNativeType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/hull/BroadphaseNativeType;->CONVEX_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

    new-instance v12, Lorg/hull/BroadphaseNativeType;

    move-object v11, v12

    const-string v13, "CYLINDER_SHAPE_PROXYTYPE"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lorg/hull/BroadphaseNativeType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/hull/BroadphaseNativeType;->CYLINDER_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

    new-instance v13, Lorg/hull/BroadphaseNativeType;

    move-object v12, v13

    const-string v14, "UNIFORM_SCALING_SHAPE_PROXYTYPE"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lorg/hull/BroadphaseNativeType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/hull/BroadphaseNativeType;->UNIFORM_SCALING_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

    new-instance v14, Lorg/hull/BroadphaseNativeType;

    move-object v13, v14

    const-string v15, "MINKOWSKI_SUM_SHAPE_PROXYTYPE"

    move-object/from16 v29, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lorg/hull/BroadphaseNativeType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/hull/BroadphaseNativeType;->MINKOWSKI_SUM_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

    new-instance v0, Lorg/hull/BroadphaseNativeType;

    move-object v14, v0

    const-string v15, "MINKOWSKI_DIFFERENCE_SHAPE_PROXYTYPE"

    move-object/from16 v30, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lorg/hull/BroadphaseNativeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hull/BroadphaseNativeType;->MINKOWSKI_DIFFERENCE_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

    new-instance v0, Lorg/hull/BroadphaseNativeType;

    move-object v15, v0

    const-string v1, "CONCAVE_SHAPES_START_HERE"

    move-object/from16 v31, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/hull/BroadphaseNativeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hull/BroadphaseNativeType;->CONCAVE_SHAPES_START_HERE:Lorg/hull/BroadphaseNativeType;

    new-instance v0, Lorg/hull/BroadphaseNativeType;

    move-object/from16 v16, v0

    const-string v1, "TRIANGLE_MESH_SHAPE_PROXYTYPE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/hull/BroadphaseNativeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hull/BroadphaseNativeType;->TRIANGLE_MESH_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

    new-instance v0, Lorg/hull/BroadphaseNativeType;

    move-object/from16 v17, v0

    const-string v1, "SCALED_TRIANGLE_MESH_SHAPE_PROXYTYPE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/hull/BroadphaseNativeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hull/BroadphaseNativeType;->SCALED_TRIANGLE_MESH_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

    new-instance v0, Lorg/hull/BroadphaseNativeType;

    move-object/from16 v18, v0

    const-string v1, "FAST_CONCAVE_MESH_PROXYTYPE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lorg/hull/BroadphaseNativeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hull/BroadphaseNativeType;->FAST_CONCAVE_MESH_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

    new-instance v0, Lorg/hull/BroadphaseNativeType;

    move-object/from16 v19, v0

    const-string v1, "TERRAIN_SHAPE_PROXYTYPE"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lorg/hull/BroadphaseNativeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hull/BroadphaseNativeType;->TERRAIN_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

    new-instance v0, Lorg/hull/BroadphaseNativeType;

    move-object/from16 v20, v0

    const-string v1, "GIMPACT_SHAPE_PROXYTYPE"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lorg/hull/BroadphaseNativeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hull/BroadphaseNativeType;->GIMPACT_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

    new-instance v0, Lorg/hull/BroadphaseNativeType;

    move-object/from16 v21, v0

    const-string v1, "MULTIMATERIAL_TRIANGLE_MESH_PROXYTYPE"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lorg/hull/BroadphaseNativeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hull/BroadphaseNativeType;->MULTIMATERIAL_TRIANGLE_MESH_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

    new-instance v0, Lorg/hull/BroadphaseNativeType;

    move-object/from16 v22, v0

    const-string v1, "EMPTY_SHAPE_PROXYTYPE"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lorg/hull/BroadphaseNativeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hull/BroadphaseNativeType;->EMPTY_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

    new-instance v0, Lorg/hull/BroadphaseNativeType;

    move-object/from16 v23, v0

    const-string v1, "STATIC_PLANE_PROXYTYPE"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lorg/hull/BroadphaseNativeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hull/BroadphaseNativeType;->STATIC_PLANE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

    new-instance v0, Lorg/hull/BroadphaseNativeType;

    move-object/from16 v24, v0

    const-string v1, "CONCAVE_SHAPES_END_HERE"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lorg/hull/BroadphaseNativeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hull/BroadphaseNativeType;->CONCAVE_SHAPES_END_HERE:Lorg/hull/BroadphaseNativeType;

    new-instance v0, Lorg/hull/BroadphaseNativeType;

    move-object/from16 v25, v0

    const-string v1, "COMPOUND_SHAPE_PROXYTYPE"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lorg/hull/BroadphaseNativeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hull/BroadphaseNativeType;->COMPOUND_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

    new-instance v0, Lorg/hull/BroadphaseNativeType;

    move-object/from16 v26, v0

    const-string v1, "SOFTBODY_SHAPE_PROXYTYPE"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lorg/hull/BroadphaseNativeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hull/BroadphaseNativeType;->SOFTBODY_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

    new-instance v0, Lorg/hull/BroadphaseNativeType;

    move-object/from16 v27, v0

    const-string v1, "INVALID_SHAPE_PROXYTYPE"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lorg/hull/BroadphaseNativeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hull/BroadphaseNativeType;->INVALID_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

    new-instance v0, Lorg/hull/BroadphaseNativeType;

    move-object/from16 v28, v0

    const-string v1, "MAX_BROADPHASE_COLLISION_TYPES"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lorg/hull/BroadphaseNativeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hull/BroadphaseNativeType;->MAX_BROADPHASE_COLLISION_TYPES:Lorg/hull/BroadphaseNativeType;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    filled-new-array/range {v0 .. v28}, [Lorg/hull/BroadphaseNativeType;

    move-result-object v0

    sput-object v0, Lorg/hull/BroadphaseNativeType;->$VALUES:[Lorg/hull/BroadphaseNativeType;

    invoke-static {}, Lorg/hull/BroadphaseNativeType;->values()[Lorg/hull/BroadphaseNativeType;

    move-result-object v0

    sput-object v0, Lorg/hull/BroadphaseNativeType;->values:[Lorg/hull/BroadphaseNativeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forValue(I)Lorg/hull/BroadphaseNativeType;
    .locals 1

    sget-object v0, Lorg/hull/BroadphaseNativeType;->values:[Lorg/hull/BroadphaseNativeType;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/hull/BroadphaseNativeType;
    .locals 1

    const-class v0, Lorg/hull/BroadphaseNativeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/hull/BroadphaseNativeType;

    return-object p0
.end method

.method public static values()[Lorg/hull/BroadphaseNativeType;
    .locals 1

    sget-object v0, Lorg/hull/BroadphaseNativeType;->$VALUES:[Lorg/hull/BroadphaseNativeType;

    invoke-virtual {v0}, [Lorg/hull/BroadphaseNativeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/hull/BroadphaseNativeType;

    return-object v0
.end method


# virtual methods
.method public isCompound()Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lorg/hull/BroadphaseNativeType;->COMPOUND_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConcave()Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lorg/hull/BroadphaseNativeType;->CONCAVE_SHAPES_START_HERE:Lorg/hull/BroadphaseNativeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lorg/hull/BroadphaseNativeType;->CONCAVE_SHAPES_END_HERE:Lorg/hull/BroadphaseNativeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConvex()Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lorg/hull/BroadphaseNativeType;->CONCAVE_SHAPES_START_HERE:Lorg/hull/BroadphaseNativeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInfinite()Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lorg/hull/BroadphaseNativeType;->STATIC_PLANE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPolyhedral()Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lorg/hull/BroadphaseNativeType;->IMPLICIT_CONVEX_SHAPES_START_HERE:Lorg/hull/BroadphaseNativeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
