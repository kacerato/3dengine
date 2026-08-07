.class public Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lbd/p;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP$InnerJP;,
        Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP$b;,
        Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP$a;
    }
.end annotation


# static fields
.field private static final PRE_ALLOC:I = 0x3e8

.field private static final THREAD_LOCK:Lra/B;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lra/B<",
            "Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP$InnerJP;",
            ">;"
        }
    .end annotation
.end field

.field private static final cleaners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final factories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final preAllocs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->preAllocs:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->factories:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->cleaners:Ljava/util/Map;

    new-instance v2, Lra/c;

    invoke-direct {v2}, Lra/c;-><init>()V

    const-class v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lra/e;

    invoke-direct {v2}, Lra/e;-><init>()V

    const-class v3, LJAVARuntime/Vector3;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lra/j;

    invoke-direct {v2}, Lra/j;-><init>()V

    const-class v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lra/k;

    invoke-direct {v2}, Lra/k;-><init>()V

    const-class v3, LJAVARuntime/Vector2;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lra/l;

    invoke-direct {v2}, Lra/l;-><init>()V

    const-class v3, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lra/m;

    invoke-direct {v2}, Lra/m;-><init>()V

    const-class v3, LJAVARuntime/Quaternion;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lra/o;

    invoke-direct {v2}, Lra/o;-><init>()V

    const-class v3, LJAVARuntime/Point2;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lra/p;

    invoke-direct {v2}, Lra/p;-><init>()V

    const-class v3, LUb/f;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lra/q;

    invoke-direct {v2}, Lra/q;-><init>()V

    const-class v3, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lra/r;

    invoke-direct {v2}, Lra/r;-><init>()V

    const-class v3, Lcom/jme3/math/Vector3f;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lra/n;

    invoke-direct {v2}, Lra/n;-><init>()V

    const-class v3, Lcom/jme3/math/Quaternion;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lra/s;

    invoke-direct {v2}, Lra/s;-><init>()V

    const-class v3, Ld9/b;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lra/t;

    invoke-direct {v2}, Lra/t;-><init>()V

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lra/u;

    invoke-direct {v2}, Lra/u;-><init>()V

    const-class v3, Ld9/c;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lra/v;

    invoke-direct {v2}, Lra/v;-><init>()V

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lra/w;

    invoke-direct {v2}, Lra/w;-><init>()V

    const-class v3, Loa/b;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lra/x;

    invoke-direct {v2}, Lra/x;-><init>()V

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lra/y;

    invoke-direct {v2}, Lra/y;-><init>()V

    const-class v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawData;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lra/z;

    invoke-direct {v2}, Lra/z;-><init>()V

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lra/d;

    invoke-direct {v2}, Lra/d;-><init>()V

    const-class v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawCmd;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lra/f;

    invoke-direct {v2}, Lra/f;-><init>()V

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lra/g;

    invoke-direct {v2}, Lra/g;-><init>()V

    const-class v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawList;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lra/h;

    invoke-direct {v0}, Lra/h;-><init>()V

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lra/B;

    new-instance v1, Lra/i;

    invoke-direct {v1}, Lra/i;-><init>()V

    invoke-direct {v0, v1}, Lra/B;-><init>(Ljava/util/function/Supplier;)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->THREAD_LOCK:Lra/B;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$200(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->getListOfNoLock(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->appendAllNoAlloc(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic access$400()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->cleaners:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic access$500()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->factories:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic access$600(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->instantiateNoFactory(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$700(Ljava/util/ArrayList;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->removeSwapLastByIdentity(Ljava/util/ArrayList;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static acquire(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cls"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->getJPForThread()Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP$InnerJP;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP$InnerJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static acquireNoFactory(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cls"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->getJPForThread()Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP$InnerJP;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP$InnerJP;->acquireNoFactory(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static appendAllNoAlloc(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "destination",
            "source"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static endFrame()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->THREAD_LOCK:Lra/B;

    invoke-virtual {v1}, Lra/B;->d()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lra/B;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP$InnerJP;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP$InnerJP;->endFrame()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getCleaner(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cls"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->cleaners:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP$a;

    return-object p0
.end method

.method public static getFactory(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cls"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->factories:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP$b;

    return-object p0
.end method

.method public static getJPForThread()Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP$InnerJP;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->THREAD_LOCK:Lra/B;

    invoke-virtual {v0}, Lra/B;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP$InnerJP;

    return-object v0
.end method

.method private static getListOfNoLock(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cls",
            "pool"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->preAllocs:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method private static instantiateNoFactory(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cls"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p0

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v3, v0

    new-array v3, v3, [Ljava/lang/Object;

    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    aput-object v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static release(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->THREAD_LOCK:Lra/B;

    invoke-virtual {v0}, Lra/B;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP$InnerJP;

    if-eqz v0, :cond_1

    invoke-static {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP$InnerJP;->access$000(Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP$InnerJP;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->THREAD_LOCK:Lra/B;

    invoke-virtual {v2}, Lra/B;->d()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {v2, v1}, Lra/B;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP$InnerJP;

    if-eq v2, v0, :cond_2

    invoke-static {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP$InnerJP;->access$000(Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP$InnerJP;Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static removeSwapLastByIdentity(Ljava/util/ArrayList;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static startFrame()V
    .locals 0

    return-void
.end method
