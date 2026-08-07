.class public Lorg/hull/ArrayPool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hull/ArrayPool$IntValue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static floatComparator:Ljava/util/Comparator;

.field private static intComparator:Ljava/util/Comparator;

.field private static objectComparator:Ljava/util/Comparator;

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
.field private comparator:Ljava/util/Comparator;

.field private componentType:Ljava/lang/Class;

.field private key:Lorg/hull/ArrayPool$IntValue;

.field private list:Lorg/hull/ObjectArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/hull/ArrayPool$1;

    invoke-direct {v0}, Lorg/hull/ArrayPool$1;-><init>()V

    sput-object v0, Lorg/hull/ArrayPool;->floatComparator:Ljava/util/Comparator;

    new-instance v0, Lorg/hull/ArrayPool$2;

    invoke-direct {v0}, Lorg/hull/ArrayPool$2;-><init>()V

    sput-object v0, Lorg/hull/ArrayPool;->intComparator:Ljava/util/Comparator;

    new-instance v0, Lorg/hull/ArrayPool$3;

    invoke-direct {v0}, Lorg/hull/ArrayPool$3;-><init>()V

    sput-object v0, Lorg/hull/ArrayPool;->objectComparator:Ljava/util/Comparator;

    new-instance v0, Lorg/hull/ArrayPool$4;

    invoke-direct {v0}, Lorg/hull/ArrayPool$4;-><init>()V

    sput-object v0, Lorg/hull/ArrayPool;->threadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/hull/ObjectArrayList;

    invoke-direct {v0}, Lorg/hull/ObjectArrayList;-><init>()V

    iput-object v0, p0, Lorg/hull/ArrayPool;->list:Lorg/hull/ObjectArrayList;

    new-instance v0, Lorg/hull/ArrayPool$IntValue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/hull/ArrayPool$IntValue;-><init>(Lorg/hull/ArrayPool$1;)V

    iput-object v0, p0, Lorg/hull/ArrayPool;->key:Lorg/hull/ArrayPool$IntValue;

    iput-object p1, p0, Lorg/hull/ArrayPool;->componentType:Ljava/lang/Class;

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    sget-object p1, Lorg/hull/ArrayPool;->floatComparator:Ljava/util/Comparator;

    iput-object p1, p0, Lorg/hull/ArrayPool;->comparator:Ljava/util/Comparator;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    sget-object p1, Lorg/hull/ArrayPool;->intComparator:Ljava/util/Comparator;

    iput-object p1, p0, Lorg/hull/ArrayPool;->comparator:Ljava/util/Comparator;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Lorg/hull/ArrayPool;->objectComparator:Ljava/util/Comparator;

    iput-object p1, p0, Lorg/hull/ArrayPool;->comparator:Ljava/util/Comparator;

    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static cleanCurrentThread()V
    .locals 1

    sget-object v0, Lorg/hull/ArrayPool;->threadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method

.method private create(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/hull/ArrayPool;->componentType:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static get(Ljava/lang/Class;)Lorg/hull/ArrayPool;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            ")",
            "Lorg/hull/ArrayPool<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lorg/hull/ArrayPool;->threadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/hull/ArrayPool;

    if-nez v1, :cond_0

    new-instance v1, Lorg/hull/ArrayPool;

    invoke-direct {v1, p0}, Lorg/hull/ArrayPool;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method


# virtual methods
.method public getAtLeast(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/hull/ArrayPool;->key:Lorg/hull/ArrayPool$IntValue;

    iput p1, v0, Lorg/hull/ArrayPool$IntValue;->value:I

    iget-object v1, p0, Lorg/hull/ArrayPool;->list:Lorg/hull/ObjectArrayList;

    iget-object v2, p0, Lorg/hull/ArrayPool;->comparator:Ljava/util/Comparator;

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-gez v0, :cond_1

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/hull/ArrayPool;->list:Lorg/hull/ObjectArrayList;

    invoke-virtual {v1}, Lorg/hull/ObjectArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object p1, p0, Lorg/hull/ArrayPool;->list:Lorg/hull/ObjectArrayList;

    invoke-virtual {p1, v0}, Lorg/hull/ObjectArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lorg/hull/ArrayPool;->create(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lorg/hull/ArrayPool;->list:Lorg/hull/ObjectArrayList;

    invoke-virtual {p1, v0}, Lorg/hull/ObjectArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getFixed(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/hull/ArrayPool;->key:Lorg/hull/ArrayPool$IntValue;

    iput p1, v0, Lorg/hull/ArrayPool$IntValue;->value:I

    iget-object v1, p0, Lorg/hull/ArrayPool;->list:Lorg/hull/ObjectArrayList;

    iget-object v2, p0, Lorg/hull/ArrayPool;->comparator:Ljava/util/Comparator;

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-gez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/hull/ArrayPool;->create(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/hull/ArrayPool;->list:Lorg/hull/ObjectArrayList;

    invoke-virtual {p1, v0}, Lorg/hull/ObjectArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public release(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/hull/ArrayPool;->list:Lorg/hull/ObjectArrayList;

    iget-object v1, p0, Lorg/hull/ArrayPool;->comparator:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-gez v0, :cond_0

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    iget-object v1, p0, Lorg/hull/ArrayPool;->list:Lorg/hull/ObjectArrayList;

    invoke-virtual {v1, v0, p1}, Lorg/hull/ObjectArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/hull/ArrayPool;->comparator:Ljava/util/Comparator;

    sget-object v1, Lorg/hull/ArrayPool;->objectComparator:Ljava/util/Comparator;

    if-ne v0, v1, :cond_1

    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x0

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
