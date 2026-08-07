.class public LA9/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LA9/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LA9/a;


# direct methods
.method public constructor <init>(LA9/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LA9/a$a;->b:LA9/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LA9/a$a;->b:LA9/a;

    invoke-static {v0}, LA9/a;->a(LA9/a;)Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LA9/a$a;->b:LA9/a;

    invoke-static {v0}, LA9/a;->a(LA9/a;)Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v0

    iget-object v1, p0, LA9/a$a;->b:LA9/a;

    invoke-static {v1}, LA9/a;->b(LA9/a;)Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setCollisionShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    :cond_0
    return-void
.end method
