.class public final enum Lmf/j;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements LCi/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmf/j;",
        ">;",
        "LCi/d;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmf/j;

.field public static final enum CANCELLED:Lmf/j;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lmf/j;

    const-string v1, "CANCELLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmf/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmf/j;->CANCELLED:Lmf/j;

    filled-new-array {v0}, [Lmf/j;

    move-result-object v0

    sput-object v0, Lmf/j;->$VALUES:[Lmf/j;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/util/concurrent/atomic/AtomicReference;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LCi/d;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCi/d;

    sget-object v1, Lmf/j;->CANCELLED:Lmf/j;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LCi/d;

    if-eq p0, v1, :cond_1

    if-eqz p0, :cond_0

    invoke-interface {p0}, LCi/d;->cancel()V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LCi/d;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "J)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCi/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2, p3}, LCi/d;->i(J)V

    goto :goto_0

    :cond_0
    invoke-static {p2, p3}, Lmf/j;->m(J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2, p3}, Lio/reactivex/internal/util/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LCi/d;

    if-eqz p0, :cond_1

    const-wide/16 p2, 0x0

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-eqz p1, :cond_1

    invoke-interface {p0, v0, v1}, LCi/d;->i(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static c(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;LCi/d;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LCi/d;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "LCi/d;",
            ")Z"
        }
    .end annotation

    invoke-static {p0, p2}, Lmf/j;->j(Ljava/util/concurrent/atomic/AtomicReference;LCi/d;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide p0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p0, p1}, LCi/d;->i(J)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Ljava/util/concurrent/atomic/AtomicReference;LCi/d;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LCi/d;",
            ">;",
            "LCi/d;",
            ")Z"
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCi/d;

    sget-object v1, Lmf/j;->CANCELLED:Lmf/j;

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_1

    invoke-interface {p1}, LCi/d;->cancel()V

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-static {p0, v0, p1}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0
.end method

.method public static e(J)V
    .locals 3

    new-instance v0, Lio/reactivex/exceptions/ProtocolViolationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "More produced than requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/reactivex/exceptions/ProtocolViolationException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static g()V
    .locals 2

    new-instance v0, Lio/reactivex/exceptions/ProtocolViolationException;

    const-string v1, "Subscription already set!"

    invoke-direct {v0, v1}, Lio/reactivex/exceptions/ProtocolViolationException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static h(Ljava/util/concurrent/atomic/AtomicReference;LCi/d;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LCi/d;",
            ">;",
            "LCi/d;",
            ")Z"
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCi/d;

    sget-object v1, Lmf/j;->CANCELLED:Lmf/j;

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_1

    invoke-interface {p1}, LCi/d;->cancel()V

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-static {p0, v0, p1}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_3

    invoke-interface {v0}, LCi/d;->cancel()V

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static j(Ljava/util/concurrent/atomic/AtomicReference;LCi/d;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LCi/d;",
            ">;",
            "LCi/d;",
            ")Z"
        }
    .end annotation

    const-string v0, "s is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, LCi/d;->cancel()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lmf/j;->CANCELLED:Lmf/j;

    if-eq p0, p1, :cond_0

    invoke-static {}, Lmf/j;->g()V

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static k(Ljava/util/concurrent/atomic/AtomicReference;LCi/d;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LCi/d;",
            ">;",
            "LCi/d;",
            "J)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Lmf/j;->j(Ljava/util/concurrent/atomic/AtomicReference;LCi/d;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p2, p3}, LCi/d;->i(J)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static m(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n > 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static n(LCi/d;LCi/d;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "next is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return v0

    :cond_0
    if-eqz p0, :cond_1

    invoke-interface {p1}, LCi/d;->cancel()V

    invoke-static {}, Lmf/j;->g()V

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lmf/j;
    .locals 1

    const-class v0, Lmf/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmf/j;

    return-object p0
.end method

.method public static values()[Lmf/j;
    .locals 1

    sget-object v0, Lmf/j;->$VALUES:[Lmf/j;

    invoke-virtual {v0}, [Lmf/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmf/j;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public i(J)V
    .locals 0

    return-void
.end method
