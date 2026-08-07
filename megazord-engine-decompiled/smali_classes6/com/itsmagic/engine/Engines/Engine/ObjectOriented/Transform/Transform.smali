.class public Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;
.super Lbd/m;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$E;,
        Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;,
        Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;,
        Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$F;
    }
.end annotation


# instance fields
.field public final A:LAb/d;

.field public final B:LUb/i;

.field public final C:Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;

.field public final D:LUb/i;

.field public E:Z

.field public final F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$E;",
            ">;"
        }
    .end annotation
.end field

.field public final G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$E;",
            ">;"
        }
    .end annotation
.end field

.field public transient H:Z

.field public I:LJAVARuntime/Transform;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LAb/h;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public transient e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

.field public editor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public transient g:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;

.field public transient i:J

.field private ignoreParentMatrix:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public transient j:Z

.field public transient k:I

.field public final l:LAb/d;

.field private lockScale:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public final m:LAb/b;

.field public final n:LAb/b;

.field public final o:LAb/c;

.field public final p:LAb/d;

.field private final position:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public final q:LAb/d;

.field public final r:LAb/d;

.field private final rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public final s:LAb/d;

.field private final scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private state:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private staticTransform:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final t:LAb/d;

.field public final u:LAb/d;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lbd/m;-><init>()V

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->position:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 3
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    .line 4
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(F)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 5
    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;->DYNAMIC:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->state:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    const/4 v3, 0x0

    .line 6
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->ignoreParentMatrix:Z

    .line 7
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->lockScale:Z

    .line 8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->b:Ljava/util/List;

    .line 9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->c:Ljava/util/List;

    .line 10
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    .line 11
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->g:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;

    const/4 v4, -0x1

    .line 12
    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->k:I

    .line 13
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->l:LAb/d;

    .line 14
    new-instance v4, LAb/b;

    invoke-direct {v4}, LAb/b;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m:LAb/b;

    .line 15
    new-instance v4, LAb/b;

    invoke-direct {v4}, LAb/b;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->n:LAb/b;

    .line 16
    new-instance v4, LAb/c;

    invoke-direct {v4}, LAb/c;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o:LAb/c;

    .line 17
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p:LAb/d;

    .line 18
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->q:LAb/d;

    .line 19
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r:LAb/d;

    .line 20
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->s:LAb/d;

    .line 21
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->t:LAb/d;

    .line 22
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u:LAb/d;

    .line 23
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A:LAb/d;

    .line 24
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$k;

    invoke-direct {v4, p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$k;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->B:LUb/i;

    .line 25
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$v;

    invoke-direct {v0, p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$v;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->C:Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;

    .line 26
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$w;

    invoke-direct {v0, p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$w;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->D:LUb/i;

    .line 27
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->E:Z

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->F:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->G:Ljava/util/List;

    .line 30
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->onDeserialized()V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lbd/m;-><init>()V

    .line 32
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->position:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 33
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    .line 34
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(F)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 35
    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;->DYNAMIC:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->state:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    const/4 v3, 0x0

    .line 36
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->ignoreParentMatrix:Z

    .line 37
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->lockScale:Z

    .line 38
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->b:Ljava/util/List;

    .line 39
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->c:Ljava/util/List;

    .line 40
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    .line 41
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->g:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;

    const/4 v4, -0x1

    .line 42
    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->k:I

    .line 43
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->l:LAb/d;

    .line 44
    new-instance v4, LAb/b;

    invoke-direct {v4}, LAb/b;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m:LAb/b;

    .line 45
    new-instance v4, LAb/b;

    invoke-direct {v4}, LAb/b;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->n:LAb/b;

    .line 46
    new-instance v4, LAb/c;

    invoke-direct {v4}, LAb/c;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o:LAb/c;

    .line 47
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p:LAb/d;

    .line 48
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->q:LAb/d;

    .line 49
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r:LAb/d;

    .line 50
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->s:LAb/d;

    .line 51
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->t:LAb/d;

    .line 52
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u:LAb/d;

    .line 53
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A:LAb/d;

    .line 54
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$k;

    invoke-direct {v4, p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$k;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->B:LUb/i;

    .line 55
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$v;

    invoke-direct {v0, p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$v;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->C:Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;

    .line 56
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$w;

    invoke-direct {v0, p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$w;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->D:LUb/i;

    .line 57
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->E:Z

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->F:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->G:Ljava/util/List;

    .line 60
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->onDeserialized()V

    .line 61
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lbd/m;-><init>()V

    .line 63
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->position:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 64
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    .line 65
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(F)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 66
    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;->DYNAMIC:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->state:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    const/4 v3, 0x0

    .line 67
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->ignoreParentMatrix:Z

    .line 68
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->lockScale:Z

    .line 69
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->b:Ljava/util/List;

    .line 70
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->c:Ljava/util/List;

    .line 71
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    .line 72
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->g:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;

    const/4 v4, -0x1

    .line 73
    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->k:I

    .line 74
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->l:LAb/d;

    .line 75
    new-instance v4, LAb/b;

    invoke-direct {v4}, LAb/b;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m:LAb/b;

    .line 76
    new-instance v4, LAb/b;

    invoke-direct {v4}, LAb/b;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->n:LAb/b;

    .line 77
    new-instance v4, LAb/c;

    invoke-direct {v4}, LAb/c;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o:LAb/c;

    .line 78
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p:LAb/d;

    .line 79
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->q:LAb/d;

    .line 80
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r:LAb/d;

    .line 81
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->s:LAb/d;

    .line 82
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->t:LAb/d;

    .line 83
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u:LAb/d;

    .line 84
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A:LAb/d;

    .line 85
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$k;

    invoke-direct {v4, p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$k;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->B:LUb/i;

    .line 86
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$v;

    invoke-direct {v0, p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$v;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->C:Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;

    .line 87
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$w;

    invoke-direct {v0, p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$w;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->D:LUb/i;

    .line 88
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->E:Z

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->F:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->G:Ljava/util/List;

    .line 91
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    .line 92
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->onDeserialized()V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "state"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Lbd/m;-><init>()V

    .line 94
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->position:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 95
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    .line 96
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(F)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 97
    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;->DYNAMIC:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->state:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    const/4 v3, 0x0

    .line 98
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->ignoreParentMatrix:Z

    .line 99
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->lockScale:Z

    .line 100
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->b:Ljava/util/List;

    .line 101
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->c:Ljava/util/List;

    .line 102
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    .line 103
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->g:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;

    const/4 v4, -0x1

    .line 104
    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->k:I

    .line 105
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->l:LAb/d;

    .line 106
    new-instance v4, LAb/b;

    invoke-direct {v4}, LAb/b;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m:LAb/b;

    .line 107
    new-instance v4, LAb/b;

    invoke-direct {v4}, LAb/b;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->n:LAb/b;

    .line 108
    new-instance v4, LAb/c;

    invoke-direct {v4}, LAb/c;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o:LAb/c;

    .line 109
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p:LAb/d;

    .line 110
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->q:LAb/d;

    .line 111
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r:LAb/d;

    .line 112
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->s:LAb/d;

    .line 113
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->t:LAb/d;

    .line 114
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u:LAb/d;

    .line 115
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A:LAb/d;

    .line 116
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$k;

    invoke-direct {v4, p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$k;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->B:LUb/i;

    .line 117
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$v;

    invoke-direct {v0, p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$v;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->C:Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;

    .line 118
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$w;

    invoke-direct {v0, p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$w;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->D:LUb/i;

    .line 119
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->E:Z

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->F:Ljava/util/List;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->G:Ljava/util/List;

    .line 122
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    .line 123
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->state:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    .line 124
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->onDeserialized()V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "rotation"
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Lbd/m;-><init>()V

    .line 126
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->position:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 127
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    .line 128
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(F)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 129
    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;->DYNAMIC:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->state:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    const/4 v3, 0x0

    .line 130
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->ignoreParentMatrix:Z

    .line 131
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->lockScale:Z

    .line 132
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->b:Ljava/util/List;

    .line 133
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->c:Ljava/util/List;

    .line 134
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    .line 135
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->g:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;

    const/4 v4, -0x1

    .line 136
    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->k:I

    .line 137
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->l:LAb/d;

    .line 138
    new-instance v4, LAb/b;

    invoke-direct {v4}, LAb/b;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m:LAb/b;

    .line 139
    new-instance v4, LAb/b;

    invoke-direct {v4}, LAb/b;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->n:LAb/b;

    .line 140
    new-instance v4, LAb/c;

    invoke-direct {v4}, LAb/c;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o:LAb/c;

    .line 141
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p:LAb/d;

    .line 142
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->q:LAb/d;

    .line 143
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r:LAb/d;

    .line 144
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->s:LAb/d;

    .line 145
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->t:LAb/d;

    .line 146
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u:LAb/d;

    .line 147
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A:LAb/d;

    .line 148
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$k;

    invoke-direct {v4, p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$k;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->B:LUb/i;

    .line 149
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$v;

    invoke-direct {v0, p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$v;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->C:Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;

    .line 150
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$w;

    invoke-direct {v0, p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$w;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->D:LUb/i;

    .line 151
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->E:Z

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->F:Ljava/util/List;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->G:Ljava/util/List;

    .line 154
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    .line 155
    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I3(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    .line 156
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->onDeserialized()V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "rotation",
            "scale"
        }
    .end annotation

    .line 157
    invoke-direct {p0}, Lbd/m;-><init>()V

    .line 158
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->position:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 159
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    .line 160
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(F)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 161
    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;->DYNAMIC:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->state:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    const/4 v3, 0x0

    .line 162
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->ignoreParentMatrix:Z

    .line 163
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->lockScale:Z

    .line 164
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->b:Ljava/util/List;

    .line 165
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->c:Ljava/util/List;

    .line 166
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    .line 167
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->g:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;

    const/4 v4, -0x1

    .line 168
    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->k:I

    .line 169
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->l:LAb/d;

    .line 170
    new-instance v4, LAb/b;

    invoke-direct {v4}, LAb/b;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m:LAb/b;

    .line 171
    new-instance v4, LAb/b;

    invoke-direct {v4}, LAb/b;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->n:LAb/b;

    .line 172
    new-instance v4, LAb/c;

    invoke-direct {v4}, LAb/c;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o:LAb/c;

    .line 173
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p:LAb/d;

    .line 174
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->q:LAb/d;

    .line 175
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r:LAb/d;

    .line 176
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->s:LAb/d;

    .line 177
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->t:LAb/d;

    .line 178
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u:LAb/d;

    .line 179
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A:LAb/d;

    .line 180
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$k;

    invoke-direct {v4, p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$k;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->B:LUb/i;

    .line 181
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$v;

    invoke-direct {v0, p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$v;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->C:Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;

    .line 182
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$w;

    invoke-direct {v0, p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$w;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->D:LUb/i;

    .line 183
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->E:Z

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->F:Ljava/util/List;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->G:Ljava/util/List;

    .line 186
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    .line 187
    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I3(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    .line 188
    invoke-virtual {p0, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setScale(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    .line 189
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->onDeserialized()V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "rotation",
            "scale",
            "state"
        }
    .end annotation

    .line 190
    invoke-direct {p0}, Lbd/m;-><init>()V

    .line 191
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->position:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 192
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    .line 193
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(F)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 194
    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;->DYNAMIC:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->state:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    const/4 v3, 0x0

    .line 195
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->ignoreParentMatrix:Z

    .line 196
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->lockScale:Z

    .line 197
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->b:Ljava/util/List;

    .line 198
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->c:Ljava/util/List;

    .line 199
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    .line 200
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->g:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;

    const/4 v4, -0x1

    .line 201
    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->k:I

    .line 202
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->l:LAb/d;

    .line 203
    new-instance v4, LAb/b;

    invoke-direct {v4}, LAb/b;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m:LAb/b;

    .line 204
    new-instance v4, LAb/b;

    invoke-direct {v4}, LAb/b;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->n:LAb/b;

    .line 205
    new-instance v4, LAb/c;

    invoke-direct {v4}, LAb/c;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o:LAb/c;

    .line 206
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p:LAb/d;

    .line 207
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->q:LAb/d;

    .line 208
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r:LAb/d;

    .line 209
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->s:LAb/d;

    .line 210
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->t:LAb/d;

    .line 211
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u:LAb/d;

    .line 212
    new-instance v4, LAb/d;

    invoke-direct {v4}, LAb/d;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A:LAb/d;

    .line 213
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$k;

    invoke-direct {v4, p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$k;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->B:LUb/i;

    .line 214
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$v;

    invoke-direct {v0, p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$v;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->C:Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;

    .line 215
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$w;

    invoke-direct {v0, p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$w;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->D:LUb/i;

    .line 216
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->E:Z

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->F:Ljava/util/List;

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->G:Ljava/util/List;

    .line 219
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    .line 220
    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I3(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    .line 221
    invoke-virtual {p0, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setScale(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    .line 222
    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->state:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    .line 223
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->onDeserialized()V

    return-void
.end method

.method public static synthetic A(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->c4(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic B(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;LW5/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Z2(LW5/b;)V

    return-void
.end method

.method public static synthetic C(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e4(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic D(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->G2()V

    return-void
.end method

.method public static R(LUb/f;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "gameObject",
            "parent"
        }
    .end annotation

    new-instance v0, LUb/f;

    invoke-direct {v0}, LUb/f;-><init>()V

    new-instance v1, LUb/f;

    invoke-direct {v1}, LUb/f;-><init>()V

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, p2, v2, v2, v3}, LUb/f;->c1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;ZZZ)V

    invoke-virtual {v0}, LUb/f;->R()LUb/f;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->D0(LUb/f;)V

    invoke-virtual {v0, v1, p0}, LUb/f;->y0(LUb/f;LUb/f;)LUb/f;

    return-void
.end method

.method public static S([FLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "gameObject",
            "parent"
        }
    .end annotation

    new-instance v0, LUb/f;

    invoke-direct {v0}, LUb/f;-><init>()V

    new-instance v1, LUb/f;

    invoke-direct {v1}, LUb/f;-><init>()V

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, p2, v2, v2, v3}, LUb/f;->c1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;ZZZ)V

    invoke-virtual {v0}, LUb/f;->R()LUb/f;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->D0(LUb/f;)V

    invoke-virtual {v0, v1, p0}, LUb/f;->o0(LUb/f;[F)V

    return-void
.end method

.method public static T([F[FLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "matrix",
            "parent"
        }
    .end annotation

    new-instance v0, LUb/f;

    invoke-direct {v0}, LUb/f;-><init>()V

    new-instance v1, LUb/f;

    invoke-direct {v1}, LUb/f;-><init>()V

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, p2, v2, v2, v3}, LUb/f;->c1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;ZZZ)V

    invoke-virtual {v0}, LUb/f;->R()LUb/f;

    invoke-virtual {v1, p1}, LUb/f;->K0([F)V

    invoke-virtual {v0, v1, p0}, LUb/f;->o0(LUb/f;[F)V

    return-void
.end method

.method public static U(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "gameObject",
            "parent"
        }
    .end annotation

    new-instance v0, LUb/f;

    invoke-direct {v0}, LUb/f;-><init>()V

    new-instance v1, LUb/f;

    invoke-direct {v1}, LUb/f;-><init>()V

    new-instance v2, LUb/f;

    invoke-direct {v2}, LUb/f;-><init>()V

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, p2, v3, v3, v4}, LUb/f;->c1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;ZZZ)V

    invoke-virtual {v0}, LUb/f;->R()LUb/f;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->D0(LUb/f;)V

    invoke-virtual {v0, v1, v2}, LUb/f;->y0(LUb/f;LUb/f;)LUb/f;

    invoke-virtual {v2, p0}, LUb/f;->M1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method private getTypeName(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "states"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->state:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;->DYNAMIC:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;->STATIC:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;LW5/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->a3(LW5/b;)V

    return-void
.end method

.method public static synthetic s(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->d4(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic u(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->lockScale:Z

    return p0
.end method

.method public static synthetic v(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->lockScale:Z

    return p1
.end method

.method public static synthetic w(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->ignoreParentMatrix:Z

    return p0
.end method

.method public static synthetic x(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->g:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;

    return-object p0
.end method

.method public static synthetic y(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I1(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic z(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;LW5/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y2(LW5/b;)V

    return-void
.end method


# virtual methods
.method public final A0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->W1()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e2()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->j1()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public A1()F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Y()F

    move-result v0

    return v0
.end method

.method public A2(LUb/f;LUb/f;)LUb/f;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "matrix4",
            "out"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    new-instance p2, LUb/f;

    invoke-direct {p2}, LUb/f;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, LUb/f;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LUb/f;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->h0(LUb/f;)V

    invoke-virtual {v0, p1, p2}, LUb/f;->X(LUb/f;LUb/f;)LUb/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return-object p2

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Matrix can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public A3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setPosition(FFF)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Vector can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public A4(FFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$F;->Local:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$F;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->B4(FFFLcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$F;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "z argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "y argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "x argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public B0()J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->i:J

    return-wide v0
.end method

.method public B1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p1
.end method

.method public B2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, LUb/f;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LUb/f;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->h0(LUb/f;)V

    invoke-virtual {v0, p1, p1}, LUb/f;->B0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public B3(Lcom/jme3/math/Vector3f;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setPosition(FFF)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Vector can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public B4(FFFLcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$F;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "space"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$F;->Local:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$F;

    if-ne p4, v0, :cond_4

    iget-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p4, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->w()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    const/4 v2, 0x0

    cmpl-float v3, p1, v2

    if-eqz v3, :cond_0

    invoke-virtual {p0, p4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->c3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v3

    mul-float/2addr v3, p1

    add-float/2addr v3, v2

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v4

    mul-float/2addr v4, p1

    add-float/2addr v4, v2

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v5

    mul-float/2addr v5, p1

    add-float/2addr v5, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    cmpl-float p1, p2, v2

    if-eqz p1, :cond_1

    invoke-virtual {p0, p4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->E4(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result p1

    mul-float/2addr p1, p2

    add-float/2addr v3, p1

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result p1

    mul-float/2addr p1, p2

    add-float/2addr v4, p1

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p1

    mul-float/2addr p1, p2

    add-float/2addr v5, p1

    :cond_1
    cmpl-float p1, p3, v2

    if-eqz p1, :cond_2

    invoke-virtual {p0, p4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result p1

    mul-float/2addr p1, p3

    add-float/2addr v3, p1

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result p1

    mul-float/2addr p1, p3

    add-float/2addr v4, p1

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p1

    mul-float/2addr p1, p3

    add-float/2addr v5, p1

    :cond_2
    invoke-virtual {p0, v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->q4(FFF)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->H0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->c3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v2

    mul-float/2addr v2, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->H(FFF)V

    invoke-virtual {p0, p4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->E4(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result p1

    mul-float/2addr p1, p2

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v0

    mul-float/2addr v0, p2

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v1

    mul-float/2addr v1, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->H(FFF)V

    invoke-virtual {p0, p4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result p1

    mul-float/2addr p1, p3

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result p2

    mul-float/2addr p2, p3

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v0

    mul-float/2addr v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->H(FFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, p4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    goto :goto_3

    :goto_2
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p2, p4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1

    :cond_4
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$F;->Global:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$F;

    if-ne p4, v0, :cond_5

    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->q4(FFF)V

    :cond_5
    :goto_3
    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "z argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "y argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "x argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public C0()LUb/f;
    .locals 1

    new-instance v0, LUb/f;

    invoke-direct {v0}, LUb/f;-><init>()V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->D0(LUb/f;)V

    return-object v0
.end method

.method public C1()LUb/i;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->D:LUb/i;

    return-object v0
.end method

.method public C2(LUb/f;[F)[F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "matrix4",
            "out"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    const/16 p2, 0x10

    new-array p2, p2, [F

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, LUb/f;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LUb/f;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->h0(LUb/f;)V

    invoke-virtual {v0, p1, p2}, LUb/f;->o0(LUb/f;[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return-object p2

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Matrix can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public C3(Ljavax/vecmath/Vector3f;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget v0, p1, Ljavax/vecmath/Tuple3f;->x:F

    iget v1, p1, Ljavax/vecmath/Tuple3f;->y:F

    iget p1, p1, Ljavax/vecmath/Tuple3f;->z:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setPosition(FFF)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Vector can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public C4(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A4(FFF)V

    return-void
.end method

.method public D0(LUb/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-static {}, Lc9/a;->j()I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->n:LAb/b;

    iget v2, v1, LAb/b;->b:I

    if-ne v2, v0, :cond_0

    iget-object v0, v1, LAb/b;->a:LUb/f;

    invoke-virtual {p1, v0}, LUb/f;->E0(LUb/f;)LUb/f;

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->h0(LUb/f;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->n:LAb/b;

    iget-object v1, v1, LAb/b;->a:LUb/f;

    invoke-virtual {v1, p1}, LUb/f;->E0(LUb/f;)LUb/f;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->n:LAb/b;

    iput v0, p1, LAb/b;->b:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Out matrix can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public D1()F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    return v0
.end method

.method public D2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, LUb/f;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LUb/f;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->h0(LUb/f;)V

    invoke-virtual {v0, p1, p1}, LUb/f;->s0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public D3([F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget p1, p1, v2

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setPosition(FFF)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Vector can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public D4()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->E4(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public E(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;LAb/a;ZZZFFF)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "scopeParent",
            "listener",
            "ignoreScaleOfScopeParent",
            "normalizeLikeColliderShape",
            "preserveChildScaleWhenScopeParentMatches",
            "positionTolerance",
            "rotationToleranceDegrees",
            "scaleTolerance"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->V2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;LAb/a;)V

    new-instance v11, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;

    const/4 v10, 0x0

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;LAb/a;ZZZFFFLcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$k;)V

    move-object v0, p0

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->c:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->q()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->T2()V

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->g()V

    return-void

    :cond_0
    move-object v0, p0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "listener can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object v0, p0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "scopeParent can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public E0(Lcom/jme3/math/Matrix4f;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->g:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->acquire(I)[F

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->F0([F)[F

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/jme3/math/Matrix4f;->set([FZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->g:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->release([F)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->g:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->release([F)V

    throw p1
.end method

.method public E1()F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v0

    return v0
.end method

.method public E2(LUb/f;LUb/f;)LUb/f;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "matrix4",
            "out"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    new-instance p2, LUb/f;

    invoke-direct {p2}, LUb/f;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, LUb/f;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LUb/f;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->j0(LUb/f;)V

    invoke-virtual {v0, p1, p2}, LUb/f;->X(LUb/f;LUb/f;)LUb/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return-object p2

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Matrix can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public E3(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->position:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->e2(F)F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "v argument can\'t be NaN"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public E4(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    :cond_0
    invoke-static {}, Lc9/a;->j()I

    move-result v6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u:LAb/d;

    iget v1, v0, LAb/d;->b:I

    if-ne v1, v6, :cond_1

    iget-object v0, v0, LAb/d;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    :try_start_0
    invoke-virtual {p0, v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->P0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    move-object v0, v7

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->B0(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u:LAb/d;

    iget-object v0, v0, LAb/d;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u:LAb/d;

    iput v6, v0, LAb/d;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v0, v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v0, v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public F(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "name"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M4()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->F:Ljava/util/List;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$E;

    invoke-direct {v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$E;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m0()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Object can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public F0([F)[F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    if-nez p1, :cond_0

    const/16 p1, 0x10

    new-array p1, p1, [F

    :cond_0
    invoke-static {}, Lc9/a;->j()I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->n:LAb/b;

    iget v2, v1, LAb/b;->b:I

    if-ne v2, v0, :cond_1

    iget-object v0, v1, LAb/b;->a:LUb/f;

    invoke-virtual {v0, p1}, LUb/f;->B([F)[F

    return-object p1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->i0([F)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->n:LAb/b;

    iget-object v1, v1, LAb/b;->a:LUb/f;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, LUb/f;->I0([FZ)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->n:LAb/b;

    iput v0, v1, LAb/b;->b:I

    return-object p1
.end method

.method public F1()F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v0

    return v0
.end method

.method public F2()V
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M4()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->y0()Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y()V

    return-void
.end method

.method public F3(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->position:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->i2(F)F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "v argument can\'t be NaN"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public F4(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->O2()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public G(LAb/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->T2()V

    return-void
.end method

.method public G0(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    const-string v0, "Out vector can\'t be null"

    if-eqz p1, :cond_1

    iget-object v1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public G1()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->state:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    return-object v0
.end method

.method public final G2()V
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->f0()V

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->k:I

    if-gez v0, :cond_0

    invoke-static {}, Lc9/a;->j()I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->k:I

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->j:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->j:Z

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->E:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->p(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    return-void
.end method

.method public G3(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->position:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->j2(F)F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "v argument can\'t be NaN"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public G4(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Q2()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public H(FFF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M4()V

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    cmpl-float v0, p3, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->position:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->D(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "z argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "y argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "x argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public H0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public H1()[F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x10

    new-array v0, v0, [F

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->F0([F)[F

    move-result-object v0

    return-object v0
.end method

.method public final H2()V
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->k:I

    if-gez v0, :cond_0

    invoke-static {}, Lc9/a;->j()I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->k:I

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->j:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->j:Z

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->q(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    return-void
.end method

.method public H3(LUb/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix4"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p1, v0}, LUb/f;->A1(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y()V

    return-void
.end method

.method public H4()I
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->O2()I

    move-result v0

    return v0
.end method

.method public I(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->H(FFF)V

    return-void
.end method

.method public I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->l:LAb/d;

    iget v0, v0, LAb/d;->b:I

    invoke-static {}, Lc9/a;->j()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->l:LAb/d;

    iget-object v0, v0, LAb/d;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, LUb/f;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LUb/f;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->h0(LUb/f;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->l:LAb/d;

    iget-object v1, v1, LAb/d;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, LUb/f;->M1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->l:LAb/d;

    iget-object v1, v1, LAb/d;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->l:LAb/d;

    invoke-static {}, Lc9/a;->j()I

    move-result v2

    iput v2, v1, LAb/d;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public final I1(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entryName"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->h2()Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->y2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f0700f8

    return p1

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->z2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f0700f9

    return p1

    :cond_2
    return v1
.end method

.method public final I2()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->g()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public I3(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->a0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->V()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->W()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->X()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Y()F

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setRotation(FFFF)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rotation ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->k1()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Rotation can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public I4()I
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Q2()I

    move-result v0

    return v0
.end method

.method public J(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M4()V

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->C(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->lockScale:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->i2(F)F

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->j2(F)F

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y()V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "x argument can\'t be NaN"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public J0(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->l:LAb/d;

    iget v0, v0, LAb/d;->b:I

    invoke-static {}, Lc9/a;->j()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->l:LAb/d;

    iget-object v0, v0, LAb/d;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->l:LAb/d;

    iget-object v1, v1, LAb/d;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->l:LAb/d;

    iget-object v2, v2, LAb/d;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, LUb/f;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LUb/f;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->h0(LUb/f;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->l:LAb/d;

    iget-object v1, v1, LAb/d;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, LUb/f;->M1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->l:LAb/d;

    iget-object v1, v1, LAb/d;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->l:LAb/d;

    iget-object v2, v2, LAb/d;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->l:LAb/d;

    iget-object v3, v3, LAb/d;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->l:LAb/d;

    invoke-static {}, Lc9/a;->j()I

    move-result v2

    iput v2, v1, LAb/d;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public J1(FFF)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->g0(FFF)F

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public J2()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->C0()LUb/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->L2(LUb/f;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I2()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public J3(Lcom/jme3/math/Quaternion;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->getW()F

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->getZ()F

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setRotation(FFFF)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Rotation can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public K(FFF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M4()V

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    cmpl-float v0, p3, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->D(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->lockScale:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->i2(F)F

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->j2(F)F

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y()V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "z argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "y argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "x argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public K0()F
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw v1
.end method

.method public K1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->j0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return p1

    :catchall_0
    move-exception p1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public K2(LUb/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sourceMatrix"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->L2(LUb/f;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I2()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public K4(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;LAb/a;ZZZFFF)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "scopeParent",
            "listener",
            "ignoreScaleOfScopeParent",
            "normalizeLikeColliderShape",
            "preserveChildScaleWhenScopeParentMatches",
            "positionTolerance",
            "rotationToleranceDegrees",
            "scaleTolerance"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->l0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;LAb/a;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    move v6, p8

    invoke-virtual/range {v0 .. v6}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->r(ZZZFFF)V

    const/4 p1, 0x1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "listener can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "scopeParent can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public L(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector3"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->K(FFF)V

    return-void
.end method

.method public L0()F
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw v1
.end method

.method public L1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transform"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->j0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return p1

    :catchall_0
    move-exception p1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public final L2(LUb/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sourceMatrix"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LAb/h;

    invoke-interface {v1, p1}, LAb/h;->a(LUb/f;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public L3(Ljavax/vecmath/Quat4f;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljavax/vecmath/Quat4f;->normalize()V

    invoke-virtual {p1}, Ljavax/vecmath/Tuple4f;->getW()F

    move-result v0

    invoke-virtual {p1}, Ljavax/vecmath/Tuple4f;->getX()F

    move-result v1

    invoke-virtual {p1}, Ljavax/vecmath/Tuple4f;->getY()F

    move-result v2

    invoke-virtual {p1}, Ljavax/vecmath/Tuple4f;->getZ()F

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setRotation(FFFF)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Rotation can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public L4([FI)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "currentID"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->P2()I

    move-result v0

    if-eq v0, p2, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->F0([F)[F

    :cond_0
    move p2, v0

    :cond_1
    return p2
.end method

.method public M(Lcom/jme3/math/Vector3f;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector3"
        }
    .end annotation

    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->K(FFF)V

    return-void
.end method

.method public M0()F
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw v1
.end method

.method public M1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->j0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public M2()V
    .locals 0

    return-void
.end method

.method public M3([F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, 0x3

    aget p1, p1, v3

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setRotation(FFFF)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Rotation can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final M4()V
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->E:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lc9/a;->F()V

    return-void
.end method

.method public N()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->O(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public N0(LJAVARuntime/Quaternion;)LJAVARuntime/Quaternion;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    const-string v0, "Out quaternion can\'t be null"

    if-eqz p1, :cond_2

    iget-object v1, p1, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    if-eqz v1, :cond_1

    invoke-static {}, Lc9/a;->j()I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o:LAb/c;

    iget v2, v1, LAb/c;->b:I

    if-ne v2, v0, :cond_0

    iget-object v0, p1, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object v1, v1, LAb/c;->a:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->H0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v2, LUb/f;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LUb/f;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->h0(LUb/f;)V

    iget-object v2, p1, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v1, v2}, LUb/f;->A1(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o:LAb/c;

    iget-object v2, v2, LAb/c;->a:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object v3, p1, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->H0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o:LAb/c;

    iput v0, v2, LAb/c;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public N1(FFF)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->p2(FFF)F

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public final N2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "right",
            "up",
            "forward"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    if-nez p3, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->f1()F

    move-result v1

    const v2, 0x322bcc77    # 1.0E-8f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->E1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->f1()F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v3

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v4

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v4

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v5

    mul-float/2addr v5, v1

    sub-float/2addr v4, v5

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v5

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v6

    mul-float/2addr v6, v1

    sub-float/2addr v5, v6

    invoke-virtual {p1, v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T1(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->f1()F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->a0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_3
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->f1()F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->E1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->a0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->f1()F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    return v0

    :cond_5
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->E1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->a0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->f1()F

    move-result p2

    cmpg-float p2, p2, v2

    if-gez p2, :cond_6

    return v0

    :cond_6
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->E1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 p1, 0x1

    return p1

    :cond_7
    :goto_0
    return v0
.end method

.method public O(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    :cond_0
    invoke-static {}, Lc9/a;->j()I

    move-result v6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r:LAb/d;

    iget v1, v0, LAb/d;->b:I

    if-ne v1, v6, :cond_1

    iget-object v0, v0, LAb/d;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    :try_start_0
    invoke-virtual {p0, v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->P0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, v7

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->B0(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r:LAb/d;

    iget-object v0, v0, LAb/d;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r:LAb/d;

    iput v6, v0, LAb/d;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v0, v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v0, v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public O0()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->P0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public O1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->P1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)F

    move-result p1

    return p1
.end method

.method public final O2()I
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->f0()V

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->i:J

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->y(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->t(J)I

    move-result v0

    return v0
.end method

.method public O3(FFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M4()V

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I(FFF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "z argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "y argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "x argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public P([F)[F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x3

    new-array p1, p1, [F

    :cond_0
    invoke-static {}, Lc9/a;->j()I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r:LAb/d;

    iget v2, v1, LAb/d;->b:I

    if-ne v2, v0, :cond_1

    iget-object v0, v1, LAb/d;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->P0([F)V

    return-object p1

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->O(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->P0([F)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r:LAb/d;

    iget-object v2, v2, LAb/d;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Z1([F)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r:LAb/d;

    iput v0, v2, LAb/d;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public P0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    :cond_0
    invoke-static {}, Lc9/a;->j()I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o:LAb/c;

    iget v2, v1, LAb/c;->b:I

    if-ne v2, v0, :cond_1

    iget-object v0, v1, LAb/c;->a:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->H0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    return-object p1

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v2, LUb/f;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LUb/f;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->h0(LUb/f;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o:LAb/c;

    iget-object v2, v2, LAb/c;->a:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v1, v2}, LUb/f;->A1(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o:LAb/c;

    iget-object v2, v2, LAb/c;->a:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->H0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o:LAb/c;

    iput v0, v2, LAb/c;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public P1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transform"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->r2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return p1

    :catchall_0
    move-exception p1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public final P2()I
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->f0()V

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->i:J

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->y(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->u(J)I

    move-result v0

    return v0
.end method

.method public P3(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M4()V

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->M0(F)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "v argument can\'t be NaN"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final Q(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "validateThread"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M4()V

    :cond_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {}, Lc9/a;->q()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->i:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->k4()V

    :cond_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->G2()V

    :cond_3
    return-void
.end method

.method public Q0(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Quaternion;

    invoke-direct {p1}, Lcom/jme3/math/Quaternion;-><init>()V

    :cond_0
    invoke-static {}, Lc9/a;->j()I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o:LAb/c;

    iget v2, v1, LAb/c;->b:I

    if-ne v2, v0, :cond_1

    iget-object v0, v1, LAb/c;->a:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->W()F

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o:LAb/c;

    iget-object v1, v1, LAb/c;->a:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->X()F

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o:LAb/c;

    iget-object v2, v2, LAb/c;->a:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Y()F

    move-result v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o:LAb/c;

    iget-object v3, v3, LAb/c;->a:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->V()F

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/jme3/math/Quaternion;->set(FFFF)Lcom/jme3/math/Quaternion;

    return-object p1

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v2, LUb/f;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LUb/f;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->h0(LUb/f;)V

    invoke-virtual {v1, p1}, LUb/f;->B1(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o:LAb/c;

    iget-object v2, v2, LAb/c;->a:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I0(Lcom/jme3/math/Quaternion;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o:LAb/c;

    iput v0, v2, LAb/c;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public Q1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->r2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public final Q2()I
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->f0()V

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->i:J

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->z(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->t(J)I

    move-result v0

    return v0
.end method

.method public Q3(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M4()V

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->N0(F)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "v argument can\'t be NaN"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public R0()F
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->P0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->V()F

    move-result v0

    return v0
.end method

.method public R1(FFF)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->t2(FF)F

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p3, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return p1

    :catchall_0
    move-exception p1

    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p3, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public R2()V
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M4()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->k4()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y1()V

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->i:J

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->k(J)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->G2()V

    return-void
.end method

.method public R3(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M4()V

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->O0(F)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "v argument can\'t be NaN"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public S0()F
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->P0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->W()F

    move-result v0

    return v0
.end method

.method public S1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->T1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)F

    move-result p1

    return p1
.end method

.method public S2()V
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M4()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->k4()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y1()V

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->i:J

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->l(J)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->G2()V

    return-void
.end method

.method public S3()V
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M4()V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setRotation(FFFF)V

    return-void
.end method

.method public T0()F
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->P0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->X()F

    move-result v0

    return v0
.end method

.method public T1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transform"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->u2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return p1

    :catchall_0
    move-exception p1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public final T2()V
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->V1()Z

    move-result v0

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->H:Z

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->o(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->w(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    :goto_0
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->H:Z

    return-void
.end method

.method public T3(LUb/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix4"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v0}, LUb/f;->D1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->lockScale:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->i2(F)F

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->j2(F)F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y()V

    return-void
.end method

.method public U0()F
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->P0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Y()F

    move-result v0

    return v0
.end method

.method public U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->u2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public U2(LAb/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;)LAb/a;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->b(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->T2()V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "listener can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public U3(Lcom/jme3/math/Vector3f;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setScale(FFF)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Vector can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final V()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->b(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->T2()V

    return-void
.end method

.method public V0(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    const-string v0, "Out vector can\'t be null"

    if-eqz p1, :cond_2

    iget-object v1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz v1, :cond_1

    invoke-static {}, Lc9/a;->j()I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p:LAb/d;

    iget v2, v1, LAb/d;->b:I

    if-ne v2, v0, :cond_0

    iget-object v0, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, v1, LAb/d;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v2, LUb/f;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LUb/f;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->h0(LUb/f;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p:LAb/d;

    iget-object v2, v2, LAb/d;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, LUb/f;->D1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p:LAb/d;

    iget-object v3, v3, LAb/d;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p:LAb/d;

    iput v0, v2, LAb/d;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final V1()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public V2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;LAb/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scopeParent",
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;)LAb/a;

    move-result-object v2

    if-ne v2, p2, :cond_0

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->b(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->T2()V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "listener can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "scopeParent can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public V3([F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget p1, p1, v2

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setScale(FFF)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Vector can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public W()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>()V

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->position:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->position:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->H0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->state:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->state:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->onDeserialized()V

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->ignoreParentMatrix:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->ignoreParentMatrix:Z

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->lockScale:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->lockScale:Z

    return-object v0
.end method

.method public W0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->X0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public final W1()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public W2(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M4()V

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->F:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->F:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$E;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$E;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$E;->b()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$E;->a()V

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m0()V

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Object can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public W3(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->e2(F)F

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->lockScale:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->i2(F)F

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->j2(F)F

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "v argument can\'t be NaN"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public X(FFF)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->position:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->D0(FFF)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "z argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "y argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "x argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public X0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    :cond_0
    invoke-static {}, Lc9/a;->j()I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p:LAb/d;

    iget v2, v1, LAb/d;->b:I

    if-ne v2, v0, :cond_1

    iget-object v0, v1, LAb/d;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p1

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v2, LUb/f;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LUb/f;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->h0(LUb/f;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p:LAb/d;

    iget-object v2, v2, LAb/d;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, LUb/f;->D1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p:LAb/d;

    iget-object v2, v2, LAb/d;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p:LAb/d;

    iput v0, v2, LAb/d;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public X1()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public X2(LAb/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->T2()V

    return-void
.end method

.method public X3(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->lockScale:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->W3(F)V

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->i2(F)F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "v argument can\'t be NaN"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final Y()V
    .locals 1

    invoke-static {}, Lc9/a;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->G2()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->H2()V

    :goto_0
    return-void
.end method

.method public Y0()F
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->X0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v0

    invoke-static {v2, v0}, Lgd/b;->S0(FF)F

    move-result v0

    invoke-static {v1, v0}, Lgd/b;->S0(FF)F

    move-result v0

    return v0
.end method

.method public final Y1()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->l:LAb/d;

    invoke-virtual {v0}, LAb/d;->a()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m:LAb/b;

    invoke-virtual {v0}, LAb/b;->a()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->n:LAb/b;

    invoke-virtual {v0}, LAb/b;->a()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o:LAb/c;

    invoke-virtual {v0}, LAb/c;->a()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p:LAb/d;

    invoke-virtual {v0}, LAb/d;->a()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->q:LAb/d;

    invoke-virtual {v0}, LAb/d;->a()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r:LAb/d;

    invoke-virtual {v0}, LAb/d;->a()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->s:LAb/d;

    invoke-virtual {v0}, LAb/d;->a()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->t:LAb/d;

    invoke-virtual {v0}, LAb/d;->a()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u:LAb/d;

    invoke-virtual {v0}, LAb/d;->a()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A:LAb/d;

    invoke-virtual {v0}, LAb/d;->a()V

    return-void
.end method

.method public final Y2(LW5/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rectPosVector"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setPosition(F)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->R2()V

    iget-object v0, p1, LW5/b;->p:[LW5/b;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, LW5/b;->k:LX5/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LX5/f;->a()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p1, LW5/b;->p:[LW5/b;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, LW5/b;->k:LX5/f;

    if-eqz v0, :cond_1

    invoke-interface {v0}, LX5/f;->a()V

    :cond_1
    iget-object p1, p1, LW5/b;->p:[LW5/b;

    const/4 v0, 0x2

    aget-object p1, p1, v0

    iget-object p1, p1, LW5/b;->k:LX5/f;

    if-eqz p1, :cond_2

    invoke-interface {p1}, LX5/f;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method public Y3(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->lockScale:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->W3(F)V

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->j2(F)F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "v argument can\'t be NaN"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Z()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->C0()LUb/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->L2(LUb/f;)V

    return-void
.end method

.method public Z0()F
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->X0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    return v0
.end method

.method public Z1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dir"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->a2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public final Z2(LW5/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rectRotVector"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->S3()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->R2()V

    iget-object v0, p1, LW5/b;->p:[LW5/b;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, LW5/b;->k:LX5/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LX5/f;->a()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p1, LW5/b;->p:[LW5/b;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, LW5/b;->k:LX5/f;

    if-eqz v0, :cond_1

    invoke-interface {v0}, LX5/f;->a()V

    :cond_1
    iget-object p1, p1, LW5/b;->p:[LW5/b;

    const/4 v0, 0x2

    aget-object p1, p1, v0

    iget-object p1, p1, LW5/b;->k:LX5/f;

    if-eqz p1, :cond_2

    invoke-interface {p1}, LX5/f;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method public Z3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M4()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->state:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->state:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->G2()V

    return-void
.end method

.method public a0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public a1()F
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->X0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v0

    return v0
.end method

.method public a2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dir",
            "out"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, LUb/f;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LUb/f;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->h0(LUb/f;)V

    invoke-virtual {v0}, LUb/f;->R()LUb/f;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->e1()F

    move-result v1

    invoke-virtual {v0, p1, p2}, LUb/f;->s0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->x1(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return-object p2

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public final a3(LW5/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rectScaVector"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setScale(F)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->R2()V

    iget-object v0, p1, LW5/b;->p:[LW5/b;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, LW5/b;->k:LX5/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LX5/f;->a()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p1, LW5/b;->p:[LW5/b;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, LW5/b;->k:LX5/f;

    if-eqz v0, :cond_1

    invoke-interface {v0}, LX5/f;->a()V

    :cond_1
    iget-object p1, p1, LW5/b;->p:[LW5/b;

    const/4 v0, 0x2

    aget-object p1, p1, v0

    iget-object p1, p1, LW5/b;->k:LX5/f;

    if-eqz p1, :cond_2

    invoke-interface {p1}, LX5/f;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method public a4()V
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M4()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;->STATIC:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Z3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;)V

    return-void
.end method

.method public b0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->c3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public b1()F
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->X0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v0

    return v0
.end method

.method public b2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dir"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->c2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public b3()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->c3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public b4(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "staticValue"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M4()V

    if-eqz p1, :cond_0

    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;->STATIC:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Z3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;->DYNAMIC:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Z3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;)V

    :goto_0
    return-void
.end method

.method public c0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->E4(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public c1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)LUb/f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scopeParent"
        }
    .end annotation

    new-instance v0, LUb/f;

    invoke-direct {v0}, LUb/f;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->d1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;LUb/f;)V

    return-object v0
.end method

.method public c2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vector3",
            "out"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, LUb/f;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LUb/f;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->h0(LUb/f;)V

    invoke-virtual {v0}, LUb/f;->R()LUb/f;

    invoke-virtual {v0, p1, p2}, LUb/f;->c0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return-object p2

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public c3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    :cond_0
    invoke-static {}, Lc9/a;->j()I

    move-result v6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->t:LAb/d;

    iget v1, v0, LAb/d;->b:I

    if-ne v1, v6, :cond_1

    iget-object v0, v0, LAb/d;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    :try_start_0
    invoke-virtual {p0, v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->P0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    move-object v0, v7

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->B0(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->t:LAb/d;

    iget-object v0, v0, LAb/d;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->t:LAb/d;

    iput v6, v0, LAb/d;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v0, v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v0, v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public final c4(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->h2()Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->k1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->k3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Failed to find the keyframe"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const-string v0, "Available only at animation editor"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->W()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v0

    return-object v0
.end method

.method public d0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public d1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;LUb/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scopeParent",
            "out"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->W1()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->W1()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->getGameObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->getGameObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->R(LUb/f;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p2}, LUb/f;->T()V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "out can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "scopeParent can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d2()Z
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->state:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;->DYNAMIC:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d3(FFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$F;->Local:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$F;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e3(FFFLcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$F;)V

    return-void
.end method

.method public final d4(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->h2()Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->x0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->o3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Failed to find the keyframe"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const-string v0, "Available only at animation editor"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->V()V

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->x(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->w(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->H:Z

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->i:J

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->c(J)V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->i:J

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->j:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->k:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->g:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->clear()V

    return-void
.end method

.method public e0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    :cond_0
    invoke-static {}, Lc9/a;->j()I

    move-result v6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A:LAb/d;

    iget v1, v0, LAb/d;->b:I

    if-ne v1, v6, :cond_1

    iget-object v0, v0, LAb/d;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    :try_start_0
    invoke-virtual {p0, v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->P0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    move-object v0, v7

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->B0(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A:LAb/d;

    iget-object v0, v0, LAb/d;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A:LAb/d;

    iput v6, v0, LAb/d;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v0, v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v0, v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public e1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;[F)[F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scopeParent",
            "out"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    const/16 p2, 0x10

    new-array p2, p2, [F

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, LUb/f;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LUb/f;

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->d1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;LUb/f;)V

    invoke-virtual {v0, p2}, LUb/f;->B([F)[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return-object p2

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "scopeParent can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e2()Z
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->ignoreParentMatrix:Z

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->ignoreParentMatrix:Z

    if-nez v0, :cond_3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->F:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->F:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$E;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$E;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->G:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->G:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->F:Ljava/util/List;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->G:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->G:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_4
    return v0
.end method

.method public e3(FFFLcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$F;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "space"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    :try_start_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$F;->Local:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$F;

    if-ne p4, v1, :cond_2

    const/4 p4, 0x0

    cmpl-float v1, p1, p4

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    invoke-static {v2, p4, p4, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->z(FFFFLcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->z2(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    cmpl-float p1, p2, p4

    if-eqz p1, :cond_1

    invoke-static {p4, v2, p4, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->z(FFFFLcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->z2(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    :cond_1
    cmpl-float p1, p3, p4

    if-eqz p1, :cond_3

    invoke-static {p4, p4, v2, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->z(FFFFLcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->z2(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$F;->Global:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$F;

    if-ne p4, v1, :cond_3

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I(FFF)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->v4(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->F2()V

    return-void

    :goto_2
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public final e4(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->h2()Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->w0()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->m3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Failed to find the keyframe"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const-string v0, "Available only at animation editor"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final f0()V
    .locals 4

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->E:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->i:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->j:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->k:I

    return-void
.end method

.method public f1()LUb/f;
    .locals 1

    new-instance v0, LUb/f;

    invoke-direct {v0}, LUb/f;-><init>()V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->g1(LUb/f;)V

    return-object v0
.end method

.method public f2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->ignoreParentMatrix:Z

    return v0
.end method

.method public f3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->d3(FFF)V

    return-void
.end method

.method public f4(FFF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M4()V

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    cmpl-float v0, p3, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->position:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->H2(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "z argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "y argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "x argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g0()J
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->f0()V

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->i:J

    return-wide v0
.end method

.method public g1(LUb/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-static {}, Lc9/a;->j()I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m:LAb/b;

    iget v2, v1, LAb/b;->b:I

    if-ne v2, v0, :cond_0

    iget-object v0, v1, LAb/b;->a:LUb/f;

    invoke-virtual {p1, v0}, LUb/f;->E0(LUb/f;)LUb/f;

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->j0(LUb/f;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m:LAb/b;

    iget-object v1, v1, LAb/b;->a:LUb/f;

    invoke-virtual {v1, p1}, LUb/f;->E0(LUb/f;)LUb/f;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m:LAb/b;

    iput v0, p1, LAb/b;->b:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Out matrix can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->E:Z

    return v0
.end method

.method public g3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$F;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "direction",
            "space"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e3(FFFLcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$F;)V

    return-void
.end method

.method public g4(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M4()V

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->G2(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->lockScale:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->i2(F)F

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->j2(F)F

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y()V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "a argument can\'t be NaN"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getEditor()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->editor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->editor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->editor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    return-object v0
.end method

.method public getGameObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object v0
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 23
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->y()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->DYNAMIC:LUc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STATIC:LUc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, LW5/b;

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$x;

    invoke-direct {v5, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$x;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    invoke-direct {v0, v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->getTypeName(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    sget-object v8, LW5/b$a;->SLDropdown:LW5/b$a;

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STATE:LUc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v9

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, LW5/b;-><init>(LX5/h;Ljava/lang/String;Ljava/util/List;LW5/b$a;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v3, LW5/b;

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->POSITION:LUc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, LW5/b$a;->Vector:LW5/b$a;

    const/4 v6, 0x4

    new-array v7, v6, [LW5/b;

    invoke-direct {v3, v4, v5, v7}, LW5/b;-><init>(Ljava/lang/String;LW5/b$a;[LW5/b;)V

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v7, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->VEC3:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    const-string v8, "p"

    invoke-virtual {v3, v4, v0, v8, v7}, LW5/b;->e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LW5/b;

    move-result-object v3

    iget-object v4, v3, LW5/b;->p:[LW5/b;

    new-instance v8, LW5/b;

    new-instance v9, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$y;

    invoke-direct {v9, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$y;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    sget-object v15, LW5/b$a;->SLFloatWrap:LW5/b$a;

    new-instance v10, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$z;

    invoke-direct {v10, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$z;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    const-string v14, "X"

    invoke-direct {v8, v9, v14, v15, v10}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;LX5/l;)V

    const/4 v9, 0x0

    aput-object v8, v4, v9

    iget-object v4, v3, LW5/b;->p:[LW5/b;

    new-instance v8, LW5/b;

    new-instance v10, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$A;

    invoke-direct {v10, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$A;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    new-instance v11, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$B;

    invoke-direct {v11, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$B;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    const-string v13, "Y"

    invoke-direct {v8, v10, v13, v15, v11}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;LX5/l;)V

    const/4 v12, 0x1

    aput-object v8, v4, v12

    iget-object v4, v3, LW5/b;->p:[LW5/b;

    new-instance v8, LW5/b;

    new-instance v10, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$C;

    invoke-direct {v10, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$C;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    new-instance v11, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$a;

    invoke-direct {v11, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    const-string v9, "Z"

    invoke-direct {v8, v10, v9, v15, v11}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;LX5/l;)V

    const/4 v11, 0x2

    aput-object v8, v4, v11

    iget-object v4, v3, LW5/b;->p:[LW5/b;

    new-instance v8, LW5/b;

    new-instance v10, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$b;

    invoke-direct {v10, v0, v3, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;LW5/b;Landroid/content/Context;)V

    move-object/from16 v16, v14

    sget-object v14, LW5/b$a;->Button:LW5/b$a;

    const-string v6, ":"

    invoke-direct {v8, v10, v6, v14}, LW5/b;-><init>(LX5/b;Ljava/lang/String;LW5/b$a;)V

    invoke-virtual {v8, v12}, LW5/b;->n(Z)LW5/b;

    move-result-object v8

    const/16 v17, 0x3

    aput-object v8, v4, v17

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, LW5/b;

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ROTATION:LUc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x4

    new-array v10, v8, [LW5/b;

    invoke-direct {v3, v4, v5, v10}, LW5/b;-><init>(Ljava/lang/String;LW5/b$a;[LW5/b;)V

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v8, "r"

    sget-object v10, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->QUAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v3, v4, v0, v8, v10}, LW5/b;->e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LW5/b;

    move-result-object v3

    iget-object v4, v3, LW5/b;->p:[LW5/b;

    new-instance v8, LW5/b;

    new-instance v10, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$c;

    invoke-direct {v10, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    move-object/from16 v18, v14

    new-instance v14, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$d;

    invoke-direct {v14, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    const-string v19, "X"

    const/high16 v20, 0x41a00000    # 20.0f

    move-object/from16 v21, v10

    move-object v10, v8

    move-object/from16 v11, v21

    move-object/from16 v12, v19

    move-object/from16 v19, v9

    move-object v9, v13

    move-object v13, v15

    move-object/from16 v21, v9

    move-object/from16 v9, v18

    move-object/from16 v18, v14

    move/from16 v14, v20

    move-object/from16 v20, v15

    move-object/from16 v15, v18

    invoke-direct/range {v10 .. v15}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;FLX5/l;)V

    const/4 v10, 0x0

    aput-object v8, v4, v10

    iget-object v4, v3, LW5/b;->p:[LW5/b;

    new-instance v8, LW5/b;

    new-instance v11, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$e;

    invoke-direct {v11, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    new-instance v15, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$f;

    invoke-direct {v15, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    const-string v12, "Y"

    const/high16 v14, 0x41a00000    # 20.0f

    move-object v10, v8

    move-object/from16 v13, v20

    invoke-direct/range {v10 .. v15}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;FLX5/l;)V

    const/4 v15, 0x1

    aput-object v8, v4, v15

    iget-object v4, v3, LW5/b;->p:[LW5/b;

    new-instance v8, LW5/b;

    new-instance v11, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$g;

    invoke-direct {v11, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    new-instance v14, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$h;

    invoke-direct {v14, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$h;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    const-string v12, "Z"

    const/high16 v18, 0x41a00000    # 20.0f

    move-object v10, v8

    move-object/from16 v22, v14

    move/from16 v14, v18

    move-object/from16 v18, v7

    move v7, v15

    move-object/from16 v15, v22

    invoke-direct/range {v10 .. v15}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;FLX5/l;)V

    const/4 v10, 0x2

    aput-object v8, v4, v10

    iget-object v4, v3, LW5/b;->p:[LW5/b;

    new-instance v8, LW5/b;

    new-instance v11, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$i;

    invoke-direct {v11, v0, v3, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;LW5/b;Landroid/content/Context;)V

    invoke-direct {v8, v11, v6, v9}, LW5/b;-><init>(LX5/b;Ljava/lang/String;LW5/b$a;)V

    invoke-virtual {v8, v7}, LW5/b;->n(Z)LW5/b;

    move-result-object v8

    aput-object v8, v4, v17

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v3, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->lockScale:Z

    const-string v4, "s"

    if-nez v3, :cond_2

    new-instance v3, LW5/b;

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SCALE:LUc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x4

    new-array v11, v11, [LW5/b;

    invoke-direct {v3, v8, v5, v11}, LW5/b;-><init>(Ljava/lang/String;LW5/b$a;[LW5/b;)V

    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-object/from16 v8, v18

    invoke-virtual {v3, v5, v0, v4, v8}, LW5/b;->e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LW5/b;

    move-result-object v3

    iget-object v4, v3, LW5/b;->p:[LW5/b;

    new-instance v5, LW5/b;

    new-instance v8, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$j;

    invoke-direct {v8, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    new-instance v11, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$l;

    invoke-direct {v11, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$l;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    move-object/from16 v13, v16

    move-object/from16 v12, v20

    invoke-direct {v5, v8, v13, v12, v11}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;LX5/l;)V

    const/4 v8, 0x0

    aput-object v5, v4, v8

    iget-object v4, v3, LW5/b;->p:[LW5/b;

    new-instance v5, LW5/b;

    new-instance v8, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$m;

    invoke-direct {v8, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$m;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    new-instance v11, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$n;

    invoke-direct {v11, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$n;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    move-object/from16 v13, v21

    invoke-direct {v5, v8, v13, v12, v11}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;LX5/l;)V

    aput-object v5, v4, v7

    iget-object v4, v3, LW5/b;->p:[LW5/b;

    new-instance v5, LW5/b;

    new-instance v8, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$o;

    invoke-direct {v8, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$o;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    new-instance v11, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$p;

    invoke-direct {v11, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$p;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    move-object/from16 v13, v19

    invoke-direct {v5, v8, v13, v12, v11}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;LX5/l;)V

    aput-object v5, v4, v10

    iget-object v4, v3, LW5/b;->p:[LW5/b;

    new-instance v5, LW5/b;

    new-instance v8, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$q;

    invoke-direct {v8, v0, v3, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$q;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;LW5/b;Landroid/content/Context;)V

    invoke-direct {v5, v8, v6, v9}, LW5/b;-><init>(LX5/b;Ljava/lang/String;LW5/b$a;)V

    invoke-virtual {v5, v7}, LW5/b;->n(Z)LW5/b;

    move-result-object v1

    aput-object v1, v4, v17

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v8, v18

    move-object/from16 v12, v20

    new-instance v3, LW5/b;

    const/4 v6, 0x0

    new-array v10, v10, [LW5/b;

    invoke-direct {v3, v6, v5, v10}, LW5/b;-><init>(Ljava/lang/String;LW5/b$a;[LW5/b;)V

    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v3, v5, v0, v4, v8}, LW5/b;->e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LW5/b;

    move-result-object v3

    iget-object v4, v3, LW5/b;->p:[LW5/b;

    new-instance v5, LW5/b;

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$r;

    invoke-direct {v6, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$r;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    new-instance v8, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$s;

    invoke-direct {v8, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$s;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    const-string v10, "Scale"

    invoke-direct {v5, v6, v10, v12, v8}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;LX5/l;)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v4, v3, LW5/b;->p:[LW5/b;

    new-instance v5, LW5/b;

    new-instance v8, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$t;

    invoke-direct {v8, v0, v3, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$t;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;LW5/b;Landroid/content/Context;)V

    const-string v1, "\ud83d\udd12\ufe0e"

    invoke-direct {v5, v8, v1, v9}, LW5/b;-><init>(LX5/b;Ljava/lang/String;LW5/b$a;)V

    invoke-virtual {v5, v7}, LW5/b;->n(Z)LW5/b;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->y()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, LW5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$u;

    invoke-direct {v3, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$u;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->IGNORE_PARENT:LUc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, LW5/b$a;->SLBoolean:LW5/b$a;

    invoke-direct {v1, v3, v4, v5}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e2()Z

    move-result v1

    if-eqz v1, :cond_5

    move v9, v6

    :goto_1
    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->F:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_5

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->F:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$E;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$E;->d()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, LW5/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$E;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is forcing this transform to ignore the parent"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xc

    const v5, 0x7f050165

    invoke-direct {v3, v1, v4, v5}, LW5/b;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-object v2
.end method

.method public getRotationY()F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->X()F

    move-result v0

    return v0
.end method

.method public getScale()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public final h0(LUb/f;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->f0()V

    invoke-static {}, Lc9/a;->j()I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->n:LAb/b;

    iget v2, v1, LAb/b;->b:I

    if-ne v2, v0, :cond_0

    iget-object v0, v1, LAb/b;->a:LUb/f;

    invoke-virtual {p1, v0}, LUb/f;->E0(LUb/f;)LUb/f;

    return-void

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->g:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->acquire(I)[F

    move-result-object v1

    :try_start_0
    iget-wide v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->i:J

    invoke-static {v2, v3, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->f(J[F)J

    invoke-virtual {p1, v1}, LUb/f;->L0([F)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->n:LAb/b;

    iget-object v2, v2, LAb/b;->a:LUb/f;

    invoke-virtual {v2, p1}, LUb/f;->E0(LUb/f;)LUb/f;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->n:LAb/b;

    iput v0, p1, LAb/b;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->g:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->release([F)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->g:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->release([F)V

    throw p1
.end method

.method public h1([F)[F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    if-nez p1, :cond_0

    const/16 p1, 0x10

    new-array p1, p1, [F

    :cond_0
    invoke-static {}, Lc9/a;->j()I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m:LAb/b;

    iget v2, v1, LAb/b;->b:I

    if-ne v2, v0, :cond_1

    iget-object v0, v1, LAb/b;->a:LUb/f;

    invoke-virtual {v0, p1}, LUb/f;->B([F)[F

    return-object p1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->k0([F)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m:LAb/b;

    iget-object v1, v1, LAb/b;->a:LUb/f;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, LUb/f;->I0([FZ)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m:LAb/b;

    iput v0, v1, LAb/b;->b:I

    return-object p1
.end method

.method public h2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->lockScale:Z

    return v0
.end method

.method public h3(FFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$F;->Local:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$F;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->i3(FFFLcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$F;)V

    return-void
.end method

.method public h4(FFF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M4()V

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    cmpl-float v0, p3, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->H2(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->lockScale:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->i2(F)F

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->j2(F)F

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y()V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "z argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "y argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "x argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final i0([F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->f0()V

    invoke-static {}, Lc9/a;->j()I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->n:LAb/b;

    iget v2, v1, LAb/b;->b:I

    if-ne v2, v0, :cond_0

    iget-object v0, v1, LAb/b;->a:LUb/f;

    invoke-virtual {v0, p1}, LUb/f;->B([F)[F

    return-void

    :cond_0
    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->i:J

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->f(J[F)J

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->n:LAb/b;

    iget-object v1, v1, LAb/b;->a:LUb/f;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, LUb/f;->I0([FZ)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->n:LAb/b;

    iput v0, p1, LAb/b;->b:I

    return-void
.end method

.method public i1()J
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->f0()V

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->i:J

    return-wide v0
.end method

.method public i2()Z
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->state:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;->STATIC:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i3(FFFLcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$F;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "space"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$F;->Local:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$F;

    if-ne p4, v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->K(FFF)V

    goto/16 :goto_2

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$F;->Global:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$F;

    if-ne p4, v0, :cond_2

    iget-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p4, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, LUb/f;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LUb/f;

    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->D0(LUb/f;)V

    invoke-virtual {v0}, LUb/f;->F1()F

    move-result v1

    div-float v1, v2, v1

    invoke-virtual {v0}, LUb/f;->H1()F

    move-result v3

    div-float v3, v2, v3

    invoke-virtual {v0}, LUb/f;->J1()F

    move-result v4

    div-float/2addr v2, v4

    move v5, v2

    move v2, v1

    move v1, v5

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    move v1, v2

    move v3, v1

    :goto_0
    invoke-virtual {p0, p4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->c3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v4

    mul-float/2addr p1, v2

    invoke-virtual {v4, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->x1(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->L(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {p0, p4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->E4(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    mul-float/2addr p2, v3

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->x1(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->L(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {p0, p4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    mul-float/2addr p3, v1

    invoke-virtual {p1, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->x1(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->L(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, p4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p2, p4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1

    :cond_2
    :goto_2
    return-void
.end method

.method public i4()J
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->k4()V

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->i:J

    return-wide v0
.end method

.method public final j0(LUb/f;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->f0()V

    invoke-static {}, Lc9/a;->j()I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m:LAb/b;

    iget v2, v1, LAb/b;->b:I

    if-ne v2, v0, :cond_0

    iget-object v0, v1, LAb/b;->a:LUb/f;

    invoke-virtual {p1, v0}, LUb/f;->E0(LUb/f;)LUb/f;

    return-void

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->g:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->acquire(I)[F

    move-result-object v1

    :try_start_0
    iget-wide v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->i:J

    invoke-static {v2, v3, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->h(J[F)J

    invoke-virtual {p1, v1}, LUb/f;->L0([F)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m:LAb/b;

    iget-object v2, v2, LAb/b;->a:LUb/f;

    invoke-virtual {v2, p1}, LUb/f;->E0(LUb/f;)LUb/f;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m:LAb/b;

    iput v0, p1, LAb/b;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->g:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->release([F)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->g:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->release([F)V

    throw p1
.end method

.method public final j1()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lyb/e;->H(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->j:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lyb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->j:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    return-object v0

    :cond_1
    return-object v1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid transform preparation! should be attached to an object."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j2()V
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M4()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->E:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->k4()V

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y1()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->E:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->i:J

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->m(J)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->G2()V

    :cond_1
    return-void
.end method

.method public j3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offsetScale"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->h3(FFF)V

    return-void
.end method

.method public j4()V
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->k4()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->j:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->k:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y1()V

    return-void
.end method

.method public final k0([F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->f0()V

    invoke-static {}, Lc9/a;->j()I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m:LAb/b;

    iget v2, v1, LAb/b;->b:I

    if-ne v2, v0, :cond_0

    iget-object v0, v1, LAb/b;->a:LUb/f;

    invoke-virtual {v0, p1}, LUb/f;->B([F)[F

    return-void

    :cond_0
    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->i:J

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->h(J[F)J

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m:LAb/b;

    iget-object v1, v1, LAb/b;->a:LUb/f;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, LUb/f;->I0([FZ)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m:LAb/b;

    iput v0, p1, LAb/b;->b:I

    return-void
.end method

.method public k1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->position:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public k2()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->l2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public k3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$F;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "offsetScale",
            "space"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->i3(FFFLcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$F;)V

    return-void
.end method

.method public final k4()V
    .locals 22

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->f0()V

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->g0()J

    move-result-wide v1

    :goto_0
    move-wide v6, v1

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e2()Z

    move-result v9

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i1()Z

    move-result v1

    if-eqz v1, :cond_1

    move v10, v3

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    :goto_2
    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->state:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;->DYNAMIC:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    :goto_3
    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->position:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v11

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->position:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v12

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->position:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v13

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->V()F

    move-result v14

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->W()F

    move-result v15

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->X()F

    move-result v16

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Y()F

    move-result v17

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v18

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v19

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v20

    iget-wide v4, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->i:J

    iget v8, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->k:I

    if-ltz v8, :cond_3

    goto :goto_4

    :cond_3
    invoke-static {}, Lc9/a;->j()I

    move-result v8

    :goto_4
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;->STATIC:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    if-ne v1, v2, :cond_4

    move/from16 v21, v3

    goto :goto_5

    :cond_4
    const/16 v21, 0x0

    :goto_5
    move-wide v3, v4

    move v5, v8

    move/from16 v8, v21

    invoke-static/range {v3 .. v20}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->s(JIJIZZFFFFFFFFFF)V

    return-void
.end method

.method public final l0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;LAb/a;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scopeParent",
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$D;)LAb/a;

    move-result-object v2

    if-ne v2, p2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public l1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->position:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p1
.end method

.method public l2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    :cond_0
    invoke-static {}, Lc9/a;->j()I

    move-result v6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->s:LAb/d;

    iget v1, v0, LAb/d;->b:I

    if-ne v1, v6, :cond_1

    iget-object v0, v0, LAb/d;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    :try_start_0
    invoke-virtual {p0, v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->P0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    move-object v0, v7

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->B0(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->s:LAb/d;

    iget-object v0, v0, LAb/d;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->s:LAb/d;

    iput v6, v0, LAb/d;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v0, v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v0, v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public l3(LUb/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix4"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M4()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->position:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v0}, LUb/f;->M1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p1, v0}, LUb/f;->A1(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->y0()Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v0}, LUb/f;->D1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Matrix can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l4()LAb/f;
    .locals 3

    new-instance v0, LAb/f;

    invoke-direct {v0}, LAb/f;-><init>()V

    iget-object v1, v0, LAb/f;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->position:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, v0, LAb/f;->b:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->H0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    iget-object v1, v0, LAb/f;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0
.end method

.method public lerpLookTo(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "other",
            "lerpSpeed"
        }
    .end annotation

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const-class v3, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const-class v5, LUb/f;

    invoke-virtual {v0, v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LUb/f;

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v5

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v6

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v7

    sub-float/2addr p1, v7

    invoke-virtual {v1, v5, v6, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T1(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->f1()F

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v5, 0x322bcc77    # 1.0E-8f

    cmpg-float p1, p1, v5

    if-gez p1, :cond_0

    :goto_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->D0(LUb/f;)V

    invoke-virtual {v0}, LUb/f;->R()LUb/f;

    invoke-virtual {v0, v1, v1}, LUb/f;->s0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->f1()F

    move-result p1

    cmpg-float p1, p1, v5

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->h0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    const/4 p1, 0x0

    invoke-static {v3, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/c;->a(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;F)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Q0()V

    :cond_3
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->H0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    invoke-virtual {v4, v3, p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->s(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;F)V

    invoke-static {v4, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/c;->a(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;F)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Q0()V

    :cond_4
    invoke-virtual {p0, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I3(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return-void

    :goto_2
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p2, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p2, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Other object can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public lookTo(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;ZZ)V

    return-void
.end method

.method public m0()V
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M4()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->k4()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y1()V

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->i:J

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->k(J)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->G2()V

    return-void
.end method

.method public m1()LUb/i;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->B:LUb/i;

    return-object v0
.end method

.method public m2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "to",
            "speed"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M4()V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->position:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->m1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "z argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "y argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "x argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transform"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M4()V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->k1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->s1()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I3(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->getScale()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setScale(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->state:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->state:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    iget-boolean p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->ignoreParentMatrix:Z

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->v3(Z)V

    return-void
.end method

.method public m4()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->state:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;->STATIC:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not modify values of a static transform"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public n1()F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->position:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    return v0
.end method

.method public n2(LAb/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "snapshop"
        }
    .end annotation

    iget-object v0, p1, LAb/f;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object v0, p1, LAb/f;->b:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I3(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    iget-object p1, p1, LAb/f;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setScale(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void
.end method

.method public n3([F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mat4"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M4()V

    if-eqz p1, :cond_0

    const-class v0, LUb/f;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LUb/f;

    :try_start_0
    invoke-virtual {v0, p1}, LUb/f;->L0([F)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->position:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, LUb/f;->M1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1}, LUb/f;->A1(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->y0()Z

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, LUb/f;->D1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Matrix can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public n4()LJAVARuntime/Transform;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I:LJAVARuntime/Transform;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/Transform;

    invoke-direct {v0, p0}, LJAVARuntime/Transform;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I:LJAVARuntime/Transform;

    :cond_0
    return-object v0
.end method

.method public o0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    :cond_0
    invoke-static {}, Lc9/a;->j()I

    move-result v6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->q:LAb/d;

    iget v1, v0, LAb/d;->b:I

    if-ne v1, v6, :cond_1

    iget-object v0, v0, LAb/d;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    :try_start_0
    invoke-virtual {p0, v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->P0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, v7

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->B0(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->q:LAb/d;

    iget-object v0, v0, LAb/d;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->q:LAb/d;

    iput v6, v0, LAb/d;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v0, v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v0, v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public o1()F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->position:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v0

    return v0
.end method

.method public o2(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "to",
            "blend"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M4()V

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->s(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;F)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "To can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public o3(Lcom/jme3/math/Transform;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transform"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M4()V

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->B3(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->J3(Lcom/jme3/math/Quaternion;)V

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->U3(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public o4(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dir"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p4(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public onDeserialized()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->clear()V

    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->g:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;

    if-nez v0, :cond_1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->g:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->clear()V

    :goto_1
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->x(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->w(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->i:J

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->c(J)V

    :cond_2
    iput-wide v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->i:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->j:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->k:I

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->H:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->state:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    if-nez v0, :cond_3

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;->DYNAMIC:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->state:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->B:LUb/i;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->position:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, LUb/i;->b3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->C:Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->o1(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->D:LUb/i;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, LUb/i;->b3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void
.end method

.method public p0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>()V

    :cond_0
    invoke-static {}, Lc9/a;->j()I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->q:LAb/d;

    iget v2, v1, LAb/d;->b:I

    if-ne v2, v0, :cond_1

    iget-object v0, v1, LAb/d;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)V

    return-object p1

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v3

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->z(FFFF)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->q:LAb/d;

    iget-object v2, v2, LAb/d;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->V1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->q:LAb/d;

    iput v0, v2, LAb/d;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public p1()F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->position:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v0

    return v0
.end method

.method public p2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "to"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M4()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->h0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "To can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public p3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Q(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    return-void
.end method

.method public p4(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dir",
            "out"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, LUb/f;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LUb/f;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->h0(LUb/f;)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->e1()F

    move-result v1

    invoke-virtual {v0, p1, p2}, LUb/f;->s0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->x1(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return-object p2

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public q0(Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector4f;

    invoke-direct {p1}, Lcom/jme3/math/Vector4f;-><init>()V

    :cond_0
    invoke-static {}, Lc9/a;->j()I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->q:LAb/d;

    iget v2, v1, LAb/d;->b:I

    if-ne v2, v0, :cond_1

    iget-object v0, v1, LAb/d;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->O0(Lcom/jme3/math/Vector4f;)V

    return-object p1

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v3

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/jme3/math/Vector4f;->set(FFFF)Lcom/jme3/math/Vector4f;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->q:LAb/d;

    iget-object v2, v2, LAb/d;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W1(Lcom/jme3/math/Vector4f;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->q:LAb/d;

    iput v0, v2, LAb/d;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public q1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;LUb/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ancestor",
            "out"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->g:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->acquire(I)[F

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;[F)[F

    move-result-object p1

    invoke-virtual {p2, p1}, LUb/f;->L0([F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->g:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->release([F)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->g:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->release([F)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Out matrix can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q2(FFF)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r2(FFFZZ)V

    return-void
.end method

.method public q3([F)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M4()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v0

    const/4 v1, 0x1

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    const-class v3, LUb/f;

    if-eqz v0, :cond_0

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LUb/f;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LUb/f;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->D0(LUb/f;)V

    invoke-virtual {v4}, LUb/f;->R()LUb/f;

    invoke-virtual {v3, p1}, LUb/f;->K0([F)V

    invoke-virtual {v4, v3, v3}, LUb/f;->X(LUb/f;LUb/f;)LUb/f;

    invoke-virtual {v3}, LUb/f;->O1()F

    move-result p1

    invoke-virtual {v3}, LUb/f;->P1()F

    move-result v0

    invoke-virtual {v3}, LUb/f;->Q1()F

    move-result v5

    invoke-virtual {p0, p1, v0, v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setPosition(FFF)V

    invoke-virtual {v3, v2}, LUb/f;->A1(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I3(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    invoke-virtual {v3}, LUb/f;->F1()F

    move-result p1

    invoke-virtual {v3}, LUb/f;->H1()F

    move-result v0

    invoke-virtual {v3}, LUb/f;->J1()F

    move-result v5

    invoke-virtual {p0, p1, v0, v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setScale(FFF)V

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    return v1

    :cond_0
    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LUb/f;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1}, LUb/f;->K0([F)V

    invoke-virtual {v0}, LUb/f;->O1()F

    move-result p1

    invoke-virtual {v0}, LUb/f;->P1()F

    move-result v3

    invoke-virtual {v0}, LUb/f;->Q1()F

    move-result v4

    invoke-virtual {p0, p1, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setPosition(FFF)V

    invoke-virtual {v0, v2}, LUb/f;->A1(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I3(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    invoke-virtual {v0}, LUb/f;->F1()F

    move-result p1

    invoke-virtual {v0}, LUb/f;->H1()F

    move-result v3

    invoke-virtual {v0}, LUb/f;->J1()F

    move-result v4

    invoke-virtual {p0, p1, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setScale(FFF)V

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    return v1
.end method

.method public q4(FFF)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "px",
            "py",
            "pz"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const-class v3, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_0
    invoke-virtual {v2, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T1(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Q0()V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->S1(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, v2, v3, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u4(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p2, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public r0([F)[F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x3

    new-array p1, p1, [F

    :cond_0
    invoke-static {}, Lc9/a;->j()I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->q:LAb/d;

    iget v2, v1, LAb/d;->b:I

    if-ne v2, v0, :cond_1

    iget-object v0, v1, LAb/d;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->P0([F)V

    return-object p1

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v2

    const/4 v3, 0x0

    aput v2, p1, v3

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v2

    const/4 v3, 0x1

    aput v2, p1, v3

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v2

    const/4 v3, 0x2

    aput v2, p1, v3

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->q:LAb/d;

    iget-object v2, v2, LAb/d;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Z1([F)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->q:LAb/d;

    iput v0, v2, LAb/d;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public r1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;[F)[F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ancestor",
            "out"
        }
    .end annotation

    if-nez p2, :cond_0

    const/16 p2, 0x10

    new-array p2, p2, [F

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->i1()J

    move-result-wide v0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->i1()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    :goto_0
    invoke-static {v2, v3, v0, v1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->i(JJ[F)V

    return-object p2
.end method

.method public r2(FFFZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "yaw",
            "pitch"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const-class v3, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const-class v4, LUb/f;

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LUb/f;

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v4

    sub-float/2addr p1, v4

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v4

    sub-float/2addr p2, v4

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v4

    sub-float/2addr p3, v4

    invoke-virtual {v1, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T1(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->f1()F

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const p2, 0x322bcc77    # 1.0E-8f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    :goto_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->D0(LUb/f;)V

    invoke-virtual {v0}, LUb/f;->R()LUb/f;

    invoke-virtual {v0, v1, v1}, LUb/f;->s0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->f1()F

    move-result p1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    if-nez p4, :cond_4

    if-eqz p5, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->h0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {v3, v1, p4, p5}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->q0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;ZZ)V

    :goto_3
    invoke-virtual {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I3(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return-void

    :goto_4
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p2, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public r3(FFF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M4()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, LUb/f;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LUb/f;

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->D0(LUb/f;)V

    invoke-virtual {v1}, LUb/f;->R()LUb/f;

    invoke-virtual {v1, p1, p2, p3}, LUb/f;->Z(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    throw p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setPosition(FFF)V

    :goto_0
    return-void
.end method

.method public r4(FFFF)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rw",
            "rx",
            "ry",
            "rz"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const-class v3, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->S1(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(FFFF)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->S1(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, v2, v3, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u4(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p2, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public s0()F
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw v1
.end method

.method public s1()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->w()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public s2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transform"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->lookTo(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Transform can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public s3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M4()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, LUb/f;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LUb/f;

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->D0(LUb/f;)V

    invoke-virtual {v1}, LUb/f;->R()LUb/f;

    invoke-virtual {v1, p1}, LUb/f;->b0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    throw p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    :goto_0
    return-void
.end method

.method public s4(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offsetRotation"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->S1(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->S1(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, v2, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u4(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public setGameObject(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Q(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    return-void
.end method

.method public setPosition(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 9
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->position:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->S1(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 11
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y()V

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "a argument can\'t be NaN"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPosition(FFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->position:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T1(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 5
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y()V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "z argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "y argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "x argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRotation(FFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I(FFF)V

    .line 7
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y()V

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "z argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "y argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "x argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRotation(FFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 11
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    .line 13
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    invoke-static {p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(FFFF)V

    .line 16
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y()V

    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "z argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "y argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "x argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "w argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRotation(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "euler"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setRotation(FFF)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "euler can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setScale(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 14
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->C0(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->S1(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 17
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y()V

    :cond_0
    return-void

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "a argument can\'t be NaN"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setScale(FFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 3
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->lockScale:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setScale(F)V

    return-void

    .line 5
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4

    .line 6
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->D0(FFF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T1(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 10
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y()V

    :cond_1
    return-void

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "z argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "y argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "x argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setScale(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setScale(FFF)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Vector can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public t0()F
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw v1
.end method

.method public t1(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->H0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    return-object p1
.end method

.method public t2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "transform",
            "yaw",
            "pitch"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Transform can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public t3(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotation"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M4()V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->a0()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I3(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    return-void

    :cond_0
    const-class v1, LUb/f;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LUb/f;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LUb/f;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LUb/f;

    const-class v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_0
    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->D0(LUb/f;)V

    invoke-virtual {v2}, LUb/f;->R()LUb/f;

    invoke-virtual {v3, p1}, LUb/f;->d1(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    iget v0, v3, LUb/f;->b:F

    iget v7, v3, LUb/f;->g:F

    iget v8, v3, LUb/f;->l:F

    invoke-virtual {v5, v0, v7, v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T1(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v0, v3, LUb/f;->c:F

    iget v7, v3, LUb/f;->i:F

    iget v8, v3, LUb/f;->m:F

    invoke-virtual {v6, v0, v7, v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T1(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v0, v3, LUb/f;->d:F

    iget v7, v3, LUb/f;->j:F

    iget v8, v3, LUb/f;->n:F

    invoke-virtual {v4, v0, v7, v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T1(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v5, v5}, LUb/f;->s0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v6, v6}, LUb/f;->s0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v4, v4}, LUb/f;->s0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, v5, v6, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->N2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I3(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v6}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v5}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result p1

    iput p1, v1, LUb/f;->b:F

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result p1

    iput p1, v1, LUb/f;->g:F

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p1

    iput p1, v1, LUb/f;->l:F

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result p1

    iput p1, v1, LUb/f;->c:F

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result p1

    iput p1, v1, LUb/f;->i:F

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p1

    iput p1, v1, LUb/f;->m:F

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result p1

    iput p1, v1, LUb/f;->d:F

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result p1

    iput p1, v1, LUb/f;->j:F

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p1

    iput p1, v1, LUb/f;->n:F

    const/4 p1, 0x0

    iput p1, v1, LUb/f;->e:F

    iput p1, v1, LUb/f;->k:F

    iput p1, v1, LUb/f;->o:F

    iput p1, v1, LUb/f;->p:F

    iput p1, v1, LUb/f;->q:F

    iput p1, v1, LUb/f;->r:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, v1, LUb/f;->s:F

    invoke-virtual {v1}, LUb/f;->z1()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I3(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v6}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v5}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    return-void

    :goto_0
    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v6}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v5}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    throw p1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rotation ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->k1()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Rotation can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public t4(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offsetPosition"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_0
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Q0()V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->S1(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, p1, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u4(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public u0()F
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw v1
.end method

.method public u1()F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Q()F

    move-result v0

    return v0
.end method

.method public u2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "yaw",
            "pitch"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v3

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r2(FFFZZ)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Target can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public u3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M4()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, LUb/f;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LUb/f;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LUb/f;

    :try_start_0
    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->D0(LUb/f;)V

    invoke-virtual {v2}, LUb/f;->R()LUb/f;

    invoke-virtual {v1, p1}, LUb/f;->Q0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {v2, v1, v1}, LUb/f;->X(LUb/f;LUb/f;)LUb/f;

    invoke-virtual {v1}, LUb/f;->C1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setScale(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    throw p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setScale(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    :goto_0
    return-void
.end method

.method public u4(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "offsetPosition",
            "offsetRotation",
            "offsetScale"
        }
    .end annotation

    const-class v0, LUb/f;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M4()V

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LUb/f;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LUb/f;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LUb/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->D0(LUb/f;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->W1()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v2, p1, p3, p2}, LUb/f;->m1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    invoke-virtual {v2, v3}, LUb/f;->p0(LUb/f;)LUb/f;

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->l3(LUb/f;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->D0(LUb/f;)V

    invoke-virtual {v2, p1, p3, p2}, LUb/f;->m1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    invoke-virtual {v2, v3}, LUb/f;->p0(LUb/f;)LUb/f;

    invoke-virtual {v0}, LUb/f;->R()LUb/f;

    invoke-virtual {v0, v2}, LUb/f;->p0(LUb/f;)LUb/f;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->l3(LUb/f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    :try_start_2
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :goto_1
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p2, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public v0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->position:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0
.end method

.method public v1()F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->R()F

    move-result v0

    return v0
.end method

.method public v2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->w2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "gameObject can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public v3(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ignoreParentMatrix"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M4()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->ignoreParentMatrix:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->ignoreParentMatrix:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m0()V

    return-void
.end method

.method public v4(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offsetRotation"
        }
    .end annotation

    const-class v0, LUb/f;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M4()V

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LUb/f;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LUb/f;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LUb/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->D0(LUb/f;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->W1()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v2, p1}, LUb/f;->d1(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    invoke-virtual {v2, v3}, LUb/f;->p0(LUb/f;)LUb/f;

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->H3(LUb/f;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->D0(LUb/f;)V

    invoke-virtual {v2, p1}, LUb/f;->d1(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    invoke-virtual {v2, v3}, LUb/f;->p0(LUb/f;)LUb/f;

    invoke-virtual {v0}, LUb/f;->R()LUb/f;

    invoke-virtual {v0, v2}, LUb/f;->p0(LUb/f;)LUb/f;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->H3(LUb/f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    :try_start_2
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :goto_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public w0()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    return-object v0
.end method

.method public w1()F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->S()F

    move-result v0

    return v0
.end method

.method public w2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transform"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->H0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->i2(F)F

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->lookTo(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "transform can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public w3(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ignoreThreadCheck"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->E:Z

    return-void
.end method

.method public w4(FFF)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sx",
            "sy",
            "sz"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const-class v3, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->S1(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Q0()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T1(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, v2, v3, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u4(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p2, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public x0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0
.end method

.method public x1()Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->C:Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;

    return-object v0
.end method

.method public x2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->L0()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->i2(F)F

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->lookTo(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "target can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public x3(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lockScale"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M4()V

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->lockScale:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->D1()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setScale(F)V

    :cond_0
    return-void
.end method

.method public x4(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offsetScale"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->S1(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Q0()V

    invoke-virtual {p0, v1, v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u4(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method public y0()I
    .locals 1

    invoke-static {}, Lc9/a;->F()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->O2()I

    move-result v0

    return v0
.end method

.method public y1()F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->V()F

    move-result v0

    return v0
.end method

.method public y2(FFFF)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "x",
            "y",
            "z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M4()V

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->V()F

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->W()F

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->X()F

    move-result v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Y()F

    move-result v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v4, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->u0(FFFF)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->y0()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->a0()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(FFFF)V

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid quaternion"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "z argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "y argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "x argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "w argument can\'t be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public y3(LUb/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix4"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->position:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v0}, LUb/f;->M1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y()V

    return-void
.end method

.method public y4(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dir"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->z4(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public z0()I
    .locals 1

    invoke-static {}, Lc9/a;->F()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Q2()I

    move-result v0

    return v0
.end method

.method public z1()F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->W()F

    move-result v0

    return v0
.end method

.method public z2(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quaternion"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M4()V

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->V()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->W()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->X()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Y()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->a0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->V()F

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->W()F

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->X()F

    move-result v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Y()F

    move-result v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v4, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->v0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->y0()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->a0()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(FFFF)V

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid quaternion"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rotation ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->k1()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "z argument can\'t be NaN"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "y argument can\'t be NaN"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "x argument can\'t be NaN"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "w argument can\'t be NaN"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Quaternion can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public z3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->position:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Y()V

    return-void
.end method

.method public z4(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vector3",
            "out"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    const-class v1, LUb/f;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LUb/f;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->h0(LUb/f;)V

    invoke-virtual {v0, p1, p2}, LUb/f;->c0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    return-object p2

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method
