.class public final LId/B;
.super LId/z;
.source "SourceFile"


# static fields
.field public static final f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "LId/B;",
            "[",
            "LId/z;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public volatile e:[LId/z;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, [LId/z;

    const-string v1, "e"

    const-class v2, LId/B;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, LId/B;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, LId/z;-><init>(J)V

    const/4 v0, 0x0

    new-array v0, v0, [LId/z;

    iput-object v0, p0, LId/B;->e:[LId/z;

    return-void
.end method


# virtual methods
.method public c()J
    .locals 2

    iget-object v0, p0, LId/B;->e:[LId/z;

    invoke-static {v0}, LLd/d;->c([LId/z;)J

    move-result-wide v0

    return-wide v0
.end method

.method public e(J)V
    .locals 4

    iget-object v0, p0, LId/B;->e:[LId/z;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, LId/z;->e(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g(LId/z;)V
    .locals 4

    :cond_0
    iget-object v0, p0, LId/B;->e:[LId/z;

    array-length v1, v0

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [LId/z;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p1, v2, v1

    sget-object v1, LId/B;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v1, p0, v0, v2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public h(LId/f;LId/z;)V
    .locals 1

    sget-object v0, LId/B;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    filled-new-array {p2}, [LId/z;

    move-result-object p2

    invoke-static {p0, v0, p1, p2}, LId/C;->a(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;LId/f;[LId/z;)V

    return-void
.end method

.method public i(LId/z;)Z
    .locals 1

    sget-object v0, LId/B;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p0, v0, p1}, LId/C;->c(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;LId/z;)Z

    move-result p1

    return p1
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, LId/B;->e:[LId/z;

    array-length v0, v0

    return v0
.end method
