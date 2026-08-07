.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$o;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$m;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$k;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$l;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$n;
    }
.end annotation


# static fields
.field public static final F1:Ljava/lang/String; = "MeshCurve"

.field public static final G1:Ljava/lang/Class;


# instance fields
.field public A1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$n;

.field public B1:F

.field public C1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$l;

.field public final D0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public D1:Z

.field public E:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

.field public E1:LJAVARuntime/Component;

.field public F:I

.field public final G:Ljava/lang/Object;

.field public H:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public I:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public J:Z

.field public K:Z

.field public final L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;",
            ">;"
        }
    .end annotation
.end field

.field public final M:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final N:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final O:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;",
            ">;"
        }
    .end annotation
.end field

.field public final P:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;",
            ">;"
        }
    .end annotation
.end field

.field public final Q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;",
            ">;"
        }
    .end annotation
.end field

.field public final R:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;",
            ">;"
        }
    .end annotation
.end field

.field public S:Z

.field public T:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public U:I

.field public final V:LUb/f;

.field public final W:[F

.field public final X:Ljava/lang/Object;

.field public final X0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final Y:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final Y0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final Z:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final Z0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final a1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final b1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field private bakeMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$k;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public final c1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field private curveQuality:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public final d1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field private deformMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$l;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public final e1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final f1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field private fitCurveV2:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lwb/f;
    .end annotation
.end field

.field private forwardAxis:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$m;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public final g1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final h1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final i1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final j1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final k1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final l1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final m1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final n1:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

.field public final o1:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

.field private offset:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public final p1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field private pathController:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public final q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final q1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final r1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final s1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field private scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lwb/f;
    .end annotation
.end field

.field private simplifyAngle:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lwb/f;
    .end annotation
.end field

.field private spacing:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lwb/f;
    .end annotation
.end field

.field private spacingMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$n;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lwb/f;
    .end annotation
.end field

.field private spacingPadding:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lwb/f;
    .end annotation
.end field

.field private startOffset:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public t1:F

.field public u1:F

.field private upMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$o;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public final v0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public v1:F

.field public w1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$m;

.field public x1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$o;

.field public y1:Z

.field public z1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->G1:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$b;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$b;-><init>()V

    invoke-static {v0}, Lxb/a;->b(Lxb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "MeshCurve"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->curveQuality:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->simplifyAngle:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->spacing:F

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$n;->Bounds:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$n;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->spacingMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$n;

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->spacingPadding:F

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$l;->Curve:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$l;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->deformMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$l;

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->startOffset:F

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2, v0, v0, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->offset:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0, v1, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$m;->Z:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$m;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->forwardAxis:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$m;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$o;->FixY:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$o;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->upMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$o;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->fitCurveV2:Z

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$k;->Dynamic:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$k;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->bakeMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$k;

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->pathController:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;

    const/4 v1, -0x1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->F:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->G:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->L:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->M:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->N:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->O:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->P:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->Q:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->R:Ljava/util/List;

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->U:I

    new-instance v1, LUb/f;

    invoke-direct {v1}, LUb/f;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->V:LUb/f;

    const/16 v1, 0x10

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->W:[F

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->X:Ljava/lang/Object;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->Y:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->Z:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->v0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->D0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->X0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->Y0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->Z0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->a1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->b1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->c1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->d1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->e1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->f1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->g1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->h1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->i1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->j1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->k1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->l1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->m1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->n1:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->o1:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->p1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->q1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->r1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->s1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->t1:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->u1:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->v1:F

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->w1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$m;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->x1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$o;

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->y1:Z

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->z1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$k;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->A1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$n;

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->B1:F

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->C1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$l;

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->D1:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;
    .locals 0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->findCurvePathInChildren(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->spacingPadding:F

    return p0
.end method

.method public static synthetic access$1002(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->spacingPadding:F

    return p1
.end method

.method public static synthetic access$102(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->E:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    return-object p1
.end method

.method public static synthetic access$1102(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$k;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$k;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->bakeMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$k;

    return-object p1
.end method

.method public static synthetic access$1202(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->D1:Z

    return p1
.end method

.method public static synthetic access$1302(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$m;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$m;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->forwardAxis:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$m;

    return-object p1
.end method

.method public static synthetic access$1402(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$o;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$o;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->upMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$o;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;)Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->pathController:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;)Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->pathController:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;

    return-object p1
.end method

.method public static synthetic access$302(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->F:I

    return p1
.end method

.method public static synthetic access$402(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->J:Z

    return p1
.end method

.method public static synthetic access$500(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->getPathController()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->curveQuality:F

    return p0
.end method

.method public static synthetic access$602(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->curveQuality:F

    return p1
.end method

.method public static synthetic access$700(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->spacing:F

    return p0
.end method

.method public static synthetic access$702(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->spacing:F

    return p1
.end method

.method public static synthetic access$802(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$n;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$n;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->spacingMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$n;

    return-object p1
.end method

.method public static synthetic access$902(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$l;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$l;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->deformMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$l;

    return-object p1
.end method

.method private bakeMeshAlongCurve()V
    .locals 22

    move-object/from16 v9, p0

    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->S:Z

    iget-object v1, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->G:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v10, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->H:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-nez v10, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :cond_0
    new-instance v8, Ljava/util/HashMap;

    iget-object v2, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->O:Ljava/util/Map;

    invoke-direct {v8, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->getPathController()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->getPath()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_20

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    goto/16 :goto_c

    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v0

    :goto_0
    if-ge v6, v3, :cond_3

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LQ9/b;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v4, :cond_4

    return-void

    :cond_4
    invoke-direct {v9, v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->getBoundsSizeAlongForwardAxis(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)F

    move-result v3

    const v6, 0x38d1b717    # 1.0E-4f

    cmpg-float v7, v3, v6

    if-gtz v7, :cond_5

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->getScaleAlongForwardAxis()F

    move-result v7

    iget-object v12, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->spacingMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$n;

    sget-object v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$n;->WorldUnits:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$n;

    const v14, 0x3c23d70a    # 0.01f

    if-ne v12, v13, :cond_6

    iget v12, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->spacing:F

    invoke-static {v14, v12}, Lgd/b;->M(FF)F

    move-result v12

    goto :goto_1

    :cond_6
    iget v12, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->spacing:F

    invoke-static {v14, v12}, Lgd/b;->M(FF)F

    move-result v12

    mul-float/2addr v12, v3

    mul-float/2addr v12, v7

    :goto_1
    iget v13, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->spacingPadding:F

    const/4 v14, 0x0

    invoke-static {v14, v13}, Lgd/b;->M(FF)F

    move-result v13

    add-float v15, v12, v13

    iget v12, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->startOffset:F

    invoke-static {v14, v12}, Lgd/b;->M(FF)F

    move-result v12

    mul-float/2addr v12, v3

    mul-float/2addr v12, v7

    invoke-direct {v9, v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->getMinBoundsAlongForwardAxis(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)F

    move-result v3

    mul-float/2addr v3, v7

    invoke-direct {v9, v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->getMaxBoundsAlongForwardAxis(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)F

    move-result v13

    mul-float/2addr v13, v7

    sub-float v7, v13, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-direct {v9, v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->getPathLength(Ljava/util/List;)F

    move-result v16

    cmpg-float v17, v7, v6

    if-lez v17, :cond_20

    cmpg-float v17, v16, v6

    if-gtz v17, :cond_7

    goto/16 :goto_c

    :cond_7
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->getPointReferencesSnapshot()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    const/4 v14, 0x1

    if-lt v11, v4, :cond_8

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v14

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointReference;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v9, v5, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->getPathDistanceAtPosition(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v0

    invoke-direct {v9, v5, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->getPathDistanceAtPosition(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v1

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_8

    cmpl-float v4, v1, v0

    if-lez v4, :cond_8

    move/from16 v16, v1

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    :goto_2
    sub-float v1, v16, v0

    cmpg-float v4, v1, v6

    if-gtz v4, :cond_9

    return-void

    :cond_9
    sub-float/2addr v1, v12

    cmpg-float v1, v1, v6

    if-gtz v1, :cond_a

    return-void

    :cond_a
    iget-object v1, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->deformMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$l;

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$l;->Curve:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$l;

    if-ne v1, v4, :cond_b

    add-float/2addr v0, v12

    sub-float v1, v16, v7

    :goto_3
    const/4 v11, 0x0

    goto :goto_4

    :cond_b
    sub-float/2addr v0, v3

    add-float/2addr v0, v12

    sub-float v1, v16, v13

    goto :goto_3

    :goto_4
    cmpg-float v12, v1, v11

    if-gez v12, :cond_c

    return-void

    :cond_c
    invoke-direct {v9, v5, v15, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->countInstances(Ljava/util/List;FFF)I

    move-result v20

    if-gtz v20, :cond_d

    return-void

    :cond_d
    iget-boolean v1, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->fitCurveV2:Z

    if-eqz v1, :cond_f

    sub-float v1, v16, v0

    add-int/lit8 v11, v20, -0x1

    int-to-float v11, v11

    mul-float/2addr v11, v15

    sub-float/2addr v1, v11

    cmpg-float v6, v1, v6

    if-gtz v6, :cond_e

    return-void

    :cond_e
    div-float/2addr v1, v7

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v7, v1, v6

    if-gez v7, :cond_10

    :cond_f
    const/high16 v1, 0x3f800000    # 1.0f

    :cond_10
    mul-float/2addr v3, v1

    mul-float/2addr v13, v1

    sub-float v3, v13, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v6, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->deformMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$l;

    if-ne v6, v4, :cond_11

    sub-float v16, v16, v3

    :goto_5
    const/4 v3, 0x0

    goto :goto_6

    :cond_11
    sub-float v16, v16, v13

    goto :goto_5

    :goto_6
    cmpg-float v3, v16, v3

    if-gez v3, :cond_12

    return-void

    :cond_12
    if-gtz v20, :cond_13

    return-void

    :cond_13
    iget-object v3, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->q1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v6, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-boolean v3, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->fitCurveV2:Z

    if-eqz v3, :cond_16

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_16

    iget-object v3, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->forwardAxis:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$m;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_15

    if-eq v3, v14, :cond_14

    iget-object v3, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->q1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v6, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v6

    mul-float/2addr v6, v1

    invoke-virtual {v3, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->j2(F)F

    goto :goto_7

    :cond_14
    iget-object v3, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->q1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v6, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v6

    mul-float/2addr v6, v1

    invoke-virtual {v3, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->i2(F)F

    goto :goto_7

    :cond_15
    iget-object v3, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->q1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v6, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v6

    mul-float/2addr v6, v1

    invoke-virtual {v3, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->e2(F)F

    :cond_16
    :goto_7
    new-instance v7, Ljava/util/HashMap;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v7, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->deformMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$l;

    if-ne v1, v4, :cond_1b

    invoke-direct {v9, v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->buildPathDataBuffer(Ljava/util/List;)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v1

    if-nez v1, :cond_17

    return-void

    :cond_17
    iget-object v3, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->forwardAxis:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$m;

    iget-object v4, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->q1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v5, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->offset:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-object v11, v1

    move v12, v2

    move v13, v15

    move/from16 v21, v14

    move v14, v0

    move v6, v15

    move/from16 v15, v20

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    invoke-static/range {v10 .. v18}, Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative;->a(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IFFILcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$m;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v3

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_18
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-nez v11, :cond_19

    goto :goto_8

    :cond_19
    iget-object v8, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->forwardAxis:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$m;

    iget-object v10, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->q1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v15, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->offset:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-object v12, v1

    move v13, v2

    move v14, v6

    move-object/from16 v19, v15

    move v15, v0

    move/from16 v16, v20

    move-object/from16 v17, v8

    move-object/from16 v18, v10

    invoke-static/range {v11 .. v19}, Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative;->a(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IFFILcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$m;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v8

    if-eqz v8, :cond_18

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v7, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_1a
    move-object v0, v7

    goto :goto_a

    :cond_1b
    move/from16 v21, v14

    move v6, v15

    new-instance v11, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v1, v20, 0x10

    invoke-direct {v11, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    :try_start_2
    iget-object v12, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->q1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-object/from16 v1, p0

    move-object v2, v5

    move v3, v6

    move v4, v0

    move/from16 v5, v16

    move-object v6, v11

    move-object v0, v7

    move-object v7, v12

    move-object v12, v8

    move/from16 v8, v20

    invoke-direct/range {v1 .. v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->fillInstanceMatrices(Ljava/util/List;FFFLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;I)I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-gtz v1, :cond_1c

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    return-void

    :cond_1c
    :try_start_3
    invoke-static {v10, v11, v1}, Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative;->b(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v3

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-nez v5, :cond_1e

    goto :goto_9

    :cond_1e
    invoke-static {v5, v11, v1}, Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative;->b(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v5

    if-eqz v5, :cond_1d

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_9

    :catchall_1
    move-exception v0

    goto :goto_b

    :cond_1f
    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :goto_a
    iget-object v1, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->X:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-object v2, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->P:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iget-object v2, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->P:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iput-object v3, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->I:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-object v0, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->P:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->S:Z

    monitor-exit v1

    return-void

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :goto_b
    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    throw v0

    :catch_0
    :cond_20
    :goto_c
    return-void

    :goto_d
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public static buildDefault(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;-><init>()V

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>()V

    const-string v3, "Mesh"

    invoke-direct {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    invoke-static {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/World/b;->e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>()V

    const-string v3, "Points"

    invoke-direct {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    invoke-static {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/World/b;->e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;-><init>()V

    invoke-virtual {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-direct {v2, v3, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Point "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>()V

    invoke-direct {v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    invoke-static {v3, v1}, Lcom/itsmagic/engine/Engines/Engine/World/b;->e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;-><init>()V

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private buildPathDataBuffer(Ljava/util/List;)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LQ9/b;",
            ">;)",
            "Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    :cond_0
    const/4 v1, 0x0

    goto/16 :goto_7

    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0xd

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->T:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v4, :cond_2

    iget v5, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->U:I

    if-eq v5, v3, :cond_4

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_3
    new-instance v4, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v4, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    iput-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->T:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->U:I

    :cond_4
    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->T:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->Y:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->Z:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v6, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v7, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->v0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v8, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->D0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v9, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->X0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v10, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->Y0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->Z0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    if-ge v13, v15, :cond_10

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, LQ9/b;

    if-eqz v15, :cond_5

    invoke-virtual {v15}, LQ9/b;->c()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v16

    if-nez v16, :cond_6

    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_6

    :cond_6
    invoke-virtual {v15}, LQ9/b;->c()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-lez v13, :cond_7

    invoke-virtual {v5, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->j0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v2

    add-float/2addr v14, v2

    :cond_7
    invoke-virtual {v15}, LQ9/b;->a()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    const v17, 0x322bcc77    # 1.0E-8f

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->f1()F

    move-result v18

    cmpl-float v18, v18, v17

    if-lez v18, :cond_8

    invoke-virtual {v6, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->E1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_4

    :cond_8
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/high16 v12, 0x3f800000    # 1.0f

    if-ge v13, v2, :cond_b

    add-int/lit8 v2, v13, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LQ9/b;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, LQ9/b;->c()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    goto :goto_1

    :cond_9
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_a

    invoke-virtual {v11, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->J2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_2

    :cond_a
    const/4 v2, 0x0

    invoke-virtual {v11, v2, v2, v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T1(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_3

    :cond_b
    const/4 v2, 0x0

    if-lez v13, :cond_c

    invoke-virtual {v11, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->J2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_2
    const/4 v2, 0x0

    goto :goto_3

    :cond_c
    invoke-virtual {v11, v2, v2, v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T1(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_3
    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->f1()F

    move-result v18

    cmpg-float v18, v18, v17

    if-gtz v18, :cond_d

    invoke-virtual {v11, v2, v2, v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T1(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_d
    invoke-virtual {v6, v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->E1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_4
    invoke-direct {v0, v15, v6, v7, v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->resolveUpAndRight(LQ9/b;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    if-lez v13, :cond_e

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->f1()F

    move-result v2

    cmpl-float v2, v2, v17

    if-lez v2, :cond_e

    invoke-virtual {v8, v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v2

    const/4 v12, 0x0

    cmpg-float v2, v2, v12

    if-gez v2, :cond_f

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->B1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->B1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_5

    :cond_e
    const/4 v12, 0x0

    :cond_f
    :goto_5
    invoke-virtual {v9, v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v10, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    mul-int/lit8 v2, v13, 0xd

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v15

    invoke-virtual {v3, v2, v15}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    add-int/lit8 v15, v2, 0x1

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v12

    invoke-virtual {v3, v15, v12}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    add-int/lit8 v12, v2, 0x2

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v15

    invoke-virtual {v3, v12, v15}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    add-int/lit8 v12, v2, 0x3

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v15

    invoke-virtual {v3, v12, v15}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    add-int/lit8 v12, v2, 0x4

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v15

    invoke-virtual {v3, v12, v15}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    add-int/lit8 v12, v2, 0x5

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v15

    invoke-virtual {v3, v12, v15}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    add-int/lit8 v12, v2, 0x6

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v15

    invoke-virtual {v3, v12, v15}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    add-int/lit8 v12, v2, 0x7

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v15

    invoke-virtual {v3, v12, v15}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    add-int/lit8 v12, v2, 0x8

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v15

    invoke-virtual {v3, v12, v15}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    add-int/lit8 v12, v2, 0x9

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v15

    invoke-virtual {v3, v12, v15}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    add-int/lit8 v12, v2, 0xa

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v15

    invoke-virtual {v3, v12, v15}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    add-int/lit8 v12, v2, 0xb

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v15

    invoke-virtual {v3, v12, v15}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    add-int/lit8 v2, v2, 0xc

    invoke-virtual {v3, v2, v14}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    :goto_6
    return-object v1

    :cond_10
    return-object v3

    :goto_7
    return-object v1
.end method

.method private clearChildrenAfterBake()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->M(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lyb/e;->j(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private countInstances(Ljava/util/List;FFF)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "path",
            "safeSpacing",
            "safeStartOffset",
            "maxStart"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LQ9/b;",
            ">;FFF)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->a1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->b1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LQ9/b;

    add-int/lit8 v3, v3, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LQ9/b;

    invoke-virtual {v5}, LQ9/b;->c()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v6}, LQ9/b;->c()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->j0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v5

    const v6, 0x38d1b717    # 1.0E-4f

    cmpg-float v6, v5, v6

    if-gtz v6, :cond_0

    goto :goto_0

    :cond_0
    :goto_1
    add-float v6, v2, v5

    cmpl-float v7, v6, p3

    if-ltz v7, :cond_2

    cmpl-float v6, p3, p4

    if-lez v6, :cond_1

    return v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    add-float/2addr p3, p2

    goto :goto_1

    :cond_2
    move v2, v6

    goto :goto_0

    :cond_3
    return v4
.end method

.method private fillInstanceMatrices(Ljava/util/List;FFFLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;I)I
    .locals 27
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "path",
            "safeSpacing",
            "safeStartOffset",
            "maxStart",
            "matrices",
            "scaleForBake",
            "maxInstances"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LQ9/b;",
            ">;FFF",
            "Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            "I)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->e1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->f1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->g1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->h1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v6, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->i1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v7, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->j1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v8, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->k1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v9, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->l1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v10, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->m1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->n1:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object v12, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->o1:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object v13, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->V:LUb/f;

    iget-object v14, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->W:[F

    iget-object v15, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->forwardAxis:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$m;

    invoke-direct {v0, v15, v12}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->getForwardAxisAdjust(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$m;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    const/16 v16, 0x0

    move/from16 v17, p3

    move/from16 v15, v16

    move/from16 v18, v15

    const/16 v19, 0x0

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v20

    move-object/from16 v21, v14

    const/4 v14, 0x1

    move-object/from16 v22, v13

    add-int/lit8 v13, v20, -0x1

    if-ge v15, v13, :cond_7

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LQ9/b;

    add-int/lit8 v15, v15, 0x1

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, LQ9/b;

    invoke-virtual {v13}, LQ9/b;->c()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual/range {v20 .. v20}, LQ9/b;->c()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v14

    invoke-virtual {v3, v14}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->j0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v14

    const v23, 0x38d1b717    # 1.0E-4f

    cmpg-float v23, v14, v23

    if-gtz v23, :cond_0

    move-object/from16 v0, p5

    move-object/from16 v25, v4

    move/from16 v23, v15

    move-object/from16 v26, v21

    move-object/from16 v14, v22

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object v15, v12

    move-object/from16 v12, p6

    goto/16 :goto_5

    :cond_0
    move/from16 v23, v15

    move/from16 v1, v18

    move/from16 v15, p7

    :goto_1
    if-ge v1, v15, :cond_6

    add-float v18, v19, v14

    cmpl-float v18, v18, v17

    if-ltz v18, :cond_6

    cmpl-float v18, v17, p4

    if-lez v18, :cond_1

    return v1

    :cond_1
    sub-float v18, v17, v19

    div-float v15, v18, v14

    invoke-virtual {v7, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v7, v3, v15}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->m1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V

    move/from16 v24, v14

    invoke-virtual {v13}, LQ9/b;->a()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v14

    move-object/from16 v25, v12

    invoke-virtual/range {v20 .. v20}, LQ9/b;->a()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v12

    const v18, 0x322bcc77    # 1.0E-8f

    if-eqz v14, :cond_2

    if-eqz v12, :cond_2

    invoke-virtual {v14}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->f1()F

    move-result v26

    cmpl-float v26, v26, v18

    if-lez v26, :cond_2

    invoke-virtual {v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->f1()F

    move-result v26

    cmpl-float v26, v26, v18

    if-lez v26, :cond_2

    invoke-virtual {v4, v14}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4, v12, v15}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->m1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->E1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_2

    :cond_2
    invoke-virtual {v4, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->J2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->E1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_2
    invoke-direct {v0, v13, v4, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->resolveUpAndRight(LQ9/b;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    if-lez v1, :cond_3

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->f1()F

    move-result v12

    cmpl-float v12, v12, v18

    if-lez v12, :cond_3

    invoke-virtual {v6, v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v12

    const/4 v14, 0x0

    cmpg-float v12, v12, v14

    if-gez v12, :cond_4

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->B1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->B1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    :cond_4
    :goto_3
    invoke-virtual {v9, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v10, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v8, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v12

    iget-object v15, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->offset:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v15

    invoke-virtual {v12, v15}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->x1(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v12, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->offset:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v12

    invoke-virtual {v5, v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->x1(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->G(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v12, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->offset:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v12

    invoke-virtual {v4, v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->x1(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->G(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v7, v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->G(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Q0()V

    const/4 v12, 0x1

    invoke-virtual {v11, v4, v5, v12, v12}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->p0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;ZZ)V

    move-object/from16 v15, v25

    invoke-virtual {v11, v15}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->v0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    move-object/from16 v12, p6

    move-object/from16 v14, v22

    invoke-virtual {v14, v7, v11, v12}, LUb/f;->j1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, LUb/f;->B([F)[F

    mul-int/lit8 v18, v1, 0x10

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move/from16 v2, v16

    :goto_4
    const/16 v3, 0x10

    if-ge v2, v3, :cond_5

    add-int v3, v18, v2

    move-object/from16 v25, v4

    aget v4, v0, v2

    move-object/from16 v26, v0

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v4, v25

    move-object/from16 v0, v26

    goto :goto_4

    :cond_5
    move-object/from16 v26, v0

    move-object/from16 v25, v4

    move-object/from16 v0, p5

    add-int/lit8 v1, v1, 0x1

    add-float v17, v17, p2

    move-object/from16 v0, p0

    move-object v12, v15

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v21, v26

    move/from16 v15, p7

    move-object/from16 v22, v14

    move/from16 v14, v24

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p5

    move-object/from16 v25, v4

    move-object v15, v12

    move/from16 v24, v14

    move-object/from16 v26, v21

    move-object/from16 v14, v22

    move-object/from16 v12, p6

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    add-float v19, v19, v24

    move/from16 v18, v1

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v13, v14

    move-object v12, v15

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v15, v23

    move-object/from16 v4, v25

    move-object/from16 v14, v26

    goto/16 :goto_0

    :cond_7
    return v18
.end method

.method private findCurvePathInChildren(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "root"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-class v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->l0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->M(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->findCurvePathInChildren(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private findPathPointParent(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "root"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-class v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->l0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->O0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object p1, v0

    :cond_1
    return-object p1

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->M(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->findPathPointParent(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    if-eqz v2, :cond_3

    return-object v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private generateCollider()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->I:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->Collider:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    if-nez v0, :cond_1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    :cond_1
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getShape()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    move-result-object v1

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Model:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getCollisionVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->I:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eq v1, v3, :cond_3

    :cond_2
    iput-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->shape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->I:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->setVertex(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    :cond_3
    return-void
.end method

.method private generateModelRenderers()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->P:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->getMaterialFileFromKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->getOrCreateOutputRenderer(Ljava/lang/String;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v5

    if-eq v5, v2, :cond_1

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->setModel(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getMaterialFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->setMaterialFile(Ljava/lang/String;)V

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->setEnabled(Z)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->removeUnusedOutputRenderers(Ljava/util/List;)V

    return-void
.end method

.method private getBoundsSizeAlongForwardAxis(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->m0()Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->forwardAxis:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$m;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->N()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->S()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->M()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->R()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->L()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->Q()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1
.end method

.method private getEndCapDistance()F
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->H:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->getBoundsSizeAlongForwardAxis(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)F

    move-result v0

    const v1, 0x38d1b717    # 1.0E-4f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->getScaleAlongForwardAxis()F

    move-result v1

    mul-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method private getForwardAxisAdjust(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$m;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "axis",
            "out"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Q0()V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Q0()V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x42b40000    # 90.0f

    invoke-virtual {p2, p1, v0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I(FFF)V

    goto :goto_0

    :cond_1
    const/high16 p1, -0x3d4c0000    # -90.0f

    invoke-virtual {p2, v0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I(FFF)V

    :goto_0
    return-void
.end method

.method private getMaterialFileFromKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    const-string v0, "__NULL__"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method private getMaterialKey(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mr"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getMaterialFile()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    const-string p1, "__NULL__"

    return-object p1
.end method

.method private getMaxBoundsAlongForwardAxis(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->m0()Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->forwardAxis:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$m;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->N()F

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->M()F

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->L()F

    move-result p1

    return p1
.end method

.method private getMinBoundsAlongForwardAxis(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->m0()Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->forwardAxis:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$m;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->S()F

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->R()F

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->Q()F

    move-result p1

    return p1
.end method

.method private getOrCreateOutputRenderer(Ljava/lang/String;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "materialFile"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->Q:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->Q:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->R:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :cond_1
    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->R:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->ModelRenderer:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v2

    if-nez v2, :cond_3

    move-object v0, v1

    :cond_3
    if-nez v0, :cond_4

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    :cond_4
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->R:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->Q:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->setMaterialFile(Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method

.method private getPathController()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->E:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lyb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->E:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->E:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    :cond_1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->resolvePathController()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    move-result-object v0

    return-object v0
.end method

.method private getPathDistanceAtPosition(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LQ9/b;",
            ">;",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            ")F"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/high16 v3, 0x7fc00000    # Float.NaN

    if-eqz v1, :cond_7

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_7

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->a1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->b1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v6, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->c1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v7, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->d1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v8, 0x0

    const v9, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v10, 0x0

    move v11, v8

    :cond_1
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v10, v12, :cond_7

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LQ9/b;

    add-int/lit8 v10, v10, 0x1

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LQ9/b;

    if-eqz v12, :cond_1

    if-nez v13, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v12}, LQ9/b;->c()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v13}, LQ9/b;->c()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v6, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->J2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->f1()F

    move-result v12

    const v13, 0x358637bd    # 1.0E-6f

    cmpg-float v13, v12, v13

    if-gtz v13, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v7, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v13

    invoke-virtual {v13, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->J2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v7, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v13

    div-float/2addr v13, v12

    cmpg-float v14, v13, v8

    if-gez v14, :cond_4

    move v13, v8

    goto :goto_1

    :cond_4
    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v15, v13, v14

    if-lez v15, :cond_5

    move v13, v14

    :cond_5
    :goto_1
    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v14

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v15

    mul-float/2addr v15, v13

    add-float/2addr v14, v15

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v15

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v16

    mul-float v16, v16, v13

    add-float v15, v15, v16

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v16

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v17

    mul-float v17, v17, v13

    add-float v16, v16, v17

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v17

    sub-float v17, v17, v14

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v14

    sub-float/2addr v14, v15

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v15

    sub-float v15, v15, v16

    mul-float v17, v17, v17

    mul-float/2addr v14, v14

    add-float v17, v17, v14

    mul-float/2addr v15, v15

    add-float v17, v17, v15

    float-to-double v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v12, v14

    cmpg-float v14, v17, v9

    if-gez v14, :cond_6

    mul-float/2addr v13, v12

    add-float v3, v11, v13

    move/from16 v9, v17

    :cond_6
    add-float/2addr v11, v12

    goto/16 :goto_0

    :cond_7
    :goto_2
    return v3
.end method

.method private getPathLength(Ljava/util/List;)F
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LQ9/b;",
            ">;)F"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->a1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->b1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LQ9/b;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, LQ9/b;->c()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    if-nez v4, :cond_3

    invoke-virtual {v1, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->j0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v5

    const v6, 0x38d1b717    # 1.0E-4f

    cmpl-float v6, v5, v6

    if-lez v6, :cond_4

    add-float/2addr v0, v5

    :cond_4
    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return v0
.end method

.method private getScaleAlongForwardAxis()F
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->forwardAxis:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$m;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method private removeUnusedOutputRenderers(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "usedRenderers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->ModelRenderer:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->v0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    instance-of v4, v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v4, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Z)V

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->R:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->Q:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    if-eqz v3, :cond_5

    iget-object v4, v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-ne v4, v5, :cond_5

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_7

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->Q:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method

.method private resolvePathController()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->pathController:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->pathController:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->pathController:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->i(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->pathController:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->g()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    instance-of v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v1}, Lyb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->findCurvePathInChildren(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_3

    invoke-direct {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->findPathPointParent(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    if-eqz v1, :cond_3

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->l0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    if-nez v0, :cond_3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;-><init>()V

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    :cond_3
    if-eqz v0, :cond_4

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->E:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;

    invoke-direct {v1, v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->pathController:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->i(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->pathController:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->j()V

    :cond_4
    return-object v0
.end method

.method private resolveUpAndRight(LQ9/b;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "dir",
            "up",
            "right"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->upMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$o;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$o;->AlignToCurve:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$o;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, LQ9/b;->d()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->f1()F

    move-result v0

    const v1, 0x322bcc77    # 1.0E-8f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p3, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->E1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v3, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T1(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    invoke-virtual {p3, v3, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T1(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    :cond_2
    invoke-virtual {p3, v3, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T1(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    :cond_3
    invoke-virtual {p3, v3, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T1(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    :cond_4
    invoke-virtual {p3, v2, v3, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T1(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_0
    invoke-virtual {p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3f7fbe77    # 0.999f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    invoke-virtual {p3, v3, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T1(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    invoke-virtual {p3, v2, v3, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T1(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_5
    invoke-virtual {p4, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->a0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->E1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p3, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->a0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->E1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method private searchMeshesOnChild(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->ModelRenderer:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->L:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->M(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->searchMeshesOnChild(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateBakeSuppressor()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->BakeChildSuppressor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ComponentUtils/BakeChildSuppressor;

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->S:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ComponentUtils/BakeChildSuppressor;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ComponentUtils/BakeChildSuppressor;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    :cond_1
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->setEnabled(Z)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->setEnabled(Z)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    :cond_3
    :goto_0
    return-void
.end method

.method private updateBaseMeshFromChildren()Z
    .locals 9

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->K:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->H:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    move v3, v1

    :goto_2
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->L:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->L:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->M:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_3

    iget v6, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->K:I

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v6, v5, :cond_4

    :cond_3
    move v0, v2

    :cond_4
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->N:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->o0()I

    move-result v4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v4, v5, :cond_6

    :cond_5
    move v0, v2

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    if-nez v0, :cond_8

    return v1

    :cond_8
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->K:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->M:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->N:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->G:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->H:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->O:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_9
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, LAb/g;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)LUb/f;

    move-result-object v0

    invoke-virtual {v0}, LUb/f;->R()LUb/f;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->L:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    :goto_4
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->L:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_d

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->L:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v6

    if-nez v6, :cond_a

    goto :goto_5

    :cond_a
    iget-object v6, v5, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v6}, LAb/g;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)LUb/f;

    move-result-object v6

    invoke-virtual {v0, v6}, LUb/f;->W(LUb/f;)LUb/f;

    move-result-object v6

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative$a;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;LUb/f;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->getMaterialKey(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-nez v8, :cond_b

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->M:Ljava/util/Map;

    iget v7, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->K:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->N:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->o0()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_d
    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative;->c(Ljava/util/List;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative;->c(Ljava/util/List;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_f
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->G:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->H:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->O:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->O:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    monitor-exit v3

    return v2

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;-><init>()V

    .line 3
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->curveQuality:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->curveQuality:F

    .line 4
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->simplifyAngle:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->simplifyAngle:F

    .line 5
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->spacing:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->spacing:F

    .line 6
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->spacingMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$n;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->spacingMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$n;

    .line 7
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->spacingPadding:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->spacingPadding:F

    .line 8
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->deformMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$l;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->deformMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$l;

    .line 9
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->startOffset:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->startOffset:F

    .line 10
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->offset:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->offset:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 11
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 12
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->forwardAxis:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$m;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->forwardAxis:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$m;

    .line 13
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->upMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$o;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->upMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$o;

    .line 14
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->fitCurveV2:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->fitCurveV2:Z

    .line 15
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->bakeMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$k;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->bakeMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$k;

    .line 16
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->pathController:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->f(Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;)Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->pathController:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getBakeMode()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$k;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->bakeMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$k;

    return-object v0
.end method

.method public getCurveQuality()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->curveQuality:F

    return v0
.end method

.method public getDeformMode()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$l;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->deformMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$l;

    return-object v0
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "MeshCurve"

    return-object v0
.end method

.method public getForwardAxis()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$m;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->forwardAxis:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$m;

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f0701f4

    return v0
.end method

.method public getInspectorColor(Landroid/content/Context;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const p1, 0x7f0500a2

    return p1
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

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
    new-instance p1, LW5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;)V

    const-string v2, "Path Controller"

    invoke-direct {p1, v1, v2}, LW5/b;-><init>(LX5/k;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LW5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$d;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->QUALITY:LUc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, LW5/b$a;->SLFloat:LW5/b$a;

    const/4 v4, 0x0

    invoke-direct {p1, v1, v2, v3, v4}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;Z)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    const-string v5, "Curve quality"

    invoke-virtual {p1, v1, p0, v5, v2}, LW5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LW5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LW5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$e;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;)V

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->spacingMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$n;

    sget-object v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$n;->WorldUnits:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$n;

    if-ne v5, v6, :cond_1

    const-string v5, "Spacing (World Units)"

    goto :goto_0

    :cond_1
    const-string v5, "Spacing (Bounds)"

    :goto_0
    invoke-direct {p1, v1, v5, v3, v4}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;Z)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v5, "spacing"

    invoke-virtual {p1, v1, p0, v5, v2}, LW5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LW5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->spacingMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$n;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$f;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;)V

    const-string v5, "Spacing Mode"

    const-class v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$n;

    invoke-static {v5, v6, p1, v1}, LZ5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LZ5/c$r0;)LW5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->deformMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$l;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$g;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;)V

    const-string v5, "Deform Mode"

    const-class v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$l;

    invoke-static {v5, v6, p1, v1}, LZ5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LZ5/c$r0;)LW5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LW5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$h;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$h;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;)V

    const-string v5, "Spacing Padding"

    invoke-direct {p1, v1, v5, v3, v4}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;Z)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v3, "spacingPadding"

    invoke-virtual {p1, v1, p0, v3, v2}, LW5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LW5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->bakeMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$k;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$i;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;)V

    const-string v2, "Bake Mode"

    const-class v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$k;

    invoke-static {v2, v3, p1, v1}, LZ5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LZ5/c$r0;)LW5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->forwardAxis:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$m;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$j;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;)V

    const-string v2, "Forward Axis"

    const-class v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$m;

    invoke-static {v2, v3, p1, v1}, LZ5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LZ5/c$r0;)LW5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->upMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$o;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;)V

    const-string v2, "Up Mode"

    const-class v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$o;

    invoke-static {v2, v3, p1, v1}, LZ5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LZ5/c$r0;)LW5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getOffset()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->offset:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0
.end method

.method public getScale()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0
.end method

.method public getSpacing()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->spacing:F

    return v0
.end method

.method public getSpacingMode()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$n;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->spacingMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$n;

    return-object v0
.end method

.method public getSpacingPadding()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->spacingPadding:F

    return v0
.end method

.method public getStartOffset()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->startOffset:F

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "MeshCurve"

    return-object v0
.end method

.method public getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->MeshCurve:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    return-object v0
.end method

.method public getUpMode()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$o;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->upMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$o;

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public isFitCurve()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->fitCurveV2:Z

    return v0
.end method

.method public lowTaskUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "isEditor"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->lowTaskUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->J:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->J:Z

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->bakeMeshAlongCurve()V

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDetach()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->T:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->T:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->U:I

    :cond_0
    return-void
.end method

.method public parallelUpdate()V
    .locals 6

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->parallelUpdate()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->H:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->getBoundsSizeAlongForwardAxis(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)F

    move-result v0

    const v1, 0x38d1b717    # 1.0E-4f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->getScaleAlongForwardAxis()F

    move-result v1

    mul-float/2addr v0, v1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->curveQuality:F

    div-float/2addr v0, v1

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {v1, v0}, Lgd/b;->M(FF)F

    move-result v0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->resolvePathController()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->setUsageRoot(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->setResolution(F)V

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->simplifyAngle:F

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->setSimplifyAngle(F)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->getEndCapDistance()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->setEndCapDistance(F)V

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->L:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v4, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->M(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->searchMeshesOnChild(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->L:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eq v0, v3, :cond_4

    iput-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->K:Z

    :cond_4
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->updateBaseMeshFromChildren()Z

    move-result v0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->getPathVersion()I

    move-result v1

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->F:I

    if-eq v1, v3, :cond_6

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->F:I

    move v1, v4

    goto :goto_2

    :cond_5
    const/4 v1, -0x1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->F:I

    :cond_6
    move v1, v2

    :goto_2
    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->v1:F

    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->simplifyAngle:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_7

    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->v1:F

    iput-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->J:Z

    :cond_7
    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->t1:F

    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->spacing:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_8

    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->t1:F

    iput-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->J:Z

    :cond_8
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->A1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$n;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->spacingMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$n;

    if-eq v3, v5, :cond_9

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->A1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$n;

    iput-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->J:Z

    :cond_9
    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->B1:F

    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->spacingPadding:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_a

    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->B1:F

    iput-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->J:Z

    :cond_a
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->C1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$l;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->deformMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$l;

    if-eq v3, v5, :cond_b

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->C1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$l;

    iput-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->J:Z

    :cond_b
    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->u1:F

    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->startOffset:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_c

    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->u1:F

    iput-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->J:Z

    :cond_c
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->r1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->offset:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->F0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->r1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->offset:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->J:Z

    :cond_d
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->s1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->F0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->s1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->J:Z

    :cond_e
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->w1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$m;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->forwardAxis:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$m;

    if-eq v3, v5, :cond_f

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->w1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$m;

    iput-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->J:Z

    :cond_f
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->x1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$o;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->upMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$o;

    if-eq v3, v5, :cond_10

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->x1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$o;

    iput-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->J:Z

    :cond_10
    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->y1:Z

    iget-boolean v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->fitCurveV2:Z

    if-eq v3, v5, :cond_11

    iput-boolean v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->y1:Z

    iput-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->J:Z

    :cond_11
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->z1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$k;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->bakeMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$k;

    if-eq v3, v5, :cond_12

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->z1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$k;

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->D1:Z

    :cond_12
    if-nez v1, :cond_13

    if-eqz v0, :cond_14

    :cond_13
    iput-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->J:Z

    :cond_14
    return-void
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "isEditor"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    if-eqz p1, :cond_0

    iget-object p2, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->S3()V

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setScale(F)V

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->X:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->S:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->P:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->generateModelRenderers()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->generateCollider()V

    iget-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->D1:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->bakeMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$k;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$k;->Static:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$k;

    if-ne p2, v0, :cond_1

    invoke-static {}, Lu8/b;->k()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->clearChildrenAfterBake()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->destroyComponent()V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->D1:Z

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->updateBakeSuppressor()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public setBakeMode(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$k;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bakeMode"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->bakeMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$k;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->D1:Z

    :cond_0
    return-void
.end method

.method public setCurveQuality(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "curveQuality"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->curveQuality:F

    return-void
.end method

.method public setDeformMode(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deformMode"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->deformMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$l;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->J:Z

    :cond_0
    return-void
.end method

.method public setFitCurve(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fitCurve"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->fitCurveV2:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->J:Z

    return-void
.end method

.method public setForwardAxis(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$m;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forwardAxis"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->forwardAxis:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$m;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->J:Z

    :cond_0
    return-void
.end method

.method public setOffset(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->offset:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->J:Z

    :cond_0
    return-void
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->E1:LJAVARuntime/Component;

    return-void
.end method

.method public setScale(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->J:Z

    :cond_0
    return-void
.end method

.method public setSpacing(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spacing"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->spacing:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->J:Z

    return-void
.end method

.method public setSpacingMode(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$n;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spacingMode"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->spacingMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$n;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->J:Z

    :cond_0
    return-void
.end method

.method public setSpacingPadding(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spacingPadding"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->spacingPadding:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->J:Z

    return-void
.end method

.method public setStartOffset(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startOffset"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->startOffset:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->J:Z

    return-void
.end method

.method public setUpMode(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$o;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "upMode"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->upMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$o;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->J:Z

    :cond_0
    return-void
.end method

.method public shouldTintIcon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->E1:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/MeshCurve;

    invoke-direct {v0, p0}, LJAVARuntime/MeshCurve;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->E1:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method
