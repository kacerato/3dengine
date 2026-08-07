.class public LWc/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LWc/c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LWc/c;


# direct methods
.method public constructor <init>(LWc/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LWc/c$c;->b:LWc/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lc9/a;->L:Lbd/N;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbd/N;->e(Ljava/lang/Object;)V

    iget-object v0, p0, LWc/c$c;->b:LWc/c;

    new-instance v1, Lcom/jme3/bullet/PhysicsSoftSpace;

    sget-object v2, Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;->DBVT:Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;

    invoke-direct {v1, v2}, Lcom/jme3/bullet/PhysicsSoftSpace;-><init>(Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;)V

    iput-object v1, v0, LWc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    iget-object v0, p0, LWc/c$c;->b:LWc/c;

    iget-object v0, v0, LWc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    new-instance v1, LWc/b;

    invoke-direct {v1}, LWc/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/PhysicsSpace;->addOngoingCollisionListener(Lcom/jme3/bullet/collision/PhysicsCollisionListener;)V

    iget-object v0, p0, LWc/c$c;->b:LWc/c;

    iget-object v0, v0, LWc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/PhysicsSpace;->setMaxSubSteps(I)V

    return-void
.end method
