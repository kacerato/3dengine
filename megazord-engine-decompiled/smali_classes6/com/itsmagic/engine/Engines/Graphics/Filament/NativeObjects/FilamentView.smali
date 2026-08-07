.class public Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;
.super Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;
.source "SourceFile"


# static fields
.field private static final concreteCameraReferences:Lye/X;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lye/X<",
            "Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;",
            ">;"
        }
    .end annotation
.end field

.field private static final concreteColorGradingReferences:Lye/X;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lye/X<",
            "Lkc/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final concreteFBOReferences:Lye/X;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lye/X<",
            "Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;",
            ">;"
        }
    .end annotation
.end field

.field private static final concreteRenderTargetReferences:Lye/X;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lye/X<",
            "Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;",
            ">;"
        }
    .end annotation
.end field

.field private static final concreteSceneReferences:Lye/X;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lye/X<",
            "Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lea/b;


# instance fields
.field private activeCamera:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private activeFBO:Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private activeRenderTarget:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private activeScene:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public b:Z

.field public c:Lcom/google/android/filament/v;

.field private colorGrading:Lkc/a;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private final view:Lcom/google/android/filament/View;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView$a;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->d:Lea/b;

    new-instance v0, Lye/X;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lye/X;-><init>(I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->concreteFBOReferences:Lye/X;

    new-instance v0, Lye/X;

    invoke-direct {v0, v1}, Lye/X;-><init>(I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->concreteRenderTargetReferences:Lye/X;

    new-instance v0, Lye/X;

    invoke-direct {v0, v1}, Lye/X;-><init>(I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->concreteCameraReferences:Lye/X;

    new-instance v0, Lye/X;

    invoke-direct {v0, v1}, Lye/X;-><init>(I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->concreteSceneReferences:Lye/X;

    new-instance v0, Lye/X;

    invoke-direct {v0, v1}, Lye/X;-><init>(I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->concreteColorGradingReferences:Lye/X;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/filament/v;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/google/android/filament/v;-><init>(IIII)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->c:Lcom/google/android/filament/v;

    .line 3
    invoke-static {}, Lc9/a;->F()V

    .line 4
    invoke-static {}, Ljc/a;->d()V

    .line 5
    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->x()Lcom/google/android/filament/View;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->view:Lcom/google/android/filament/View;

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/filament/View;->o0(Z)V

    .line 7
    new-instance v2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView$b;

    const-class v3, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    invoke-direct {v2, p0, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView$b;-><init>(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;Ljava/lang/Class;)V

    const/4 v3, 0x1

    new-array v3, v3, [Lea/a;

    aput-object v2, v3, v1

    invoke-super {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;->setDestroyListeners([Lea/a;)V

    .line 8
    invoke-virtual {v0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v2

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->d:Lea/b;

    invoke-static {p0, v2, v3, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLea/b;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/Engine;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;-><init>()V

    .line 10
    new-instance v0, Lcom/google/android/filament/v;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/google/android/filament/v;-><init>(IIII)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->c:Lcom/google/android/filament/v;

    .line 11
    invoke-static {}, Lc9/a;->F()V

    .line 12
    invoke-static {}, Ljc/a;->d()V

    .line 13
    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->x()Lcom/google/android/filament/View;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->view:Lcom/google/android/filament/View;

    .line 14
    invoke-virtual {p1, v1}, Lcom/google/android/filament/View;->o0(Z)V

    .line 15
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView$c;

    const-class v2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    invoke-direct {v0, p0, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView$c;-><init>(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;Ljava/lang/Class;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lea/a;

    aput-object v0, v2, v1

    invoke-super {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;->setDestroyListeners([Lea/a;)V

    .line 16
    invoke-virtual {p1}, Lcom/google/android/filament/View;->v()J

    move-result-wide v2

    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->d:Lea/b;

    invoke-static {p0, v2, v3, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLea/b;Z)V

    return-void
.end method

.method public static synthetic A(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)Lcom/google/android/filament/View;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->view:Lcom/google/android/filament/View;

    return-object p0
.end method

.method public static synthetic B(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;)Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->activeFBO:Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;

    return-object p1
.end method

.method public static D(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camera"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->concreteCameraReferences:Lye/X;

    invoke-virtual {v0, p0}, Lye/X;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static E(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderTarget"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->concreteRenderTargetReferences:Lye/X;

    invoke-virtual {v0, p0}, Lye/X;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static F(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scene"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->concreteSceneReferences:Lye/X;

    invoke-virtual {v0, p0}, Lye/X;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static G(Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fbo"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->concreteFBOReferences:Lye/X;

    invoke-virtual {v0, p0}, Lye/X;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static H(Lkc/a;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorGrading"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->concreteColorGradingReferences:Lye/X;

    invoke-virtual {v0, p0}, Lye/X;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic r()Lye/X;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->concreteFBOReferences:Lye/X;

    return-object v0
.end method

.method public static synthetic s()Lye/X;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->concreteRenderTargetReferences:Lye/X;

    return-object v0
.end method

.method public static synthetic u()Lye/X;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->concreteCameraReferences:Lye/X;

    return-object v0
.end method

.method public static synthetic v()Lye/X;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->concreteSceneReferences:Lye/X;

    return-object v0
.end method

.method public static synthetic w()Lye/X;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->concreteColorGradingReferences:Lye/X;

    return-object v0
.end method

.method public static synthetic x(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->b:Z

    return p0
.end method

.method public static synthetic y(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->activeRenderTarget:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    return-object p0
.end method

.method public static synthetic z(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->activeRenderTarget:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    return-object p1
.end method


# virtual methods
.method public C()Lcom/google/android/filament/View;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->view:Lcom/google/android/filament/View;

    return-object v0
.end method

.method public I(Lcom/google/android/filament/View$d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blendMode"
        }
    .end annotation

    invoke-static {}, Lc9/a;->F()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->view:Lcom/google/android/filament/View;

    invoke-virtual {v0, p1}, Lcom/google/android/filament/View;->W(Lcom/google/android/filament/View$d;)V

    return-void
.end method

.method public J(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cam"
        }
    .end annotation

    invoke-static {}, Lc9/a;->F()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->view:Lcom/google/android/filament/View;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->r()Lcom/google/android/filament/Camera;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/View;->Y(Lcom/google/android/filament/Camera;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->view:Lcom/google/android/filament/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/filament/View;->Y(Lcom/google/android/filament/Camera;)V

    :goto_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->activeCamera:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->concreteCameraReferences:Lye/X;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->view:Lcom/google/android/filament/View;

    invoke-virtual {v1}, Lcom/google/android/filament/View;->v()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lye/X;->cb(JLjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public K(Lkc/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorGrading"
        }
    .end annotation

    invoke-static {}, Lc9/a;->F()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->view:Lcom/google/android/filament/View;

    invoke-virtual {p1}, Lkc/a;->r()Lcom/google/android/filament/ColorGrading;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/View;->a0(Lcom/google/android/filament/ColorGrading;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->view:Lcom/google/android/filament/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/filament/View;->a0(Lcom/google/android/filament/ColorGrading;)V

    :goto_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->colorGrading:Lkc/a;

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->concreteColorGradingReferences:Lye/X;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->view:Lcom/google/android/filament/View;

    invoke-virtual {v1}, Lcom/google/android/filament/View;->v()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lye/X;->cb(JLjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public L(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    invoke-static {}, Lc9/a;->F()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->view:Lcom/google/android/filament/View;

    invoke-virtual {v0, p1}, Lcom/google/android/filament/View;->o0(Z)V

    return-void
.end method

.method public M(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderTarget"
        }
    .end annotation

    invoke-static {}, Lc9/a;->F()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->activeRenderTarget:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->view:Lcom/google/android/filament/View;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->s()Lcom/google/android/filament/RenderTarget;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/filament/View;->q0(Lcom/google/android/filament/RenderTarget;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->view:Lcom/google/android/filament/View;

    invoke-virtual {v1, v0}, Lcom/google/android/filament/View;->q0(Lcom/google/android/filament/RenderTarget;)V

    :goto_0
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->activeFBO:Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->activeRenderTarget:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->concreteFBOReferences:Lye/X;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->view:Lcom/google/android/filament/View;

    invoke-virtual {v1}, Lcom/google/android/filament/View;->v()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2, v0}, Lye/X;->cb(JLjava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->concreteRenderTargetReferences:Lye/X;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->view:Lcom/google/android/filament/View;

    invoke-virtual {v0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->activeRenderTarget:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    invoke-virtual {p1, v0, v1, v2}, Lye/X;->cb(JLjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;

    const-string v0, "View already binded to another FBO"

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public N(Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fbo"
        }
    .end annotation

    invoke-static {}, Lc9/a;->F()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->activeRenderTarget:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->view:Lcom/google/android/filament/View;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;->d()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->s()Lcom/google/android/filament/RenderTarget;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/View;->q0(Lcom/google/android/filament/RenderTarget;)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;->d()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->activeRenderTarget:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->view:Lcom/google/android/filament/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/filament/View;->q0(Lcom/google/android/filament/RenderTarget;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->activeRenderTarget:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    :goto_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->activeFBO:Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;

    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->concreteFBOReferences:Lye/X;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->view:Lcom/google/android/filament/View;

    invoke-virtual {v0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->activeFBO:Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;

    invoke-virtual {p1, v0, v1, v2}, Lye/X;->cb(JLjava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->concreteRenderTargetReferences:Lye/X;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->view:Lcom/google/android/filament/View;

    invoke-virtual {v0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->activeRenderTarget:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    invoke-virtual {p1, v0, v1, v2}, Lye/X;->cb(JLjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;

    const-string v0, "View already binded to another FBO"

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public O(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scene"
        }
    .end annotation

    invoke-static {}, Lc9/a;->F()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->view:Lcom/google/android/filament/View;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->B()Lcom/google/android/filament/Scene;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/View;->s0(Lcom/google/android/filament/Scene;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->view:Lcom/google/android/filament/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/filament/View;->s0(Lcom/google/android/filament/Scene;)V

    :goto_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->activeScene:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->concreteSceneReferences:Lye/X;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->view:Lcom/google/android/filament/View;

    invoke-virtual {v1}, Lcom/google/android/filament/View;->v()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lye/X;->cb(JLjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public P(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "left",
            "bottom",
            "width",
            "height"
        }
    .end annotation

    invoke-static {}, Lc9/a;->F()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->c:Lcom/google/android/filament/v;

    iput p1, v0, Lcom/google/android/filament/v;->a:I

    iput p2, v0, Lcom/google/android/filament/v;->b:I

    iput p3, v0, Lcom/google/android/filament/v;->c:I

    iput p4, v0, Lcom/google/android/filament/v;->d:I

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->view:Lcom/google/android/filament/View;

    invoke-virtual {p1, v0}, Lcom/google/android/filament/View;->D0(Lcom/google/android/filament/v;)V

    return-void
.end method

.method public Q(Lcom/google/android/filament/v;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewPort"
        }
    .end annotation

    iget v0, p1, Lcom/google/android/filament/v;->a:I

    iget v1, p1, Lcom/google/android/filament/v;->b:I

    iget v2, p1, Lcom/google/android/filament/v;->c:I

    iget p1, p1, Lcom/google/android/filament/v;->d:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->P(IIII)V

    return-void
.end method

.method public R()V
    .locals 4

    invoke-static {}, Lc9/a;->F()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->view:Lcom/google/android/filament/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/filament/View;->q0(Lcom/google/android/filament/RenderTarget;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->activeFBO:Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->activeRenderTarget:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->concreteFBOReferences:Lye/X;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->view:Lcom/google/android/filament/View;

    invoke-virtual {v2}, Lcom/google/android/filament/View;->v()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v1}, Lye/X;->cb(JLjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->concreteRenderTargetReferences:Lye/X;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->view:Lcom/google/android/filament/View;

    invoke-virtual {v2}, Lcom/google/android/filament/View;->v()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v1}, Lye/X;->cb(JLjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public destroyImmediate()V
    .locals 2

    invoke-static {}, Lc9/a;->F()V

    invoke-static {}, Ljc/a;->d()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->b:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->activeRenderTarget:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->activeCamera:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->activeScene:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->colorGrading:Lkc/a;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->b:Z

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->destroyImmediate(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;

    const-string v1, "View still bound to a color grading"

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;

    const-string v1, "View still bound to a scene"

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;

    const-string v1, "View still bound to a camera"

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;

    const-string v1, "View still bound to a render target"

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
