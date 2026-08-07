.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"


# static fields
.field public static final x1:Ljava/lang/String; = "MotorcycleWheel"

.field public static final y1:Ljava/lang/Class;


# instance fields
.field public radius:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public suspensionRestLength:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public frictionSlip:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public camber:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public isFront:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lwb/a;
    .end annotation
.end field

.field public steer:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public brake:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public torque:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public transient host:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;

.field public a1:LJAVARuntime/Component;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->y1:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel$a;-><init>()V

    invoke-static {v0}, Lxb/a;->b(Lxb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "MotorcycleWheel"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->radius:F

    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->suspensionRestLength:F

    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->frictionSlip:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->camber:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->isFront:Z

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->steer:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->brake:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->torque:F

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "MotorcycleWheel"

    return-object v0
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "MotorcycleWheel"

    return-object v0
.end method


.method public iconPriority()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->a1:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/MotorcycleWheel;

    invoke-direct {v0, p0}, LJAVARuntime/MotorcycleWheel;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->a1:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method

.method public setRuntime(LJAVARuntime/Component;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->a1:LJAVARuntime/Component;

    return-void
.end method

.method public bindToMotorcycle(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "host"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->host:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;

    return-void
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->radius:F

    return v0
.end method

.method public setRadius(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radius"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->radius:F

    return-void
.end method

.method public getFrictionSlip()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->frictionSlip:F

    return v0
.end method

.method public setFrictionSlip(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frictionSlip"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->frictionSlip:F

    return-void
.end method

.method public getSuspensionRestLength()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->suspensionRestLength:F

    return v0
.end method

.method public setSuspensionRestLength(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "length"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->suspensionRestLength:F

    return-void
.end method

.method public getCamber()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->camber:F

    return v0
.end method

.method public setCamber(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camber"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->camber:F

    return-void
.end method

.method public isFront()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->isFront:Z

    return v0
.end method

.method public setFront(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "front"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->isFront:Z

    return-void
.end method

.method public getSteer()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->steer:F

    return v0
.end method

.method public setSteer(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "steer"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->steer:F

    return-void
.end method

.method public getBrake()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->brake:F

    return v0
.end method

.method public setBrake(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brake"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->brake:F

    return-void
.end method

.method public getTorque()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->torque:F

    return v0
.end method

.method public setTorque(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "torque"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->torque:F

    return-void
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "LW5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    # Radius
    new-instance v1, LW5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel$b;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->RADIUS:LUc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, LW5/b$a;->SLFloat:LW5/b$a;

    invoke-direct {v1, v2, v3, v4}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    # Suspension Rest Length
    new-instance v1, LW5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel$c;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SUSPENSION_REST_LENGTH:LUc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    # Friction Slip
    new-instance v1, LW5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel$d;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->FRICTION_SLIP:LUc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    # Camber
    new-instance v1, LW5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel$e;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;)V

    const-string v3, "Camber"

    invoke-direct {v1, v2, v3, v4}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    # Is Front Wheel
    new-instance v1, LW5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel$f;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;)V

    const-string v3, "Front wheel"

    sget-object v4, LW5/b$a;->SLBoolean:LW5/b$a;

    invoke-direct {v1, v2, v3, v4}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
