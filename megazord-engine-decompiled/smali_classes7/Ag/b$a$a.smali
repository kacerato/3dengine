.class public final LAg/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lfg/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAg/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;",
        "Lfg/d;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConcurrentWeakMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentWeakMap.kt\nkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,284:1\n1#2:285\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nConcurrentWeakMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentWeakMap.kt\nkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,284:1\n1#2:285\n*E\n"
    }
.end annotation


# instance fields
.field public final b:Leg/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/p<",
            "TK;TV;TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:I

.field public d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field public final synthetic f:LAg/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LAg/b<",
            "TK;TV;>.a;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LAg/b$a;Leg/p;)V
    .locals 0
    .param p1    # LAg/b$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/p<",
            "-TK;-TV;+TE;>;)V"
        }
    .end annotation

    iput-object p1, p0, LAg/b$a$a;->f:LAg/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LAg/b$a$a;->b:Leg/p;

    const/4 p1, -0x1

    iput p1, p0, LAg/b$a$a;->c:I

    invoke-direct {p0}, LAg/b$a$a;->a()V

    return-void
.end method

.method private final a()V
    .locals 2

    :cond_0
    :goto_0
    iget v0, p0, LAg/b$a$a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LAg/b$a$a;->c:I

    iget-object v1, p0, LAg/b$a$a;->f:LAg/b$a;

    invoke-static {v1}, LAg/b$a;->a(LAg/b$a;)I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v0, p0, LAg/b$a$a;->f:LAg/b$a;

    invoke-static {v0}, LAg/b$a;->b(LAg/b$a;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    iget v1, p0, LAg/b$a$a;->c:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LAg/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iput-object v0, p0, LAg/b$a$a;->d:Ljava/lang/Object;

    iget-object v0, p0, LAg/b$a$a;->f:LAg/b$a;

    invoke-static {v0}, LAg/b$a;->c(LAg/b$a;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    iget v1, p0, LAg/b$a$a;->c:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, LAg/l;

    if-eqz v1, :cond_2

    check-cast v0, LAg/l;

    iget-object v0, v0, LAg/l;->a:Ljava/lang/Object;

    :cond_2
    if-eqz v0, :cond_0

    iput-object v0, p0, LAg/b$a$a;->e:Ljava/lang/Object;

    :cond_3
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Void;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, LAg/c;->c()Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, LAg/b$a$a;->c:I

    iget-object v1, p0, LAg/b$a$a;->f:LAg/b$a;

    invoke-static {v1}, LAg/b$a;->a(LAg/b$a;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget v0, p0, LAg/b$a$a;->c:I

    iget-object v1, p0, LAg/b$a$a;->f:LAg/b$a;

    invoke-static {v1}, LAg/b$a;->a(LAg/b$a;)I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, LAg/b$a$a;->b:Leg/p;

    iget-object v1, p0, LAg/b$a$a;->d:Ljava/lang/Object;

    if-nez v1, :cond_0

    const-string v1, "key"

    invoke-static {v1}, Lkotlin/jvm/internal/M;->S(Ljava/lang/String;)V

    sget-object v1, LFf/P0;->a:LFf/P0;

    :cond_0
    iget-object v2, p0, LAg/b$a$a;->e:Ljava/lang/Object;

    if-nez v2, :cond_1

    const-string v2, "value"

    invoke-static {v2}, Lkotlin/jvm/internal/M;->S(Ljava/lang/String;)V

    sget-object v2, LFf/P0;->a:LFf/P0;

    :cond_1
    invoke-interface {v0, v1, v2}, Leg/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0}, LAg/b$a$a;->a()V

    return-object v0

    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    invoke-virtual {p0}, LAg/b$a$a;->b()Ljava/lang/Void;

    return-void
.end method
