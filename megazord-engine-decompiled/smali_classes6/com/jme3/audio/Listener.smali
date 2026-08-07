.class public Lcom/jme3/audio/Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final location:Lcom/jme3/math/Vector3f;

.field private renderer:Lcom/jme3/audio/AudioRenderer;

.field private final rotation:Lcom/jme3/math/Quaternion;

.field private final velocity:Lcom/jme3/math/Vector3f;

.field private volume:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/jme3/audio/Listener;->volume:F

    .line 3
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/audio/Listener;->location:Lcom/jme3/math/Vector3f;

    .line 4
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/audio/Listener;->velocity:Lcom/jme3/math/Vector3f;

    .line 5
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/audio/Listener;->rotation:Lcom/jme3/math/Quaternion;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/audio/Listener;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    iput v0, p0, Lcom/jme3/audio/Listener;->volume:F

    .line 8
    iget-object v0, p1, Lcom/jme3/audio/Listener;->location:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/audio/Listener;->location:Lcom/jme3/math/Vector3f;

    .line 9
    iget-object v0, p1, Lcom/jme3/audio/Listener;->velocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/audio/Listener;->velocity:Lcom/jme3/math/Vector3f;

    .line 10
    iget-object v0, p1, Lcom/jme3/audio/Listener;->rotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0}, Lcom/jme3/math/Quaternion;->clone()Lcom/jme3/math/Quaternion;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/audio/Listener;->rotation:Lcom/jme3/math/Quaternion;

    .line 11
    iget p1, p1, Lcom/jme3/audio/Listener;->volume:F

    iput p1, p0, Lcom/jme3/audio/Listener;->volume:F

    return-void
.end method


# virtual methods
.method public getDirection()Lcom/jme3/math/Vector3f;
    .locals 2

    iget-object v0, p0, Lcom/jme3/audio/Listener;->rotation:Lcom/jme3/math/Quaternion;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/jme3/math/Quaternion;->getRotationColumn(I)Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getLeft()Lcom/jme3/math/Vector3f;
    .locals 2

    iget-object v0, p0, Lcom/jme3/audio/Listener;->rotation:Lcom/jme3/math/Quaternion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/math/Quaternion;->getRotationColumn(I)Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/audio/Listener;->location:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getRotation()Lcom/jme3/math/Quaternion;
    .locals 1

    iget-object v0, p0, Lcom/jme3/audio/Listener;->rotation:Lcom/jme3/math/Quaternion;

    return-object v0
.end method

.method public getUp()Lcom/jme3/math/Vector3f;
    .locals 2

    iget-object v0, p0, Lcom/jme3/audio/Listener;->rotation:Lcom/jme3/math/Quaternion;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Quaternion;->getRotationColumn(I)Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getVelocity()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/audio/Listener;->velocity:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    iget v0, p0, Lcom/jme3/audio/Listener;->volume:F

    return v0
.end method

.method public setLocation(Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/audio/Listener;->location:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/audio/Listener;->renderer:Lcom/jme3/audio/AudioRenderer;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/jme3/audio/ListenerParam;->Position:Lcom/jme3/audio/ListenerParam;

    invoke-interface {p1, p0, v0}, Lcom/jme3/audio/AudioRenderer;->updateListenerParam(Lcom/jme3/audio/Listener;Lcom/jme3/audio/ListenerParam;)V

    :cond_0
    return-void
.end method

.method public setRenderer(Lcom/jme3/audio/AudioRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/audio/Listener;->renderer:Lcom/jme3/audio/AudioRenderer;

    return-void
.end method

.method public setRotation(Lcom/jme3/math/Quaternion;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/audio/Listener;->rotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    iget-object p1, p0, Lcom/jme3/audio/Listener;->renderer:Lcom/jme3/audio/AudioRenderer;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/jme3/audio/ListenerParam;->Rotation:Lcom/jme3/audio/ListenerParam;

    invoke-interface {p1, p0, v0}, Lcom/jme3/audio/AudioRenderer;->updateListenerParam(Lcom/jme3/audio/Listener;Lcom/jme3/audio/ListenerParam;)V

    :cond_0
    return-void
.end method

.method public setVelocity(Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/audio/Listener;->velocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/audio/Listener;->renderer:Lcom/jme3/audio/AudioRenderer;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/jme3/audio/ListenerParam;->Velocity:Lcom/jme3/audio/ListenerParam;

    invoke-interface {p1, p0, v0}, Lcom/jme3/audio/AudioRenderer;->updateListenerParam(Lcom/jme3/audio/Listener;Lcom/jme3/audio/ListenerParam;)V

    :cond_0
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    iput p1, p0, Lcom/jme3/audio/Listener;->volume:F

    iget-object p1, p0, Lcom/jme3/audio/Listener;->renderer:Lcom/jme3/audio/AudioRenderer;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/jme3/audio/ListenerParam;->Volume:Lcom/jme3/audio/ListenerParam;

    invoke-interface {p1, p0, v0}, Lcom/jme3/audio/AudioRenderer;->updateListenerParam(Lcom/jme3/audio/Listener;Lcom/jme3/audio/ListenerParam;)V

    :cond_0
    return-void
.end method
