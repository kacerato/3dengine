.class public final Ltf/c;
.super LTe/c;
.source "SourceFile"

# interfaces
.implements LTe/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltf/c$a;
    }
.end annotation


# static fields
.field public static final e:[Ltf/c$a;

.field public static final f:[Ltf/c$a;


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Ltf/c$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public d:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ltf/c$a;

    sput-object v1, Ltf/c;->e:[Ltf/c$a;

    new-array v0, v0, [Ltf/c$a;

    sput-object v0, Ltf/c;->f:[Ltf/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, LTe/c;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Ltf/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Ltf/c;->e:[Ltf/c$a;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ltf/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static k1()Ltf/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    new-instance v0, Ltf/c;

    invoke-direct {v0}, Ltf/c;-><init>()V

    return-object v0
.end method


# virtual methods
.method public K0(LTe/f;)V
    .locals 2

    new-instance v0, Ltf/c$a;

    invoke-direct {v0, p1, p0}, Ltf/c$a;-><init>(LTe/f;Ltf/c;)V

    invoke-interface {p1, v0}, LTe/f;->e(LVe/c;)V

    invoke-virtual {p0, v0}, Ltf/c;->j1(Ltf/c$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ltf/c$a;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Ltf/c;->q1(Ltf/c$a;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltf/c;->d:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    invoke-interface {p1, v0}, LTe/f;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, LTe/f;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method public a()V
    .locals 4

    iget-object v0, p0, Ltf/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltf/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Ltf/c;->f:[Ltf/c$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltf/c$a;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v3, v3, Ltf/c$a;->b:LTe/f;

    invoke-interface {v3}, LTe/f;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(LVe/c;)V
    .locals 2

    iget-object v0, p0, Ltf/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ltf/c;->f:[Ltf/c$a;

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, LVe/c;->dispose()V

    :cond_0
    return-void
.end method

.method public j1(Ltf/c$a;)Z
    .locals 4

    :cond_0
    iget-object v0, p0, Ltf/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltf/c$a;

    sget-object v1, Ltf/c;->f:[Ltf/c$a;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Ltf/c$a;

    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p1, v3, v1

    iget-object v1, p0, Ltf/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0, v3}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public l1()Ljava/lang/Throwable;
    .locals 2
    .annotation build LUe/g;
    .end annotation

    iget-object v0, p0, Ltf/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ltf/c;->f:[Ltf/c$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ltf/c;->d:Ljava/lang/Throwable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public m1()Z
    .locals 2

    iget-object v0, p0, Ltf/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ltf/c;->f:[Ltf/c$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ltf/c;->d:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n1()Z
    .locals 1

    iget-object v0, p0, Ltf/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltf/c$a;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o1()Z
    .locals 2

    iget-object v0, p0, Ltf/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ltf/c;->f:[Ltf/c$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ltf/c;->d:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Ltf/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Ltf/c;->d:Ljava/lang/Throwable;

    iget-object v0, p0, Ltf/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Ltf/c;->f:[Ltf/c$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltf/c$a;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v3, v3, Ltf/c$a;->b:LTe/f;

    invoke-interface {v3, p1}, LTe/f;->onError(Ljava/lang/Throwable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public p1()I
    .locals 1

    iget-object v0, p0, Ltf/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltf/c$a;

    array-length v0, v0

    return v0
.end method

.method public q1(Ltf/c$a;)V
    .locals 6

    :cond_0
    iget-object v0, p0, Ltf/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltf/c$a;

    array-length v1, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    if-ne v4, p1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, -0x1

    :goto_1
    if-gez v3, :cond_4

    return-void

    :cond_4
    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    sget-object v1, Ltf/c;->e:[Ltf/c$a;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    new-array v5, v5, [Ltf/c$a;

    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v3, 0x1

    sub-int/2addr v1, v3

    sub-int/2addr v1, v4

    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    :goto_2
    iget-object v2, p0, Ltf/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v0, v1}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method
