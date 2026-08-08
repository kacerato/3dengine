.class public final Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionIds;
.super Ljava/lang/Object;
.source "NoCodeExecutionIds.java"

# static fields
.field private static final counter:Ljava/util/concurrent/atomic/AtomicLong;

# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionIds;->counter:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static next()J
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionIds;->counter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    return-wide v0
.end method
