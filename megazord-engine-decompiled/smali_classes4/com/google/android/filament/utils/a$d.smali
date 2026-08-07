.class public final Lcom/google/android/filament/utils/a$d;
.super LTf/q;
.source "SourceFile"

# interfaces
.implements Leg/p;


# annotations
.annotation runtime LTf/f;
    c = "com.google.android.filament.utils.ModelViewer$fetchResources$2"
    f = "ModelViewer.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/filament/utils/a;->t(Lcom/google/android/filament/gltfio/FilamentAsset;Leg/l;LQf/f;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LTf/q;",
        "Leg/p<",
        "Lwg/S;",
        "LQf/f<",
        "-",
        "LFf/P0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/nio/Buffer;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic d:Lcom/google/android/filament/utils/a;

.field public final synthetic e:Lcom/google/android/filament/gltfio/FilamentAsset;


# direct methods
.method public constructor <init>(Ljava/util/HashMap;Lcom/google/android/filament/utils/a;Lcom/google/android/filament/gltfio/FilamentAsset;LQf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/nio/Buffer;",
            ">;",
            "Lcom/google/android/filament/utils/a;",
            "Lcom/google/android/filament/gltfio/FilamentAsset;",
            "LQf/f<",
            "-",
            "Lcom/google/android/filament/utils/a$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/filament/utils/a$d;->c:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/google/android/filament/utils/a$d;->d:Lcom/google/android/filament/utils/a;

    iput-object p3, p0, Lcom/google/android/filament/utils/a$d;->e:Lcom/google/android/filament/gltfio/FilamentAsset;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, LTf/q;-><init>(ILQf/f;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;LQf/f;)LQf/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "LQf/f<",
            "*>;)",
            "LQf/f<",
            "LFf/P0;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/google/android/filament/utils/a$d;

    iget-object v0, p0, Lcom/google/android/filament/utils/a$d;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/filament/utils/a$d;->d:Lcom/google/android/filament/utils/a;

    iget-object v2, p0, Lcom/google/android/filament/utils/a$d;->e:Lcom/google/android/filament/gltfio/FilamentAsset;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/google/android/filament/utils/a$d;-><init>(Ljava/util/HashMap;Lcom/google/android/filament/utils/a;Lcom/google/android/filament/gltfio/FilamentAsset;LQf/f;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lwg/S;

    check-cast p2, LQf/f;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/filament/utils/a$d;->invoke(Lwg/S;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lwg/S;LQf/f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwg/S;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/filament/utils/a$d;->create(Ljava/lang/Object;LQf/f;)LQf/f;

    move-result-object p1

    check-cast p1, Lcom/google/android/filament/utils/a$d;

    sget-object p2, LFf/P0;->a:LFf/P0;

    invoke-virtual {p1, p2}, Lcom/google/android/filament/utils/a$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/filament/utils/a$d;->b:I

    if-nez v0, :cond_1

    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/filament/utils/a$d;->c:Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/google/android/filament/utils/a$d;->d:Lcom/google/android/filament/utils/a;

    invoke-static {v2}, Lcom/google/android/filament/utils/a;->g(Lcom/google/android/filament/utils/a;)Lcom/google/android/filament/gltfio/ResourceLoader;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/google/android/filament/gltfio/ResourceLoader;->addResourceData(Ljava/lang/String;Ljava/nio/Buffer;)Lcom/google/android/filament/gltfio/ResourceLoader;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/filament/utils/a$d;->d:Lcom/google/android/filament/utils/a;

    invoke-static {p1}, Lcom/google/android/filament/utils/a;->g(Lcom/google/android/filament/utils/a;)Lcom/google/android/filament/gltfio/ResourceLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/filament/utils/a$d;->e:Lcom/google/android/filament/gltfio/FilamentAsset;

    invoke-virtual {p1, v0}, Lcom/google/android/filament/gltfio/ResourceLoader;->asyncBeginLoad(Lcom/google/android/filament/gltfio/FilamentAsset;)Z

    iget-object p1, p0, Lcom/google/android/filament/utils/a$d;->d:Lcom/google/android/filament/utils/a;

    iget-object v0, p0, Lcom/google/android/filament/utils/a$d;->e:Lcom/google/android/filament/gltfio/FilamentAsset;

    invoke-virtual {v0}, Lcom/google/android/filament/gltfio/FilamentAsset;->getInstance()Lcom/google/android/filament/gltfio/FilamentInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/gltfio/FilamentInstance;->getAnimator()Lcom/google/android/filament/gltfio/Animator;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/filament/utils/a;->k(Lcom/google/android/filament/utils/a;Lcom/google/android/filament/gltfio/Animator;)V

    iget-object p1, p0, Lcom/google/android/filament/utils/a$d;->e:Lcom/google/android/filament/gltfio/FilamentAsset;

    invoke-virtual {p1}, Lcom/google/android/filament/gltfio/FilamentAsset;->releaseSourceData()V

    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
