.class public LE9/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static H:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;


# instance fields
.field public final A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LE9/b;",
            ">;"
        }
    .end annotation
.end field

.field public final B:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "LE9/b;",
            ">;"
        }
    .end annotation
.end field

.field public final C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LE9/b;",
            ">;"
        }
    .end annotation
.end field

.field public volatile D:Z

.field public final E:LGb/b;

.field public F:Z

.field public G:Z

.field public final a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public final b:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

.field public c:Z

.field public d:Z

.field public e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

.field public f:Z

.field public final g:Lva/d;

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public l:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

.field public m:F

.field public n:LMb/p;

.field public final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LE9/b;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LE9/b;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;",
            "LE9/b;",
            ">;"
        }
    .end annotation
.end field

.field public final r:LUb/f;

.field public final s:[F

.field public final t:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final u:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

.field public final v:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final w:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final x:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

.field public y:Z

.field public final z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "material",
            "gameObject",
            "impostorOwner"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LE9/c;->d:Z

    new-instance v0, LE9/c$a;

    invoke-direct {v0, p0}, LE9/c$a;-><init>(LE9/c;)V

    iput-object v0, p0, LE9/c;->g:Lva/d;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, LE9/c;->h:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, LE9/c;->i:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, LE9/c;->j:Ljava/util/List;

    const/4 v1, 0x0

    iput v1, p0, LE9/c;->m:F

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, LE9/c;->o:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, LE9/c;->p:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, LE9/c;->q:Ljava/util/Map;

    new-instance v1, LUb/f;

    invoke-direct {v1}, LUb/f;-><init>()V

    iput-object v1, p0, LE9/c;->r:LUb/f;

    const/16 v1, 0x10

    new-array v1, v1, [F

    iput-object v1, p0, LE9/c;->s:[F

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, LE9/c;->t:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    iput-object v1, p0, LE9/c;->u:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, LE9/c;->v:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, LE9/c;->w:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    iput-object v1, p0, LE9/c;->x:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    const/4 v1, 0x0

    iput-boolean v1, p0, LE9/c;->y:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, LE9/c;->z:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, LE9/c;->A:Ljava/util/List;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, LE9/c;->B:Ljava/util/Set;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, LE9/c;->C:Ljava/util/List;

    iput-boolean v1, p0, LE9/c;->D:Z

    new-instance v1, LGb/b;

    new-instance v2, LE9/c$b;

    invoke-direct {v2, p0}, LE9/c$b;-><init>(LE9/c;)V

    invoke-direct {v1, v2}, LGb/b;-><init>(LGb/b$a;)V

    iput-object v1, p0, LE9/c;->E:LGb/b;

    iput-object p1, p0, LE9/c;->b:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iput-object p2, p0, LE9/c;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-boolean p3, p0, LE9/c;->c:Z

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->w(Lva/d;)V

    return-void
.end method

.method public static synthetic a(LE9/c;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LE9/c;->o:Ljava/util/List;

    return-object p0
.end method

.method public static a0(LL6/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "profile"
        }
    .end annotation

    invoke-static {p0}, LL6/j;->O1(LL6/e;)V

    return-void
.end method

.method public static synthetic b(LE9/c;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LE9/c;->C:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic c(LE9/c;)Z
    .locals 0

    iget-boolean p0, p0, LE9/c;->f:Z

    return p0
.end method

.method public static synthetic d(LE9/c;LE9/b;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, LE9/c;->E(LE9/b;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;Z)V

    return-void
.end method

.method public static d0(Ljava/lang/String;)LL6/e;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-static {}, LL6/j;->I1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, LL6/j;->R1(Ljava/lang/String;)LL6/e;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic e(LE9/c;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LE9/c;->z:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic f(LE9/c;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 0

    iget-object p0, p0, LE9/c;->k:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object p0
.end method

.method public static synthetic g(LE9/c;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Z
    .locals 0

    invoke-virtual {p0, p1}, LE9/c;->P(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(LE9/c;)Z
    .locals 0

    iget-boolean p0, p0, LE9/c;->F:Z

    return p0
.end method

.method public static synthetic i(LE9/c;)Z
    .locals 0

    iget-boolean p0, p0, LE9/c;->G:Z

    return p0
.end method

.method public static synthetic j(LE9/c;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;ZZLcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)LE9/b;
    .locals 0

    invoke-virtual/range {p0 .. p5}, LE9/c;->F(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;ZZLcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)LE9/b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(LE9/c;Z)Z
    .locals 0

    iput-boolean p1, p0, LE9/c;->D:Z

    return p1
.end method

.method public static synthetic l(Ljava/lang/String;)LL6/e;
    .locals 0

    invoke-static {p0}, LE9/c;->d0(Ljava/lang/String;)LL6/e;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(LE9/c;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;
    .locals 0

    iget-object p0, p0, LE9/c;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    return-object p0
.end method

.method public static synthetic n(LE9/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;LE9/b;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LE9/c;->G(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;LE9/b;)V

    return-void
.end method

.method public static synthetic o(LE9/c;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, LE9/c;->q:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic p(LL6/e;)V
    .locals 0

    invoke-static {p0}, LE9/c;->a0(LL6/e;)V

    return-void
.end method

.method public static synthetic q(LE9/c;)Z
    .locals 0

    invoke-virtual {p0}, LE9/c;->O()Z

    move-result p0

    return p0
.end method

.method public static synthetic r(LE9/c;)Z
    .locals 0

    invoke-virtual {p0}, LE9/c;->K()Z

    move-result p0

    return p0
.end method

.method public static synthetic s(LE9/c;)LE9/b;
    .locals 0

    invoke-virtual {p0}, LE9/c;->Z()LE9/b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()V
    .locals 7

    :try_start_0
    iget-object v0, p0, LE9/c;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, LAb/g;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)LUb/f;

    move-result-object v0

    invoke-virtual {v0}, LUb/f;->R()LUb/f;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, LE9/c;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, LE9/c;->h:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iget-object v2, p0, LE9/c;->i:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, LE9/c;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, LE9/c;->j:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, p0, LE9/c;->h:Ljava/util/Map;

    iget v6, v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->K:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, LE9/c;->i:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->o0()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v3}, LAb/g;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)LUb/f;

    move-result-object v3

    invoke-virtual {v0, v3}, LUb/f;->W(LUb/f;)LUb/f;

    move-result-object v3

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative$a;

    invoke-direct {v5, v4, v3}, Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;LUb/f;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative;->c(Ljava/util/List;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    iput-object v0, p0, LE9/c;->k:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/TextOutputActivity;->h(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method public B(Ljava/util/List;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;ZZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "objects",
            "scene",
            "castShadow",
            "receiveShadow"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;",
            ">;",
            "Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;",
            "ZZ)Z"
        }
    .end annotation

    iput-object p2, p0, LE9/c;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    iput-boolean p4, p0, LE9/c;->f:Z

    invoke-virtual {p0}, LE9/c;->e0()V

    invoke-virtual {p0}, LE9/c;->t()V

    iget-object p2, p0, LE9/c;->k:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {p0, p2}, LE9/c;->P(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p2, p0, LE9/c;->z:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, LE9/c;->t()V

    iput-boolean p3, p0, LE9/c;->F:Z

    iput-boolean p4, p0, LE9/c;->G:Z

    const/4 p1, 0x1

    return p1
.end method

.method public final C()V
    .locals 2

    iget-object v0, p0, LE9/c;->A:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LE9/c;->A:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, LE9/c;->B:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final D()V
    .locals 1

    iget-object v0, p0, LE9/c;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, LE9/c;->C()V

    return-void
.end method

.method public final E(LE9/b;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instance",
            "scene",
            "receiveShadow"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object v0, p1, LE9/b;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, LE9/c;->H:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->D1()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->m1()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->u0()Lkc/d;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LE9/c;->l:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->K()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "MaterialObject - create impostor renderable"

    invoke-static {v1}, LE9/c;->d0(Ljava/lang/String;)LL6/e;

    move-result-object v1

    :try_start_0
    new-instance v2, Lkc/c;

    invoke-direct {v2}, Lkc/c;-><init>()V

    iput-object v2, p1, LE9/b;->d:Lkc/c;

    new-instance v2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    new-instance v3, Lcom/google/android/filament/RenderableManager$a;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/google/android/filament/RenderableManager$a;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/filament/RenderableManager$a;->d(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/google/android/filament/RenderableManager$a;->v(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v4

    iget-object p3, p0, LE9/c;->l:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->K()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v5

    iget-object v6, p1, LE9/b;->d:Lkc/c;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->m1()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v7

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->u0()Lkc/d;

    move-result-object v8

    sget-object v9, Lcom/google/android/filament/RenderableManager$b;->TRIANGLES:Lcom/google/android/filament/RenderableManager$b;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->t0()Lcom/google/android/filament/Box;

    move-result-object v10

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;-><init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Lkc/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;Lkc/d;Lcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/Box;)V

    iput-object v2, p1, LE9/b;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {p0, p1}, LE9/c;->n0(LE9/b;)V

    iget-object p3, p1, LE9/b;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->hideFromAllLayers()V

    iget-object p1, p1, LE9/b;->d:Lkc/c;

    invoke-virtual {p0, p2, p1}, LE9/c;->y(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;Lkc/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, LE9/c;->a0(LL6/e;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v1}, LE9/c;->a0(LL6/e;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public final F(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;ZZLcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)LE9/b;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "obj",
            "scene",
            "castShadow",
            "receiveShadow",
            "renderBake"
        }
    .end annotation

    invoke-virtual {p0, p5}, LE9/c;->P(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, LE9/b;

    invoke-direct {v0}, LE9/b;-><init>()V

    iput-object p1, v0, LE9/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    const-string p1, "MaterialObject - create entity/renderable"

    invoke-static {p1}, LE9/c;->d0(Ljava/lang/String;)LL6/e;

    move-result-object p1

    :try_start_0
    new-instance v1, Lkc/c;

    invoke-direct {v1}, Lkc/c;-><init>()V

    iput-object v1, v0, LE9/b;->b:Lkc/c;

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    new-instance v2, Lcom/google/android/filament/RenderableManager$a;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/google/android/filament/RenderableManager$a;-><init>(I)V

    invoke-virtual {v2, p3}, Lcom/google/android/filament/RenderableManager$a;->d(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/google/android/filament/RenderableManager$a;->v(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v3

    iget-object p3, p0, LE9/c;->b:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->K()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v4

    iget-object v5, v0, LE9/b;->b:Lkc/c;

    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->m1()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v6

    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->u0()Lkc/d;

    move-result-object v7

    sget-object v8, Lcom/google/android/filament/RenderableManager$b;->TRIANGLES:Lcom/google/android/filament/RenderableManager$b;

    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->t0()Lcom/google/android/filament/Box;

    move-result-object v9

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;-><init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Lkc/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;Lkc/d;Lcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/Box;)V

    iput-object v1, v0, LE9/b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {p1}, LE9/c;->a0(LL6/e;)V

    const-string p1, "MaterialObject - create transform/scene"

    invoke-static {p1}, LE9/c;->d0(Ljava/lang/String;)LL6/e;

    move-result-object p1

    :try_start_1
    invoke-virtual {p0, v0}, LE9/c;->p0(LE9/b;)V

    iget-object p3, v0, LE9/b;->b:Lkc/c;

    invoke-virtual {p0, p2, p3}, LE9/c;->y(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;Lkc/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1}, LE9/c;->a0(LL6/e;)V

    iget-boolean p1, p0, LE9/c;->d:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, LE9/c;->c:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, LE9/c;->K()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0, p2, p4}, LE9/c;->E(LE9/b;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;Z)V

    :cond_1
    return-object v0

    :catchall_0
    move-exception p2

    invoke-static {p1}, LE9/c;->a0(LL6/e;)V

    throw p2

    :catchall_1
    move-exception p2

    invoke-static {p1}, LE9/c;->a0(LL6/e;)V

    throw p2
.end method

.method public final G(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;LE9/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scene",
            "instance"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "MaterialObject - destroy scene remove"

    invoke-static {v0}, LE9/c;->d0(Ljava/lang/String;)LL6/e;

    move-result-object v0

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v1, p2, LE9/b;->b:Lkc/c;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->F(Lkc/c;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p2, LE9/b;->d:Lkc/c;

    if-eqz v1, :cond_2

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->F(Lkc/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {v0}, LE9/c;->a0(LL6/e;)V

    throw p1

    :cond_2
    :goto_2
    invoke-static {v0}, LE9/c;->a0(LL6/e;)V

    const-string p1, "MaterialObject - destroy renderables"

    invoke-static {p1}, LE9/c;->d0(Ljava/lang/String;)LL6/e;

    move-result-object p1

    :try_start_1
    iget-object v0, p2, LE9/b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyImmediate()V

    iput-object v1, p2, LE9/b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    goto :goto_3

    :catchall_1
    move-exception p2

    goto :goto_4

    :cond_3
    :goto_3
    iget-object v0, p2, LE9/b;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyImmediate()V

    iput-object v1, p2, LE9/b;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    invoke-static {p1}, LE9/c;->a0(LL6/e;)V

    iput-object v1, p2, LE9/b;->b:Lkc/c;

    iput-object v1, p2, LE9/b;->d:Lkc/c;

    return-void

    :goto_4
    invoke-static {p1}, LE9/c;->a0(LL6/e;)V

    throw p2
.end method

.method public final H(Lkc/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entity"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->z(Lkc/c;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->F(Lkc/c;)V

    return-void
.end method

.method public I(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scene"
        }
    .end annotation

    iput-object p1, p0, LE9/c;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    iget-boolean p1, p0, LE9/c;->y:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, LE9/c;->y:Z

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, LE9/c;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, LE9/c;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LE9/b;

    iget-object v1, v0, LE9/b;->b:Lkc/c;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, LE9/c;->H(Lkc/c;)V

    :cond_0
    iget-object v0, v0, LE9/b;->d:Lkc/c;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, LE9/c;->H(Lkc/c;)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final J(LE9/b;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    iget-boolean v0, p0, LE9/c;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, LE9/c;->c:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p1, LE9/b;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LE9/c;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1}, LE9/c;->f0(LE9/b;)V

    :cond_2
    :goto_0
    return v1
.end method

.method public final K()Z
    .locals 5

    iget-boolean v0, p0, LE9/c;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, LE9/c;->c:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v0, LE9/c;->H:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->D1()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->SQUARE90:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->I1(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    sput-object v0, LE9/c;->H:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    :cond_2
    sget-object v0, LE9/c;->H:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->D1()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, LE9/c;->H:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->A1()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, LE9/c;->H:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->apply()V

    :cond_3
    sget-object v0, LE9/c;->H:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->D1()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, LE9/c;->H:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->m1()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v0

    if-eqz v0, :cond_7

    sget-object v0, LE9/c;->H:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->u0()Lkc/d;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, LE9/c;->l:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    const/4 v2, 0x1

    if-nez v0, :cond_5

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;-><init>()V

    iput-object v0, p0, LE9/c;->l:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PoolImpostorMaterial/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->e:Ljava/lang/String;

    iget-object v0, p0, LE9/c;->l:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->g:Z

    const-string v3, "Lit/PBR"

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->p0(Ljava/lang/String;)V

    iget-object v0, p0, LE9/c;->l:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    const-string v3, "blendingMode"

    const-string v4, "MASKED"

    invoke-virtual {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->setString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LE9/c;->l:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    const-string v3, "doubleSided"

    invoke-virtual {v0, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->setBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, LE9/c;->l:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    const-string v3, "roughnessFallback"

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->setFloat(Ljava/lang/String;F)V

    iget-object v0, p0, LE9/c;->l:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    const-string v3, "metallicFallback"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->setFloat(Ljava/lang/String;F)V

    iget-object v0, p0, LE9/c;->l:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    const-string v3, "windeffect"

    iget v4, p0, LE9/c;->m:F

    invoke-virtual {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->setFloat(Ljava/lang/String;F)V

    iget-object v0, p0, LE9/c;->l:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-static {v0}, Lva/g;->d(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    :cond_5
    invoke-virtual {p0}, LE9/c;->v()V

    iget-object v0, p0, LE9/c;->l:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->K()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, LE9/c;->l:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->y()V

    :cond_6
    iget-object v0, p0, LE9/c;->l:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->K()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-eqz v0, :cond_7

    move v1, v2

    :cond_7
    :goto_0
    return v1
.end method

.method public L()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1

    iget-object v0, p0, LE9/c;->k:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object v0
.end method

.method public M()Lcom/itsmagic/engine/Engines/Engine/Material/Material;
    .locals 1

    iget-object v0, p0, LE9/c;->b:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    return-object v0
.end method

.method public N()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LE9/c;->j:Ljava/util/List;

    return-object v0
.end method

.method public final O()Z
    .locals 2

    iget-object v0, p0, LE9/c;->A:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LE9/c;->A:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final P(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->D1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->m1()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->u0()Lkc/d;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public Q()Z
    .locals 1

    iget-object v0, p0, LE9/c;->k:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {p0, v0}, LE9/c;->P(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Z

    move-result v0

    return v0
.end method

.method public R()Z
    .locals 1

    iget-boolean v0, p0, LE9/c;->d:Z

    return v0
.end method

.method public S()Z
    .locals 1

    iget-boolean v0, p0, LE9/c;->c:Z

    return v0
.end method

.method public final T(IIIIIIIIIIIIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
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
            "startDestroyQ",
            "startCreateQ",
            "startImpostorQ",
            "startInstances",
            "endDestroyQ",
            "endCreateQ",
            "endImpostorQ",
            "endInstances",
            "operations",
            "destroyedCount",
            "impostorCreatedCount",
            "createdCount",
            "executed"
        }
    .end annotation

    if-nez p13, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    return-void

    :cond_0
    sget-object p13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MaterialObjectScheduler material="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LE9/c;->b:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, LE9/c;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ops="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p9, " destroyed="

    invoke-virtual {v0, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p9, " impostors="

    invoke-virtual {v0, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p9, " created="

    invoke-virtual {v0, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p9, " destroyQ="

    invoke-virtual {v0, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "->"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, " createQ="

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " impostorQ="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " instances="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " executingScheduler="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, LE9/c;->D:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p13, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public U(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "obj",
            "scene",
            "castShadow",
            "receiveShadow"
        }
    .end annotation

    iput-object p2, p0, LE9/c;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    iput-boolean p4, p0, LE9/c;->f:Z

    iget-object p2, p0, LE9/c;->z:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LE9/c;->t()V

    return-void
.end method

.method public V(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    iget-object v0, p0, LE9/c;->q:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LE9/b;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p1, LE9/b;->b:Lkc/c;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, LE9/c;->p0(LE9/b;)V

    :cond_1
    iget-object v0, p1, LE9/b;->d:Lkc/c;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, LE9/c;->n0(LE9/b;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public W(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "obj",
            "scene",
            "castShadow",
            "receiveShadow"
        }
    .end annotation

    iput-object p2, p0, LE9/c;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    iget-object p2, p0, LE9/c;->q:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LE9/b;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, LE9/c;->C:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LE9/c;->t()V

    return-void
.end method

.method public X(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scene"
        }
    .end annotation

    invoke-virtual {p0}, LE9/c;->D()V

    iput-object p1, p0, LE9/c;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-virtual {p0}, LE9/c;->e0()V

    invoke-virtual {p0}, LE9/c;->t()V

    iget-object p1, p0, LE9/c;->b:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iget-object v0, p0, LE9/c;->g:Lva/d;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->h0(Lva/d;)V

    return-void
.end method

.method public final Y()I
    .locals 2

    iget-object v0, p0, LE9/c;->A:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LE9/c;->A:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final Z()LE9/b;
    .locals 3

    iget-object v0, p0, LE9/c;->A:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LE9/c;->A:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, LE9/c;->A:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LE9/b;

    iget-object v2, p0, LE9/c;->B:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b0(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scene"
        }
    .end annotation

    iput-object p1, p0, LE9/c;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    iget-boolean v0, p0, LE9/c;->y:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, LE9/c;->y:Z

    :goto_0
    iget-object v1, p0, LE9/c;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, LE9/c;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LE9/b;

    iget-object v2, v1, LE9/b;->b:Lkc/c;

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, v2}, LE9/c;->y(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;Lkc/c;)V

    :cond_0
    iget-object v1, v1, LE9/b;->d:Lkc/c;

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, v1}, LE9/c;->y(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;Lkc/c;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public c0(LMb/p;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impostorTexture"
        }
    .end annotation

    iget-boolean v0, p0, LE9/c;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, LE9/c;->c:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, LMb/p;->Y(LMb/p;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lc9/a;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, LE9/c;->z(LMb/p;)V

    :cond_2
    iget-object v0, p0, LE9/c;->n:LMb/p;

    if-ne v0, p1, :cond_3

    invoke-virtual {p0}, LE9/c;->x()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, LE9/c;->w()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method public final e0()V
    .locals 2

    invoke-virtual {p0}, LE9/c;->C()V

    iget-object v0, p0, LE9/c;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LE9/c;->C:Ljava/util/List;

    iget-object v1, p0, LE9/c;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, LE9/c;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, LE9/c;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final f0(LE9/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    iget-object v0, p0, LE9/c;->A:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LE9/c;->B:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LE9/c;->A:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, LE9/c;->t()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public g0()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LE9/c;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, LE9/c;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LE9/b;

    iget-object v2, v1, LE9/b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->showAllLayers()V

    :cond_0
    iget-object v1, v1, LE9/b;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->hideFromAllLayers()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public h0()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LE9/c;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, LE9/c;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LE9/b;

    iget-object v2, v1, LE9/b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->showAllLayersButNoApply()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, LE9/b;->k:Ljava/lang/Runnable;

    invoke-static {v2}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v2, v1, LE9/b;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->hideFromAllLayersButNoApply()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, v1, LE9/b;->l:Ljava/lang/Runnable;

    invoke-static {v1}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public i0(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impostorAllowed"
        }
    .end annotation

    iget-boolean v0, p0, LE9/c;->d:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, LE9/c;->d:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LE9/c;->j0(Z)V

    :cond_1
    return-void
.end method

.method public j0(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impostorOwner"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-boolean v0, p0, LE9/c;->d:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-boolean v0, p0, LE9/c;->c:Z

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput-boolean p1, p0, LE9/c;->c:Z

    if-nez p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, LE9/c;->n:LMb/p;

    invoke-virtual {p0}, LE9/c;->C()V

    :cond_2
    return-void
.end method

.method public k0(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impostorWindEffect"
        }
    .end annotation

    invoke-static {p1}, Lgd/b;->G(F)F

    move-result p1

    iput p1, p0, LE9/c;->m:F

    invoke-virtual {p0}, LE9/c;->v()V

    return-void
.end method

.method public l0(FZZZFLcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;LMb/p;FFFF)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
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
            "maxDistance",
            "enableMaxRenderDistance",
            "enableImpostorSystem",
            "impostorReady",
            "impostorStartDistance",
            "camera",
            "impostorTexture",
            "captureHalfWidth",
            "captureHalfHeight",
            "capturePivotYOffset",
            "captureSourceScale"
        }
    .end annotation

    move-object/from16 v8, p0

    if-nez p6, :cond_0

    invoke-virtual/range {p0 .. p0}, LE9/c;->h0()V

    return-void

    :cond_0
    mul-float v9, p1, p1

    mul-float v10, p5, p5

    const v0, 0x38d1b717    # 1.0E-4f

    move/from16 v1, p11

    invoke-static {v0, v1}, Lgd/b;->M(FF)F

    move-result v11

    const v0, 0x3d4ccccd    # 0.05f

    move/from16 v1, p8

    invoke-static {v0, v1}, Lgd/b;->M(FF)F

    move-result v12

    move/from16 v1, p9

    invoke-static {v0, v1}, Lgd/b;->M(FF)F

    move-result v13

    invoke-virtual/range {p6 .. p6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getRenderCameraPosition()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v14

    invoke-static/range {p7 .. p7}, LMb/p;->Y(LMb/p;)Z

    move-result v15

    const/16 v16, 0x0

    move/from16 v7, v16

    :goto_0
    iget-object v0, v8, LE9/c;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_10

    iget-object v0, v8, LE9/c;->o:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LE9/b;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, v0, LE9/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    if-nez v1, :cond_2

    :cond_1
    move/from16 v17, v7

    goto/16 :goto_7

    :cond_2
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->s()F

    move-result v1

    iget-object v2, v0, LE9/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->u()F

    move-result v2

    iget-object v3, v0, LE9/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->v()F

    move-result v3

    invoke-virtual {v14, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->p2(FFF)F

    move-result v1

    iget-object v2, v0, LE9/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->s()F

    move-result v2

    iget-object v3, v0, LE9/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->v()F

    move-result v3

    invoke-virtual {v14, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->t2(FF)F

    move-result v2

    const/4 v3, 0x1

    if-eqz p2, :cond_4

    cmpg-float v1, v1, v9

    if-gtz v1, :cond_3

    goto :goto_1

    :cond_3
    move/from16 v1, v16

    goto :goto_2

    :cond_4
    :goto_1
    move v1, v3

    :goto_2
    if-eqz p3, :cond_5

    iget-boolean v4, v8, LE9/c;->d:Z

    if-eqz v4, :cond_5

    if-eqz p4, :cond_5

    cmpl-float v2, v2, v10

    if-ltz v2, :cond_5

    move v2, v3

    goto :goto_3

    :catch_0
    move-exception v0

    move/from16 v17, v7

    goto/16 :goto_6

    :cond_5
    move/from16 v2, v16

    :goto_3
    iget-boolean v4, v8, LE9/c;->c:Z

    if-eqz v4, :cond_6

    iget-object v4, v0, LE9/b;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->isDestroyied()Z

    move-result v4

    if-nez v4, :cond_6

    if-eqz v15, :cond_6

    iget-object v4, v8, LE9/c;->l:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->K()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v4

    if-eqz v4, :cond_6

    move v4, v3

    goto :goto_4

    :cond_6
    move/from16 v4, v16

    :goto_4
    if-nez v4, :cond_8

    iget-boolean v5, v8, LE9/c;->c:Z

    if-eqz v5, :cond_8

    if-eqz v15, :cond_8

    invoke-virtual {v8, v0}, LE9/c;->J(LE9/b;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v4, v0, LE9/b;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->isDestroyied()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, v8, LE9/c;->l:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->K()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v4

    if-eqz v4, :cond_7

    goto :goto_5

    :cond_7
    move/from16 v3, v16

    :goto_5
    move v4, v3

    :cond_8
    if-eqz v2, :cond_b

    if-eqz v4, :cond_b

    iget-object v2, v0, LE9/b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->isDestroyied()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v0, LE9/b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->hideFromAllLayersButNoApply()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v0, LE9/b;->k:Ljava/lang/Runnable;

    invoke-static {v2}, Lc9/a;->I(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    if-eqz v1, :cond_a

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v14

    move v4, v12

    move v5, v13

    move/from16 v6, p10

    move/from16 v17, v7

    move v7, v11

    :try_start_1
    invoke-virtual/range {v1 .. v7}, LE9/c;->o0(LE9/b;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FFFF)V

    iget-object v1, v0, LE9/b;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->showAllLayersButNoApply()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v0, v0, LE9/b;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    goto/16 :goto_7

    :catch_1
    move-exception v0

    goto/16 :goto_6

    :cond_a
    move/from16 v17, v7

    iget-object v1, v0, LE9/b;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->hideFromAllLayersButNoApply()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v0, v0, LE9/b;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    goto :goto_7

    :cond_b
    move/from16 v17, v7

    iget-object v3, v0, LE9/b;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->isDestroyied()Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, v0, LE9/b;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->hideFromAllLayersButNoApply()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, v0, LE9/b;->l:Ljava/lang/Runnable;

    invoke-static {v3}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :cond_c
    iget-object v3, v0, LE9/b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->isDestroyied()Z

    move-result v3

    if-nez v3, :cond_f

    if-eqz v2, :cond_d

    if-eqz p4, :cond_d

    iget-boolean v2, v8, LE9/c;->c:Z

    if-nez v2, :cond_d

    iget-object v1, v0, LE9/b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->hideFromAllLayersButNoApply()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v0, v0, LE9/b;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    goto :goto_7

    :cond_d
    if-eqz v1, :cond_e

    iget-object v1, v0, LE9/b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->showAllLayersButNoApply()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v0, v0, LE9/b;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    goto :goto_7

    :cond_e
    iget-object v1, v0, LE9/b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->hideFromAllLayersButNoApply()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v0, v0, LE9/b;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_f
    :goto_7
    add-int/lit8 v7, v17, 0x1

    goto/16 :goto_0

    :cond_10
    return-void
.end method

.method public m0(LMb/p;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impostorTexture"
        }
    .end annotation

    iget-boolean v0, p0, LE9/c;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LE9/c;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, LE9/c;->z(LMb/p;)V

    :cond_0
    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget-object v1, p0, LE9/c;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, LE9/c;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LE9/b;

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v2, v1, LE9/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v2, v1, LE9/b;->j:Z

    if-eqz v2, :cond_2

    invoke-static {}, Ljc/a;->i()Lcom/google/android/filament/TransformManager;

    move-result-object v2

    iget-object v3, v1, LE9/b;->d:Lkc/c;

    invoke-virtual {v3}, Lkc/c;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/filament/TransformManager;->h(I)I

    move-result v3

    iget-object v4, v1, LE9/b;->i:[F

    invoke-virtual {v2, v3, v4}, Lcom/google/android/filament/TransformManager;->u(I[F)V

    iput-boolean p1, v1, LE9/b;->j:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, LE9/c;->p:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final n0(LE9/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    iget-object v0, p1, LE9/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->getScale()F

    move-result v0

    const v1, 0x3d4ccccd    # 0.05f

    invoke-static {v1, v0}, Lgd/b;->M(FF)F

    move-result v0

    iget-object v1, p0, LE9/c;->v:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p1, LE9/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->s()F

    move-result v2

    iget-object v3, p1, LE9/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->u()F

    move-result v3

    iget-object v4, p1, LE9/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->v()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T1(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, LE9/c;->w:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T1(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, LE9/c;->x:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I(FFF)V

    iget-object v0, p0, LE9/c;->r:LUb/f;

    iget-object v1, p0, LE9/c;->v:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, LE9/c;->x:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object v3, p0, LE9/c;->w:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1, v2, v3}, LUb/f;->j1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object v0, p0, LE9/c;->r:LUb/f;

    iget-object v1, p0, LE9/c;->s:[F

    invoke-virtual {v0, v1}, LUb/f;->B([F)[F

    invoke-static {}, Ljc/a;->i()Lcom/google/android/filament/TransformManager;

    move-result-object v0

    iget-object p1, p1, LE9/b;->d:Lkc/c;

    invoke-virtual {p1}, Lkc/c;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/filament/TransformManager;->h(I)I

    move-result p1

    iget-object v1, p0, LE9/c;->s:[F

    invoke-virtual {v0, p1, v1}, Lcom/google/android/filament/TransformManager;->u(I[F)V

    return-void
.end method

.method public final o0(LE9/b;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FFFF)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instance",
            "cameraPosition",
            "captureHalfWidth",
            "captureHalfHeight",
            "capturePivotYOffset",
            "captureSourceScale"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    iget-object v1, p1, LE9/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->s()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p2

    iget-object v1, p1, LE9/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->v()F

    move-result v1

    sub-float/2addr p2, v1

    mul-float v1, v0, v0

    mul-float v2, p2, p2

    add-float/2addr v1, v2

    const v2, 0x358637bd    # 1.0E-6f

    cmpg-float v1, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_0

    move p2, v2

    :cond_0
    float-to-double v0, v0

    float-to-double v3, p2

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p2, v0

    const/high16 v0, 0x43340000    # 180.0f

    add-float/2addr p2, v0

    iget-object v0, p0, LE9/c;->x:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I(FFF)V

    iget-object p2, p1, LE9/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->getScale()F

    move-result p2

    div-float/2addr p2, p6

    const/high16 p6, 0x40000000    # 2.0f

    mul-float/2addr p3, p6

    mul-float/2addr p3, p2

    const v0, 0x3d4ccccd    # 0.05f

    invoke-static {v0, p3}, Lgd/b;->M(FF)F

    move-result p3

    mul-float/2addr p4, p6

    mul-float/2addr p4, p2

    invoke-static {v0, p4}, Lgd/b;->M(FF)F

    move-result p4

    mul-float/2addr p5, p2

    iget-object p2, p0, LE9/c;->v:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p6, p1, LE9/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-virtual {p6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->s()F

    move-result p6

    iget-object v0, p1, LE9/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->u()F

    move-result v0

    add-float/2addr v0, p5

    iget-object p5, p1, LE9/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->v()F

    move-result p5

    invoke-virtual {p2, p6, v0, p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T1(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p0, LE9/c;->w:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2, p3, p4, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T1(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p0, LE9/c;->r:LUb/f;

    iget-object p3, p0, LE9/c;->v:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p4, p0, LE9/c;->x:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object p5, p0, LE9/c;->w:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2, p3, p4, p5}, LUb/f;->j1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object p2, p0, LE9/c;->r:LUb/f;

    iget-object p3, p1, LE9/b;->i:[F

    invoke-virtual {p2, p3}, LUb/f;->B([F)[F

    const/4 p2, 0x1

    iput-boolean p2, p1, LE9/b;->j:Z

    iget-object p2, p0, LE9/c;->p:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final p0(LE9/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    iget-object v0, p1, LE9/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    iget-object v1, p0, LE9/c;->t:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->x(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p1, LE9/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    iget-object v1, p0, LE9/c;->u:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->z(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object v0, p0, LE9/c;->r:LUb/f;

    iget-object v1, p0, LE9/c;->t:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, LE9/c;->u:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object v3, p1, LE9/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->getScale()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, LUb/f;->i1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;F)V

    iget-object v0, p0, LE9/c;->r:LUb/f;

    iget-object v1, p0, LE9/c;->s:[F

    invoke-virtual {v0, v1}, LUb/f;->B([F)[F

    invoke-static {}, Ljc/a;->i()Lcom/google/android/filament/TransformManager;

    move-result-object v0

    iget-object p1, p1, LE9/b;->b:Lkc/c;

    invoke-virtual {p1}, Lkc/c;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/filament/TransformManager;->h(I)I

    move-result p1

    iget-object v1, p0, LE9/c;->s:[F

    invoke-virtual {v0, p1, v1}, Lcom/google/android/filament/TransformManager;->u(I[F)V

    return-void
.end method

.method public final t()V
    .locals 1

    iget-boolean v0, p0, LE9/c;->D:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LE9/c;->D:Z

    iget-object v0, p0, LE9/c;->E:LGb/b;

    invoke-static {v0}, Lc9/a;->H(LGb/b;)V

    :cond_0
    return-void
.end method

.method public u(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mr"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LE9/c;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final v()V
    .locals 3

    iget-object v0, p0, LE9/c;->l:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "windeffect"

    iget v2, p0, LE9/c;->m:F

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->setFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public final w()Z
    .locals 4

    invoke-virtual {p0}, LE9/c;->O()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, LE9/c;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, LE9/c;->o:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LE9/b;

    if-eqz v2, :cond_3

    iget-object v3, v2, LE9/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v2, LE9/b;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->isDestroyied()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    return v1

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public final x()Z
    .locals 1

    iget-object v0, p0, LE9/c;->l:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->K()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, LE9/c;->H:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->D1()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, LE9/c;->H:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->m1()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, LE9/c;->H:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->u0()Lkc/d;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final y(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;Lkc/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scene",
            "entity"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->z(Lkc/c;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v0

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->F(Lkc/c;)V

    :cond_2
    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->w(Lkc/c;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final z(LMb/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impostorTexture"
        }
    .end annotation

    iget-boolean v0, p0, LE9/c;->d:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, LE9/c;->c:Z

    if-eqz v0, :cond_3

    invoke-static {p1}, LMb/p;->Y(LMb/p;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LE9/c;->K()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, LE9/c;->n:LMb/p;

    if-ne v0, p1, :cond_2

    return-void

    :cond_2
    iput-object p1, p0, LE9/c;->n:LMb/p;

    iget-object v0, p0, LE9/c;->l:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    const-string v1, "albedo"

    invoke-virtual {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->r0(Ljava/lang/String;LMb/p;)V

    :cond_3
    :goto_0
    return-void
.end method
