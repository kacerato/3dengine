.class public Lh9/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:[Lh9/h;

.field public static b:[Lh9/l;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    invoke-static {}, LJAVARuntime/Color;->inspectorController()Lh9/h;

    move-result-object v0

    invoke-static {}, LJAVARuntime/OutPFile;->inspectorController()Lh9/h;

    move-result-object v1

    invoke-static {}, LJAVARuntime/Vector3;->inspectorController()Lh9/h;

    move-result-object v2

    invoke-static {}, LJAVARuntime/Vector2;->inspectorController()Lh9/h;

    move-result-object v3

    invoke-static {}, LJAVARuntime/FloatSlider;->inspectorController()Lh9/h;

    move-result-object v4

    invoke-static {}, LJAVARuntime/IntSlider;->inspectorController()Lh9/h;

    move-result-object v5

    invoke-static {}, LJAVARuntime/Texture;->inspectorController()Lh9/h;

    move-result-object v6

    invoke-static {}, LJAVARuntime/Matcap;->inspectorController()Lh9/h;

    move-result-object v7

    invoke-static {}, LJAVARuntime/Map2;->inspectorController()Lh9/h;

    move-result-object v8

    invoke-static {}, LJAVARuntime/SpatialObject;->inspectorController()Lh9/h;

    move-result-object v9

    invoke-static {}, LJAVARuntime/Component;->inspectorController()Lh9/h;

    move-result-object v10

    invoke-static {}, LJAVARuntime/Point3;->inspectorController()Lh9/h;

    move-result-object v11

    invoke-static {}, LJAVARuntime/Point2;->inspectorController()Lh9/h;

    move-result-object v12

    invoke-static {}, LJAVARuntime/PropertiesButton;->inspectorController()Lh9/h;

    move-result-object v13

    invoke-static {}, LJAVARuntime/ObjectFile;->inspectorController()Lh9/h;

    move-result-object v14

    invoke-static {}, LJAVARuntime/MaterialFile;->inspectorController()Lh9/h;

    move-result-object v15

    invoke-static {}, LJAVARuntime/WorldFile;->inspectorController()Lh9/h;

    move-result-object v16

    invoke-static {}, LJAVARuntime/SoundFile;->inspectorController()Lh9/h;

    move-result-object v17

    invoke-static {}, LJAVARuntime/VideoFile;->inspectorController()Lh9/h;

    move-result-object v18

    invoke-static {}, LJAVARuntime/OutputVideoFile;->inspectorController()Lh9/h;

    move-result-object v19

    invoke-static {}, LJAVARuntime/TextureFile;->inspectorController()Lh9/h;

    move-result-object v20

    invoke-static {}, LJAVARuntime/VertexFile;->inspectorController()Lh9/h;

    move-result-object v21

    invoke-static {}, LJAVARuntime/FontFile;->inspectorController()Lh9/h;

    move-result-object v22

    invoke-static {}, LJAVARuntime/Curve;->inspectorController()Lh9/h;

    move-result-object v23

    invoke-static {}, LJAVARuntime/ColorGradient;->inspectorController()Lh9/h;

    move-result-object v24

    invoke-static {}, LJAVARuntime/ProjectFile;->inspectorController()Lh9/h;

    move-result-object v25

    invoke-static {}, LJAVARuntime/AnimationFile;->inspectorController()Lh9/h;

    move-result-object v26

    invoke-static {}, LJAVARuntime/AnimationMaskFile;->inspectorController()Lh9/h;

    move-result-object v27

    filled-new-array/range {v0 .. v27}, [Lh9/h;

    move-result-object v0

    sput-object v0, Lh9/g;->a:[Lh9/h;

    invoke-static {}, LJAVARuntime/Color;->genericInterface()Lh9/l;

    move-result-object v1

    invoke-static {}, LJAVARuntime/OutPFile;->genericInterface()Lh9/l;

    move-result-object v2

    invoke-static {}, LJAVARuntime/Vector3;->genericInterface()Lh9/l;

    move-result-object v3

    invoke-static {}, LJAVARuntime/Vector2;->genericInterface()Lh9/l;

    move-result-object v4

    invoke-static {}, LJAVARuntime/Texture;->genericInterface()Lh9/l;

    move-result-object v5

    invoke-static {}, LJAVARuntime/Matcap;->genericInterface()Lh9/l;

    move-result-object v6

    invoke-static {}, LJAVARuntime/ObjectFile;->genericInterface()Lh9/l;

    move-result-object v7

    invoke-static {}, LJAVARuntime/MaterialFile;->genericInterface()Lh9/l;

    move-result-object v8

    invoke-static {}, LJAVARuntime/WorldFile;->genericInterface()Lh9/l;

    move-result-object v9

    invoke-static {}, LJAVARuntime/SoundFile;->genericInterface()Lh9/l;

    move-result-object v10

    invoke-static {}, LJAVARuntime/VideoFile;->genericInterface()Lh9/l;

    move-result-object v11

    invoke-static {}, LJAVARuntime/OutputVideoFile;->genericInterface()Lh9/l;

    move-result-object v12

    invoke-static {}, LJAVARuntime/TextureFile;->genericInterface()Lh9/l;

    move-result-object v13

    invoke-static {}, LJAVARuntime/VertexFile;->genericInterface()Lh9/l;

    move-result-object v14

    invoke-static {}, LJAVARuntime/FontFile;->genericInterface()Lh9/l;

    move-result-object v15

    invoke-static {}, LJAVARuntime/Curve;->genericInterface()Lh9/l;

    move-result-object v16

    invoke-static {}, LJAVARuntime/ColorGradient;->genericInterface()Lh9/l;

    move-result-object v17

    invoke-static {}, LJAVARuntime/ProjectFile;->genericInterface()Lh9/l;

    move-result-object v18

    invoke-static {}, LJAVARuntime/AnimationFile;->genericInterface()Lh9/l;

    move-result-object v19

    invoke-static {}, LJAVARuntime/AnimationMaskFile;->genericInterface()Lh9/l;

    move-result-object v20

    filled-new-array/range {v1 .. v20}, [Lh9/l;

    move-result-object v0

    sput-object v0, Lh9/g;->b:[Lh9/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()[Lh9/h;
    .locals 1

    sget-object v0, Lh9/g;->a:[Lh9/h;

    return-object v0
.end method

.method public static b()[Lh9/l;
    .locals 1

    sget-object v0, Lh9/g;->b:[Lh9/l;

    return-object v0
.end method
