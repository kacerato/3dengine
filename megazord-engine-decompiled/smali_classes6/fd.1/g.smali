.class public Lfd/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfd/g$b;,
        Lfd/g$c;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;

.field public b:I

.field public c:Lfd/g$c;

.field public d:I

.field public e:Lfd/g$b;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/util/List;Lfd/g$c;ILfd/g$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userData",
            "list",
            "threadsSequence",
            "threadsCount",
            "listStreamListener"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 47
    iput v0, p0, Lfd/g;->b:I

    .line 48
    sget-object v0, Lfd/g$c;->MAX_THREADS:Lfd/g$c;

    iput-object v0, p0, Lfd/g;->c:Lfd/g$c;

    const/4 v0, 0x5

    .line 49
    iput v0, p0, Lfd/g;->d:I

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lfd/g;->f:Ljava/lang/Object;

    if-eqz p2, :cond_2

    .line 51
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    iput-object p1, p0, Lfd/g;->f:Ljava/lang/Object;

    .line 53
    iput-object p2, p0, Lfd/g;->a:Ljava/util/List;

    .line 54
    iput-object p3, p0, Lfd/g;->c:Lfd/g$c;

    .line 55
    iput p4, p0, Lfd/g;->b:I

    .line 56
    iput-object p5, p0, Lfd/g;->e:Lfd/g$b;

    if-lez p4, :cond_0

    return-void

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "threadsCount can\'t be <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "List can\'t be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "List can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/util/List;Lfd/g$c;Lfd/g$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userData",
            "list",
            "threadsSequence",
            "listStreamListener"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 22
    iput v0, p0, Lfd/g;->b:I

    .line 23
    sget-object v0, Lfd/g$c;->MAX_THREADS:Lfd/g$c;

    iput-object v0, p0, Lfd/g;->c:Lfd/g$c;

    const/4 v0, 0x5

    .line 24
    iput v0, p0, Lfd/g;->d:I

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lfd/g;->f:Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 26
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    iput-object p1, p0, Lfd/g;->f:Ljava/lang/Object;

    .line 28
    iput-object p2, p0, Lfd/g;->a:Ljava/util/List;

    .line 29
    iput-object p3, p0, Lfd/g;->c:Lfd/g$c;

    .line 30
    iput-object p4, p0, Lfd/g;->e:Lfd/g$b;

    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "List can\'t be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "List can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lfd/g;->b:I

    .line 3
    sget-object v0, Lfd/g$c;->MAX_THREADS:Lfd/g$c;

    iput-object v0, p0, Lfd/g;->c:Lfd/g$c;

    const/4 v0, 0x5

    .line 4
    iput v0, p0, Lfd/g;->d:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lfd/g;->f:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iput-object p1, p0, Lfd/g;->a:Ljava/util/List;

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "List can\'t be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "List can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/util/List;Lfd/g$c;ILfd/g$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "list",
            "threadsSequence",
            "threadsCount",
            "listStreamListener"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 34
    iput v0, p0, Lfd/g;->b:I

    .line 35
    sget-object v0, Lfd/g$c;->MAX_THREADS:Lfd/g$c;

    iput-object v0, p0, Lfd/g;->c:Lfd/g$c;

    const/4 v0, 0x5

    .line 36
    iput v0, p0, Lfd/g;->d:I

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lfd/g;->f:Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 38
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    iput-object p1, p0, Lfd/g;->a:Ljava/util/List;

    .line 40
    iput-object p2, p0, Lfd/g;->c:Lfd/g$c;

    .line 41
    iput p3, p0, Lfd/g;->b:I

    .line 42
    iput-object p4, p0, Lfd/g;->e:Lfd/g$b;

    if-lez p3, :cond_0

    return-void

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "threadsCount can\'t be <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "List can\'t be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "List can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/util/List;Lfd/g$c;Lfd/g$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "list",
            "threadsSequence",
            "listStreamListener"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 11
    iput v0, p0, Lfd/g;->b:I

    .line 12
    sget-object v0, Lfd/g$c;->MAX_THREADS:Lfd/g$c;

    iput-object v0, p0, Lfd/g;->c:Lfd/g$c;

    const/4 v0, 0x5

    .line 13
    iput v0, p0, Lfd/g;->d:I

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lfd/g;->f:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 15
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    iput-object p1, p0, Lfd/g;->a:Ljava/util/List;

    .line 17
    iput-object p2, p0, Lfd/g;->c:Lfd/g$c;

    .line 18
    iput-object p3, p0, Lfd/g;->e:Lfd/g$b;

    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "List can\'t be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "List can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic a(Lfd/g;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lfd/g;->a:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Lfd/g;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lfd/g;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic c(Lfd/g;)Lfd/g$b;
    .locals 0

    iget-object p0, p0, Lfd/g;->e:Lfd/g$b;

    return-object p0
.end method


# virtual methods
.method public d(Ljava/util/List;Lfd/g$c;Lfd/g$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "list",
            "threadsSequence",
            "listStreamListener"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lfd/g;->a:Ljava/util/List;

    iput-object p2, p0, Lfd/g;->c:Lfd/g$c;

    iput-object p3, p0, Lfd/g;->e:Lfd/g$b;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "List can\'t be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "List can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Lfd/g$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listStreamListener"
        }
    .end annotation

    iput-object p1, p0, Lfd/g;->e:Lfd/g$b;

    return-void
.end method

.method public f(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "threadsCount"
        }
    .end annotation

    iput p1, p0, Lfd/g;->b:I

    return-void
.end method

.method public g(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "threadsPriority"
        }
    .end annotation

    iput p1, p0, Lfd/g;->d:I

    return-void
.end method

.method public h(Lfd/g$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "threadsSequence"
        }
    .end annotation

    iput-object p1, p0, Lfd/g;->c:Lfd/g$c;

    return-void
.end method

.method public i()V
    .locals 7

    iget-object v0, p0, Lfd/g;->c:Lfd/g$c;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Lgd/b;->N(II)I

    move-result v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid threadsSequence, use ListStream.HALF_THREADS, ListStream.MAX_THREADS or ListStream.FIXED_THREADS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {v2, v0}, Lgd/b;->N(II)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    div-int/2addr v0, v1

    invoke-static {v2, v0}, Lgd/b;->N(II)I

    move-result v0

    goto :goto_0

    :cond_4
    iget v0, p0, Lfd/g;->b:I

    :goto_0
    iget-object v1, p0, Lfd/g;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    new-instance v2, Lbd/d;

    invoke-direct {v2}, Lbd/d;-><init>()V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_5

    mul-int v4, v1, v3

    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lfd/g$a;

    invoke-direct {v6, p0, v1, v4, v2}, Lfd/g$a;-><init>(Lfd/g;IILbd/d;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iget v4, p0, Lfd/g;->d:I

    invoke-virtual {v5, v4}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    :cond_5
    :goto_2
    invoke-virtual {v2}, Lbd/d;->d()I

    move-result v1

    if-lt v1, v0, :cond_6

    return-void

    :cond_6
    const-wide/16 v3, 0x0

    const/16 v1, 0x64

    :try_start_0
    invoke-static {v3, v4, v1}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method
