.class public final Ltf/f;
.super Ltf/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltf/f$d;,
        Ltf/f$e;,
        Ltf/f$f;,
        Ltf/f$a;,
        Ltf/f$g;,
        Ltf/f$c;,
        Ltf/f$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ltf/i<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final e:[Ltf/f$c;

.field public static final f:[Ltf/f$c;

.field public static final g:[Ljava/lang/Object;


# instance fields
.field public final b:Ltf/f$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltf/f$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Ltf/f$c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ltf/f$c;

    sput-object v1, Ltf/f;->e:[Ltf/f$c;

    new-array v1, v0, [Ltf/f$c;

    sput-object v1, Ltf/f;->f:[Ltf/f$c;

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Ltf/f;->g:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ltf/f$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltf/f$b<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ltf/i;-><init>()V

    iput-object p1, p0, Ltf/f;->b:Ltf/f$b;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Ltf/f;->e:[Ltf/f$c;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Ltf/f;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static q8()Ltf/f;
    .locals 3
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ltf/f<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ltf/f;

    new-instance v1, Ltf/f$g;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ltf/f$g;-><init>(I)V

    invoke-direct {v0, v1}, Ltf/f;-><init>(Ltf/f$b;)V

    return-object v0
.end method

.method public static r8(I)Ltf/f;
    .locals 2
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ltf/f<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ltf/f;

    new-instance v1, Ltf/f$g;

    invoke-direct {v1, p0}, Ltf/f$g;-><init>(I)V

    invoke-direct {v0, v1}, Ltf/f;-><init>(Ltf/f$b;)V

    return-object v0
.end method

.method public static s8()Ltf/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ltf/f<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ltf/f;

    new-instance v1, Ltf/f$e;

    const v2, 0x7fffffff

    invoke-direct {v1, v2}, Ltf/f$e;-><init>(I)V

    invoke-direct {v0, v1}, Ltf/f;-><init>(Ltf/f$b;)V

    return-object v0
.end method

.method public static t8(I)Ltf/f;
    .locals 2
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ltf/f<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ltf/f;

    new-instance v1, Ltf/f$e;

    invoke-direct {v1, p0}, Ltf/f$e;-><init>(I)V

    invoke-direct {v0, v1}, Ltf/f;-><init>(Ltf/f$b;)V

    return-object v0
.end method

.method public static u8(JLjava/util/concurrent/TimeUnit;LTe/J;)Ltf/f;
    .locals 8
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            ")",
            "Ltf/f<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ltf/f;

    new-instance v7, Ltf/f$d;

    const v2, 0x7fffffff

    move-object v1, v7

    move-wide v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Ltf/f$d;-><init>(IJLjava/util/concurrent/TimeUnit;LTe/J;)V

    invoke-direct {v0, v7}, Ltf/f;-><init>(Ltf/f$b;)V

    return-object v0
.end method

.method public static v8(JLjava/util/concurrent/TimeUnit;LTe/J;I)Ltf/f;
    .locals 8
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            "I)",
            "Ltf/f<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ltf/f;

    new-instance v7, Ltf/f$d;

    move-object v1, v7

    move v2, p4

    move-wide v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Ltf/f$d;-><init>(IJLjava/util/concurrent/TimeUnit;LTe/J;)V

    invoke-direct {v0, v7}, Ltf/f;-><init>(Ltf/f$b;)V

    return-object v0
.end method


# virtual methods
.method public A8()I
    .locals 1

    iget-object v0, p0, Ltf/f;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltf/f$c;

    array-length v0, v0

    return v0
.end method

.method public B8(Ltf/f$c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltf/f$c<",
            "TT;>;)V"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Ltf/f;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltf/f$c;

    sget-object v1, Ltf/f;->f:[Ltf/f$c;

    if-eq v0, v1, :cond_6

    sget-object v1, Ltf/f;->e:[Ltf/f$c;

    if-ne v0, v1, :cond_1

    goto :goto_3

    :cond_1
    array-length v1, v0

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

    sget-object v1, Ltf/f;->e:[Ltf/f$c;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    new-array v5, v5, [Ltf/f$c;

    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v3, 0x1

    sub-int/2addr v1, v3

    sub-int/2addr v1, v4

    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    :goto_2
    iget-object v2, p0, Ltf/f;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v0, v1}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    :goto_3
    return-void
.end method

.method public C8()I
    .locals 1

    iget-object v0, p0, Ltf/f;->b:Ltf/f$b;

    invoke-interface {v0}, Ltf/f$b;->size()I

    move-result v0

    return v0
.end method

.method public D8(Ljava/lang/Object;)[Ltf/f$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")[",
            "Ltf/f$c<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Ltf/f;->b:Ltf/f$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ltf/f$b;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltf/f;->c:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Ltf/f;->f:[Ltf/f$c;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ltf/f$c;

    return-object p1

    :cond_0
    sget-object p1, Ltf/f;->f:[Ltf/f$c;

    return-object p1
.end method

.method public J5(LTe/I;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Ltf/f$c;

    invoke-direct {v0, p1, p0}, Ltf/f$c;-><init>(LTe/I;Ltf/f;)V

    invoke-interface {p1, v0}, LTe/I;->e(LVe/c;)V

    iget-boolean p1, v0, Ltf/f$c;->e:Z

    if-nez p1, :cond_1

    invoke-virtual {p0, v0}, Ltf/f;->o8(Ltf/f$c;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, v0, Ltf/f$c;->e:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Ltf/f;->B8(Ltf/f$c;)V

    return-void

    :cond_0
    iget-object p1, p0, Ltf/f;->b:Ltf/f$b;

    invoke-interface {p1, v0}, Ltf/f$b;->c(Ltf/f$c;)V

    :cond_1
    return-void
.end method

.method public a()V
    .locals 5

    iget-boolean v0, p0, Ltf/f;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltf/f;->d:Z

    invoke-static {}, Lio/reactivex/internal/util/p;->e()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Ltf/f;->b:Ltf/f$b;

    invoke-interface {v1, v0}, Ltf/f$b;->a(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltf/f;->D8(Ljava/lang/Object;)[Ltf/f$c;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-interface {v1, v4}, Ltf/f$b;->c(Ltf/f$c;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-boolean v0, p0, Ltf/f;->d:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, LVe/c;->dispose()V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, p0, Ltf/f;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ltf/f;->b:Ltf/f$b;

    invoke-interface {v0, p1}, Ltf/f$b;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Ltf/f;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ltf/f$c;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-interface {v0, v3}, Ltf/f$b;->c(Ltf/f$c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public j8()Ljava/lang/Throwable;
    .locals 2
    .annotation build LUe/g;
    .end annotation

    iget-object v0, p0, Ltf/f;->b:Ltf/f$b;

    invoke-interface {v0}, Ltf/f$b;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/internal/util/p;->p(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lio/reactivex/internal/util/p;->j(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public k8()Z
    .locals 1

    iget-object v0, p0, Ltf/f;->b:Ltf/f$b;

    invoke-interface {v0}, Ltf/f$b;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/internal/util/p;->n(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public l8()Z
    .locals 1

    iget-object v0, p0, Ltf/f;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltf/f$c;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m8()Z
    .locals 1

    iget-object v0, p0, Ltf/f;->b:Ltf/f$b;

    invoke-interface {v0}, Ltf/f$b;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/internal/util/p;->p(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public o8(Ltf/f$c;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltf/f$c<",
            "TT;>;)Z"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Ltf/f;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltf/f$c;

    sget-object v1, Ltf/f;->f:[Ltf/f$c;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Ltf/f$c;

    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p1, v3, v1

    iget-object v1, p0, Ltf/f;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0, v3}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, p0, Ltf/f;->d:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltf/f;->d:Z

    invoke-static {p1}, Lio/reactivex/internal/util/p;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Ltf/f;->b:Ltf/f$b;

    invoke-interface {v0, p1}, Ltf/f$b;->a(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ltf/f;->D8(Ljava/lang/Object;)[Ltf/f$c;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-interface {v0, v3}, Ltf/f$b;->c(Ltf/f$c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public p8()V
    .locals 1

    iget-object v0, p0, Ltf/f;->b:Ltf/f$b;

    invoke-interface {v0}, Ltf/f$b;->b()V

    return-void
.end method

.method public w8()Ljava/lang/Object;
    .locals 1
    .annotation build LUe/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Ltf/f;->b:Ltf/f$b;

    invoke-interface {v0}, Ltf/f$b;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public x8()[Ljava/lang/Object;
    .locals 2

    sget-object v0, Ltf/f;->g:[Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ltf/f;->y8([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public y8([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    iget-object v0, p0, Ltf/f;->b:Ltf/f$b;

    invoke-interface {v0, p1}, Ltf/f$b;->d([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public z8()Z
    .locals 1

    iget-object v0, p0, Ltf/f;->b:Ltf/f$b;

    invoke-interface {v0}, Ltf/f$b;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
