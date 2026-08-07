.class public Lorg/hull/ObjectPool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static threadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private list:Lorg/hull/ObjectArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hull/ObjectArrayList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/hull/ObjectPool$1;

    invoke-direct {v0}, Lorg/hull/ObjectPool$1;-><init>()V

    sput-object v0, Lorg/hull/ObjectPool;->threadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/hull/ObjectArrayList;

    invoke-direct {v0}, Lorg/hull/ObjectArrayList;-><init>()V

    iput-object v0, p0, Lorg/hull/ObjectPool;->list:Lorg/hull/ObjectArrayList;

    iput-object p1, p0, Lorg/hull/ObjectPool;->cls:Ljava/lang/Class;

    return-void
.end method

.method public static cleanCurrentThread()V
    .locals 1

    sget-object v0, Lorg/hull/ObjectPool;->threadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method

.method private create()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/hull/ObjectPool;->cls:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :goto_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static get(Ljava/lang/Class;)Lorg/hull/ObjectPool;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/hull/ObjectPool<",
            "TT;>;"
        }
    .end annotation

    .line 4
    sget-object v0, Lorg/hull/ObjectPool;->threadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 5
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/hull/ObjectPool;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lorg/hull/ObjectPool;

    invoke-direct {v1, p0}, Lorg/hull/ObjectPool;-><init>(Ljava/lang/Class;)V

    .line 7
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hull/ObjectPool;->list:Lorg/hull/ObjectArrayList;

    invoke-virtual {v0}, Lorg/hull/ObjectArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/hull/ObjectPool;->list:Lorg/hull/ObjectArrayList;

    invoke-virtual {v0}, Lorg/hull/ObjectArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-direct {p0}, Lorg/hull/ObjectPool;->create()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public release(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/hull/ObjectPool;->list:Lorg/hull/ObjectArrayList;

    invoke-virtual {v0, p1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
