.class public final Lkf/h;
.super LTe/J;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String; = "RxNewThreadScheduler"

.field public static final e:Lkf/k;

.field public static final f:Ljava/lang/String; = "rx2.newthread-priority"


# instance fields
.field public final c:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "rx2.newthread-priority"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Lkf/k;

    const-string v2, "RxNewThreadScheduler"

    invoke-direct {v1, v2, v0}, Lkf/k;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkf/h;->e:Lkf/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lkf/h;->e:Lkf/k;

    invoke-direct {p0, v0}, Lkf/h;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 0

    .line 2
    invoke-direct {p0}, LTe/J;-><init>()V

    .line 3
    iput-object p1, p0, Lkf/h;->c:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method


# virtual methods
.method public c()LTe/J$c;
    .locals 2
    .annotation build LUe/f;
    .end annotation

    new-instance v0, Lkf/i;

    iget-object v1, p0, Lkf/h;->c:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lkf/i;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method
