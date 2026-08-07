.class public final Lbb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbb/a$b;
    }
.end annotation


# static fields
.field public static final a:Lsa/e;

.field public static final b:J = 0xa6L

.field public static final c:Lbb/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lsa/e;

    invoke-direct {v0}, Lsa/e;-><init>()V

    sput-object v0, Lbb/a;->a:Lsa/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsa/e;->A(Z)V

    new-instance v0, Lbb/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbb/a$b;-><init>(Lbb/a$a;)V

    sput-object v0, Lbb/a;->c:Lbb/a$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 3

    sget-object v0, Lbb/a;->c:Lbb/a$b;

    const/4 v1, 0x0

    iput-object v1, v0, Lbb/a$b;->c:Lsa/a;

    const/high16 v1, -0x80000000

    iput v1, v0, Lbb/a$b;->d:I

    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, v0, Lbb/a$b;->e:J

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, v0, Lbb/a$b;->f:F

    const/4 v1, 0x0

    iput-boolean v1, v0, Lbb/a$b;->g:Z

    return-void
.end method

.method public static b(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;FZ)Lsa/a;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camera",
            "maxDistance",
            "throttled"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-object v2, Lbb/a;->c:Lbb/a$b;

    invoke-static {v2}, Lbb/a;->c(Lbb/a$b;)Z

    move-result v3

    iget v4, v2, Lbb/a$b;->f:F

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz p2, :cond_1

    iget-boolean p2, v2, Lbb/a$b;->g:Z

    if-eqz p2, :cond_2

    if-nez v4, :cond_2

    if-eqz v3, :cond_3

    iget-wide v3, v2, Lbb/a$b;->e:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0xa6

    cmp-long p2, v3, v5

    if-ltz p2, :cond_3

    goto :goto_1

    :cond_1
    iget-boolean p2, v2, Lbb/a$b;->g:Z

    if-eqz p2, :cond_2

    if-nez v3, :cond_2

    if-eqz v4, :cond_3

    :cond_2
    :goto_1
    invoke-static {v2, p0, p1, v0, v1}, Lbb/a;->g(Lbb/a$b;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;FJ)V

    :cond_3
    iget-object p0, v2, Lbb/a$b;->c:Lsa/a;

    const/4 p2, 0x0

    if-nez p0, :cond_4

    return-object p2

    :cond_4
    invoke-virtual {p0}, Lsa/a;->getDistance()F

    move-result p0

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_5

    iget-object p2, v2, Lbb/a$b;->c:Lsa/a;

    :cond_5
    return-object p2
.end method

.method public static c(Lbb/a$b;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cache"
        }
    .end annotation

    iget p0, p0, Lbb/a$b;->d:I

    invoke-static {}, Lc9/a;->j()I

    move-result v0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;F)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "graphData",
            "maxDistance"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lbb/a;->e(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;FZ)Z

    move-result p0

    return p0
.end method

.method public static e(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;FZ)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "graphData",
            "maxDistance",
            "throttled"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p0

    invoke-static {p0}, Lyb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->mainCameraAllowEditor()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v1, p1, p2}, Lbb/a;->b(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;FZ)Lsa/a;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lsa/a;->getGameObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    if-ne p1, p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0
.end method

.method public static f(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;F)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "graphData",
            "maxDistance"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lbb/a;->e(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;FZ)Z

    move-result p0

    return p0
.end method

.method public static g(Lbb/a$b;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;FJ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cache",
            "camera",
            "maxDistance",
            "now"
        }
    .end annotation

    invoke-static {}, Lc9/a;->j()I

    move-result v0

    iput v0, p0, Lbb/a$b;->d:I

    iput p2, p0, Lbb/a$b;->f:F

    iput-wide p3, p0, Lbb/a$b;->e:J

    iget-object p3, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 p4, 0x1

    if-eqz p3, :cond_1

    iget-object p3, p3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbb/a$b;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p3, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p3, p0, Lbb/a$b;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    sget-object p1, Lbb/a;->a:Lsa/e;

    new-instance p3, Lsa/c;

    iget-object v0, p0, Lbb/a$b;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lbb/a$b;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p3, v0, v1, p2}, Lsa/c;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V

    invoke-virtual {p1, p3}, Lsa/e;->K(Lsa/c;)Lsa/a;

    move-result-object p1

    iput-object p1, p0, Lbb/a$b;->c:Lsa/a;

    iput-boolean p4, p0, Lbb/a$b;->g:Z

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lbb/a$b;->c:Lsa/a;

    iput-boolean p4, p0, Lbb/a$b;->g:Z

    return-void
.end method
