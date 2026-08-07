.class public Lo9/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/jme3/bullet/collision/shapes/CollisionShape;

.field public b:Lcom/jme3/math/Transform;


# direct methods
.method public constructor <init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shape"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo9/b;->a:Lcom/jme3/bullet/collision/shapes/CollisionShape;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lo9/b;->b:Lcom/jme3/math/Transform;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/math/Transform;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "shape",
            "transform"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lo9/b;->a:Lcom/jme3/bullet/collision/shapes/CollisionShape;

    .line 6
    iput-object p2, p0, Lo9/b;->b:Lcom/jme3/math/Transform;

    return-void
.end method


# virtual methods
.method public a()Lcom/jme3/bullet/collision/shapes/CollisionShape;
    .locals 1

    iget-object v0, p0, Lo9/b;->a:Lcom/jme3/bullet/collision/shapes/CollisionShape;

    return-object v0
.end method

.method public b()Lcom/jme3/math/Transform;
    .locals 1

    iget-object v0, p0, Lo9/b;->b:Lcom/jme3/math/Transform;

    return-object v0
.end method

.method public c(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shape"
        }
    .end annotation

    iput-object p1, p0, Lo9/b;->a:Lcom/jme3/bullet/collision/shapes/CollisionShape;

    return-void
.end method

.method public d(Lcom/jme3/math/Transform;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transform"
        }
    .end annotation

    iput-object p1, p0, Lo9/b;->b:Lcom/jme3/math/Transform;

    return-void
.end method
