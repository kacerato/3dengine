.class public LN9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;


# direct methods
.method public constructor <init>(Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "triangleMeshShape"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN9/a;->a:Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;

    return-void
.end method


# virtual methods
.method public a()Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;
    .locals 1

    iget-object v0, p0, LN9/a;->a:Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;

    return-object v0
.end method
