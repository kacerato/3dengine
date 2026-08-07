.class public abstract LCg/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "LCg/c<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractSharedFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/AbstractSharedFlow\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,132:1\n28#2,4:133\n28#2,4:138\n28#2,4:144\n20#3:137\n20#3:142\n20#3:148\n1#4:143\n13579#5,2:149\n*S KotlinDebug\n*F\n+ 1 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/AbstractSharedFlow\n*L\n30#1:133,4\n45#1:138,4\n76#1:144,4\n30#1:137\n45#1:142\n76#1:148\n95#1:149,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nAbstractSharedFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/AbstractSharedFlow\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,132:1\n28#2,4:133\n28#2,4:138\n28#2,4:144\n20#3:137\n20#3:142\n20#3:148\n1#4:143\n13579#5,2:149\n*S KotlinDebug\n*F\n+ 1 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/AbstractSharedFlow\n*L\n30#1:133,4\n45#1:138,4\n76#1:144,4\n30#1:137\n45#1:142\n76#1:148\n95#1:149,2\n*E\n"
    }
.end annotation


# instance fields
.field public b:[LCg/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TS;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:I

.field public d:I

.field public e:LCg/y;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic d(LCg/a;)I
    .locals 0

    iget p0, p0, LCg/a;->c:I

    return p0
.end method

.method public static final synthetic e(LCg/a;)[LCg/c;
    .locals 0

    iget-object p0, p0, LCg/a;->b:[LCg/c;

    return-object p0
.end method


# virtual methods
.method public final f()LCg/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LCg/a;->b:[LCg/c;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, LCg/a;->h(I)[LCg/c;

    move-result-object v0

    iput-object v0, p0, LCg/a;->b:[LCg/c;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget v2, p0, LCg/a;->c:I

    array-length v3, v0

    if-lt v2, v3, :cond_1

    array-length v2, v0

    mul-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "copyOf(this, newSize)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, [LCg/c;

    iput-object v1, p0, LCg/a;->b:[LCg/c;

    check-cast v0, [LCg/c;

    :cond_1
    :goto_0
    iget v1, p0, LCg/a;->d:I

    :cond_2
    aget-object v2, v0, v1

    if-nez v2, :cond_3

    invoke-virtual {p0}, LCg/a;->g()LCg/c;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    array-length v3, v0

    if-lt v1, v3, :cond_4

    const/4 v1, 0x0

    :cond_4
    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, LCg/c;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput v1, p0, LCg/a;->d:I

    iget v0, p0, LCg/a;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, LCg/a;->c:I

    iget-object v0, p0, LCg/a;->e:LCg/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, LCg/y;->e0(I)Z

    :cond_5
    return-object v2

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public abstract g()LCg/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract h(I)[LCg/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TS;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final i(Leg/l;)V
    .locals 4
    .param p1    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/l<",
            "-TS;",
            "LFf/P0;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, LCg/a;->d(LCg/a;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, LCg/a;->e(LCg/a;)[LCg/c;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    invoke-interface {p1, v3}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final k()LBg/U;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBg/U<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LCg/a;->e:LCg/y;

    if-nez v0, :cond_0

    new-instance v0, LCg/y;

    iget v1, p0, LCg/a;->c:I

    invoke-direct {v0, v1}, LCg/y;-><init>(I)V

    iput-object v0, p0, LCg/a;->e:LCg/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final l(LCg/c;)V
    .locals 6
    .param p1    # LCg/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, LCg/a;->c:I

    const/4 v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, LCg/a;->c:I

    iget-object v2, p0, LCg/a;->e:LCg/y;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    iput v3, p0, LCg/a;->d:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, LCg/c;->b(Ljava/lang/Object;)[LQf/f;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    array-length v0, p1

    :goto_1
    if-ge v3, v0, :cond_2

    aget-object v4, p1, v3

    if-eqz v4, :cond_1

    sget-object v5, LFf/i0;->c:LFf/i0$a;

    sget-object v5, LFf/P0;->a:LFf/P0;

    invoke-static {v5}, LFf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, LQf/f;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, LCg/y;->e0(I)Z

    :cond_3
    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final m()I
    .locals 1

    iget v0, p0, LCg/a;->c:I

    return v0
.end method

.method public final n()[LCg/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TS;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, LCg/a;->b:[LCg/c;

    return-object v0
.end method
