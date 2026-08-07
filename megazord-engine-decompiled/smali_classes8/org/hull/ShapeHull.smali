.class public Lorg/hull/ShapeHull;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static NUM_UNITSPHERE_POINTS:I = 0x2a

.field private static constUnitSpherePoints:Lorg/hull/ObjectArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hull/ObjectArrayList<",
            "Ljavax/vecmath/Vector3f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected indices:Lorg/hull/IntArrayList;

.field protected numIndices:I

.field protected shape:Lorg/hull/ConvexShape;

.field protected unitSpherePoints:Lorg/hull/ObjectArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hull/ObjectArrayList<",
            "Ljavax/vecmath/Vector3f;",
            ">;"
        }
    .end annotation
.end field

.field protected vertices:Lorg/hull/ObjectArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hull/ObjectArrayList<",
            "Ljavax/vecmath/Vector3f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lorg/hull/ObjectArrayList;

    invoke-direct {v0}, Lorg/hull/ObjectArrayList;-><init>()V

    sput-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/high16 v4, -0x40800000    # -1.0f

    invoke-direct {v1, v2, v3, v4}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    const v5, 0x3f393e60

    const v6, -0x40f96a16

    const v7, -0x411b061c

    invoke-direct {v1, v5, v6, v7}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    const v8, -0x41727d46

    const v9, -0x40a63bde    # -0.850649f

    invoke-direct {v1, v8, v9, v7}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    const v10, -0x409b06e6

    const v11, -0x411b0681

    invoke-direct {v1, v10, v3, v11}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    const v10, -0x411b05fb    # -0.44722f

    const v11, 0x3f59c422    # 0.850649f

    invoke-direct {v1, v8, v11, v10}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    const v8, 0x3f0695ea

    invoke-direct {v1, v5, v8, v7}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    const v5, 0x3ee4fa05    # 0.44722f

    const v7, 0x3e8d82ba

    invoke-direct {v1, v7, v9, v5}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    const v5, -0x40c6c1a0

    const v9, 0x3ee4f9e4

    invoke-direct {v1, v5, v6, v9}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    invoke-direct {v1, v5, v8, v9}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    invoke-direct {v1, v7, v11, v9}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    const v5, 0x3f64f91a

    const v6, 0x3ee4f97f

    invoke-direct {v1, v5, v2, v6}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v2, v5}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    const v6, 0x3ed9c3f0

    const v7, -0x4161c94f

    const v8, -0x40a63b8a

    invoke-direct {v1, v6, v7, v8}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    const v9, -0x41d9a522

    const v10, -0x410000a8    # -0.499995f

    invoke-direct {v1, v9, v10, v8}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    const v11, -0x40b0e497

    const v12, -0x40f9693c    # -0.525738f

    const v13, 0x3e8696c4    # 0.262869f

    invoke-direct {v1, v13, v11, v12}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    const v11, 0x3e9e36b1

    invoke-direct {v1, v6, v11, v8}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    const v6, 0x3f59c411

    const v11, -0x40f9695e

    invoke-direct {v1, v6, v3, v11}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    const v6, -0x40f969c2

    const v12, -0x40a63bac

    invoke-direct {v1, v6, v3, v12}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    const v6, -0x40cfd2c8

    const v12, -0x41000065    # -0.499997f

    invoke-direct {v1, v6, v12, v11}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    const v6, 0x3effff58    # 0.499995f

    invoke-direct {v1, v9, v6, v8}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    const v6, -0x40cfd2c8

    const v8, 0x3effff9b    # 0.499997f

    invoke-direct {v1, v6, v8, v11}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    const v6, 0x3f4f1b69

    const v8, -0x40f9693c    # -0.525738f

    const v9, 0x3e8696c4    # 0.262869f

    invoke-direct {v1, v9, v6, v8}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    const v6, 0x3f737889

    const v8, 0x3e9e36f4

    invoke-direct {v1, v6, v8, v2}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    const v8, -0x4161c90c

    invoke-direct {v1, v6, v8, v2}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    const v6, 0x3f167925

    const v8, -0x40b0e443

    invoke-direct {v1, v6, v8, v2}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    invoke-direct {v1, v2, v4, v2}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    const v4, -0x40e986db

    const v6, -0x40b0e443

    invoke-direct {v1, v4, v6, v2}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    const v4, -0x408c8777

    const v6, -0x4161c90c

    invoke-direct {v1, v4, v6, v3}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    const v6, 0x3e9e36f4

    invoke-direct {v1, v4, v6, v3}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    const v4, -0x40e986db

    const v6, 0x3f4f1bbd

    invoke-direct {v1, v4, v6, v3}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    invoke-direct {v1, v3, v5, v3}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    const v4, 0x3f167925

    const v5, 0x3f4f1bbd

    invoke-direct {v1, v4, v5, v3}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    const v3, 0x3f302d38

    const v4, -0x41000065    # -0.499997f

    const v5, 0x3f0696a2

    invoke-direct {v1, v3, v4, v5}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    const v3, -0x40b0e497

    const v4, 0x3f0696c4    # 0.525738f

    const v6, -0x4179693c    # -0.262869f

    invoke-direct {v1, v6, v3, v4}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    const v3, -0x40a63bef

    invoke-direct {v1, v3, v2, v5}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    const v3, 0x3f4f1b69

    invoke-direct {v1, v6, v3, v4}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    const v3, 0x3f302d38

    const v4, 0x3effff9b    # 0.499997f

    invoke-direct {v1, v3, v4, v5}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    const v3, 0x3f06963e

    const v4, 0x3f59c454

    invoke-direct {v1, v3, v2, v4}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    const v2, 0x3e265ade

    const v3, 0x3f59c476

    invoke-direct {v1, v2, v10, v3}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    const v2, -0x41263c10

    invoke-direct {v1, v2, v7, v3}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    const v4, 0x3e9e36b1

    invoke-direct {v1, v2, v4, v3}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    const v2, 0x3e265ade

    const v4, 0x3effff58    # 0.499995f

    invoke-direct {v1, v2, v4, v3}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lorg/hull/ConvexShape;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/hull/ObjectArrayList;

    invoke-direct {v0}, Lorg/hull/ObjectArrayList;-><init>()V

    iput-object v0, p0, Lorg/hull/ShapeHull;->vertices:Lorg/hull/ObjectArrayList;

    new-instance v0, Lorg/hull/IntArrayList;

    invoke-direct {v0}, Lorg/hull/IntArrayList;-><init>()V

    iput-object v0, p0, Lorg/hull/ShapeHull;->indices:Lorg/hull/IntArrayList;

    new-instance v0, Lorg/hull/ObjectArrayList;

    invoke-direct {v0}, Lorg/hull/ObjectArrayList;-><init>()V

    iput-object v0, p0, Lorg/hull/ShapeHull;->unitSpherePoints:Lorg/hull/ObjectArrayList;

    iput-object p1, p0, Lorg/hull/ShapeHull;->shape:Lorg/hull/ConvexShape;

    iget-object p1, p0, Lorg/hull/ShapeHull;->vertices:Lorg/hull/ObjectArrayList;

    invoke-virtual {p1}, Lorg/hull/ObjectArrayList;->clear()V

    iget-object p1, p0, Lorg/hull/ShapeHull;->indices:Lorg/hull/IntArrayList;

    invoke-virtual {p1}, Lorg/hull/IntArrayList;->clear()V

    const/4 p1, 0x0

    iput p1, p0, Lorg/hull/ShapeHull;->numIndices:I

    iget-object v0, p0, Lorg/hull/ShapeHull;->unitSpherePoints:Lorg/hull/ObjectArrayList;

    sget v1, Lorg/hull/ShapeHull;->NUM_UNITSPHERE_POINTS:I

    add-int/lit8 v1, v1, 0x14

    const-class v2, Ljavax/vecmath/Vector3f;

    invoke-static {v0, v1, v2}, Lorg/hull/MiscUtil;->resize(Lorg/hull/ObjectArrayList;ILjava/lang/Class;)V

    :goto_0
    sget-object v0, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    invoke-virtual {v0}, Lorg/hull/ObjectArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/hull/ShapeHull;->unitSpherePoints:Lorg/hull/ObjectArrayList;

    invoke-virtual {v0, p1}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/vecmath/Vector3f;

    sget-object v1, Lorg/hull/ShapeHull;->constUnitSpherePoints:Lorg/hull/ObjectArrayList;

    invoke-virtual {v1, p1}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/vecmath/Tuple3f;

    invoke-virtual {v0, v1}, Ljavax/vecmath/Tuple3f;->set(Ljavax/vecmath/Tuple3f;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public buildHull()Z
    .locals 8

    new-instance v0, Ljavax/vecmath/Vector3f;

    invoke-direct {v0}, Ljavax/vecmath/Vector3f;-><init>()V

    sget v1, Lorg/hull/ShapeHull;->NUM_UNITSPHERE_POINTS:I

    iget-object v2, p0, Lorg/hull/ShapeHull;->shape:Lorg/hull/ConvexShape;

    invoke-virtual {v2}, Lorg/hull/ConvexShape;->getNumPreferredPenetrationDirections()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    iget-object v5, p0, Lorg/hull/ShapeHull;->shape:Lorg/hull/ConvexShape;

    invoke-virtual {v5, v4, v0}, Lorg/hull/ConvexShape;->getPreferredPenetrationDirection(ILjavax/vecmath/Vector3f;)V

    iget-object v5, p0, Lorg/hull/ShapeHull;->unitSpherePoints:Lorg/hull/ObjectArrayList;

    invoke-virtual {v5, v1}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/vecmath/Vector3f;

    invoke-virtual {v5, v0}, Ljavax/vecmath/Tuple3f;->set(Ljavax/vecmath/Tuple3f;)V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/hull/ObjectArrayList;

    invoke-direct {v0}, Lorg/hull/ObjectArrayList;-><init>()V

    sget v2, Lorg/hull/ShapeHull;->NUM_UNITSPHERE_POINTS:I

    add-int/lit8 v2, v2, 0x14

    const-class v4, Ljavax/vecmath/Vector3f;

    invoke-static {v0, v2, v4}, Lorg/hull/MiscUtil;->resize(Lorg/hull/ObjectArrayList;ILjava/lang/Class;)V

    move v2, v3

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v5, p0, Lorg/hull/ShapeHull;->shape:Lorg/hull/ConvexShape;

    iget-object v6, p0, Lorg/hull/ShapeHull;->unitSpherePoints:Lorg/hull/ObjectArrayList;

    invoke-virtual {v6, v2}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/vecmath/Vector3f;

    invoke-virtual {v0, v2}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/vecmath/Vector3f;

    invoke-virtual {v5, v6, v7}, Lorg/hull/ConvexShape;->localGetSupportingVertex(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)Ljavax/vecmath/Vector3f;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance v2, Lorg/hull/convexhull/HullDesc;

    invoke-direct {v2}, Lorg/hull/convexhull/HullDesc;-><init>()V

    sget v5, Lorg/hull/convexhull/HullFlags;->TRIANGLES:I

    iput v5, v2, Lorg/hull/convexhull/HullDesc;->flags:I

    iput v1, v2, Lorg/hull/convexhull/HullDesc;->vcount:I

    iput-object v0, v2, Lorg/hull/convexhull/HullDesc;->vertices:Lorg/hull/ObjectArrayList;

    new-instance v0, Lorg/hull/convexhull/HullLibrary;

    invoke-direct {v0}, Lorg/hull/convexhull/HullLibrary;-><init>()V

    new-instance v1, Lorg/hull/convexhull/HullResult;

    invoke-direct {v1}, Lorg/hull/convexhull/HullResult;-><init>()V

    invoke-virtual {v0, v2, v1}, Lorg/hull/convexhull/HullLibrary;->createConvexHull(Lorg/hull/convexhull/HullDesc;Lorg/hull/convexhull/HullResult;)Z

    move-result v2

    if-nez v2, :cond_2

    return v3

    :cond_2
    iget-object v2, p0, Lorg/hull/ShapeHull;->vertices:Lorg/hull/ObjectArrayList;

    iget v5, v1, Lorg/hull/convexhull/HullResult;->numOutputVertices:I

    invoke-static {v2, v5, v4}, Lorg/hull/MiscUtil;->resize(Lorg/hull/ObjectArrayList;ILjava/lang/Class;)V

    move v2, v3

    :goto_2
    iget v4, v1, Lorg/hull/convexhull/HullResult;->numOutputVertices:I

    if-ge v2, v4, :cond_3

    iget-object v4, p0, Lorg/hull/ShapeHull;->vertices:Lorg/hull/ObjectArrayList;

    invoke-virtual {v4, v2}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/vecmath/Vector3f;

    iget-object v5, v1, Lorg/hull/convexhull/HullResult;->outputVertices:Lorg/hull/ObjectArrayList;

    invoke-virtual {v5, v2}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/vecmath/Tuple3f;

    invoke-virtual {v4, v5}, Ljavax/vecmath/Tuple3f;->set(Ljavax/vecmath/Tuple3f;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    iget v2, v1, Lorg/hull/convexhull/HullResult;->numIndices:I

    iput v2, p0, Lorg/hull/ShapeHull;->numIndices:I

    iget-object v4, p0, Lorg/hull/ShapeHull;->indices:Lorg/hull/IntArrayList;

    invoke-static {v4, v2, v3}, Lorg/hull/MiscUtil;->resize(Lorg/hull/IntArrayList;II)V

    :goto_3
    iget v2, p0, Lorg/hull/ShapeHull;->numIndices:I

    if-ge v3, v2, :cond_4

    iget-object v2, p0, Lorg/hull/ShapeHull;->indices:Lorg/hull/IntArrayList;

    iget-object v4, v1, Lorg/hull/convexhull/HullResult;->indices:Lorg/hull/IntArrayList;

    invoke-virtual {v4, v3}, Lorg/hull/IntArrayList;->get(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/hull/IntArrayList;->set(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v0, v1}, Lorg/hull/convexhull/HullLibrary;->releaseResult(Lorg/hull/convexhull/HullResult;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public getIndexPointer()Lorg/hull/IntArrayList;
    .locals 1

    iget-object v0, p0, Lorg/hull/ShapeHull;->indices:Lorg/hull/IntArrayList;

    return-object v0
.end method

.method public getVertexPointer()Lorg/hull/ObjectArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hull/ObjectArrayList<",
            "Ljavax/vecmath/Vector3f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/hull/ShapeHull;->vertices:Lorg/hull/ObjectArrayList;

    return-object v0
.end method

.method public numIndices()I
    .locals 1

    iget v0, p0, Lorg/hull/ShapeHull;->numIndices:I

    return v0
.end method

.method public numTriangles()I
    .locals 1

    iget v0, p0, Lorg/hull/ShapeHull;->numIndices:I

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public numVertices()I
    .locals 1

    iget-object v0, p0, Lorg/hull/ShapeHull;->vertices:Lorg/hull/ObjectArrayList;

    invoke-virtual {v0}, Lorg/hull/ObjectArrayList;->size()I

    move-result v0

    return v0
.end method
