.class public abstract LId/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LId/E;


# static fields
.field public static final f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "LId/a;",
            "[",
            "LId/z;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I

.field public final c:LId/J;

.field public final d:LId/z;

.field public volatile e:[LId/z;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, [LId/z;

    const-string v1, "e"

    const-class v2, LId/a;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, LId/a;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(ILId/J;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LId/z;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, LId/z;-><init>(J)V

    iput-object v0, p0, LId/a;->d:LId/z;

    const/4 v0, 0x0

    new-array v0, v0, [LId/z;

    iput-object v0, p0, LId/a;->e:[LId/z;

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    iput p1, p0, LId/a;->b:I

    iput-object p2, p0, LId/a;->c:LId/J;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bufferSize must be a power of 2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bufferSize must not be less than 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public varargs b([LId/z;)LId/A;
    .locals 3

    new-instance v0, LId/x;

    iget-object v1, p0, LId/a;->c:LId/J;

    iget-object v2, p0, LId/a;->d:LId/z;

    invoke-direct {v0, p0, v1, v2, p1}, LId/x;-><init>(LId/E;LId/J;LId/z;[LId/z;)V

    return-object v0
.end method

.method public final varargs d([LId/z;)V
    .locals 1

    sget-object v0, LId/a;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p0, v0, p0, p1}, LId/C;->a(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;LId/f;[LId/z;)V

    return-void
.end method

.method public final getCursor()J
    .locals 2

    iget-object v0, p0, LId/a;->d:LId/z;

    invoke-virtual {v0}, LId/z;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, LId/a;->b:I

    return v0
.end method

.method public j()J
    .locals 3

    iget-object v0, p0, LId/a;->e:[LId/z;

    iget-object v1, p0, LId/a;->d:LId/z;

    invoke-virtual {v1}, LId/z;->c()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, LLd/d;->d([LId/z;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public m(LId/z;)Z
    .locals 1

    sget-object v0, LId/a;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p0, v0, p1}, LId/C;->c(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;LId/z;)Z

    move-result p1

    return p1
.end method
