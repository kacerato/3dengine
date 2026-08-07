.class public LTb/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LTb/f$d;,
        LTb/f$b;,
        LTb/f$c;
    }
.end annotation


# static fields
.field public static final a:I = 0x4

.field public static final b:Ljava/lang/Object;

.field public static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LTb/f$d;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lye/O;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lye/O<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final f:[Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final g:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static j:Lu7/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LTb/f;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LTb/f;->c:Ljava/util/List;

    new-instance v0, Lye/O;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lye/O;-><init>(I)V

    sput-object v0, LTb/f;->d:Lye/O;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, LTb/f;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/util/concurrent/atomic/AtomicBoolean;

    sput-object v1, LTb/f;->f:[Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v2, LTb/f;->f:[Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, LTb/f;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, LTb/f;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, LTb/f;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Z
    .locals 1

    invoke-static {}, LTb/f;->l()Z

    move-result v0

    return v0
.end method

.method public static synthetic b()Ljava/lang/Object;
    .locals 1

    sget-object v0, LTb/f;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic c()Ljava/util/List;
    .locals 1

    sget-object v0, LTb/f;->c:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic d()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, LTb/f;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static synthetic e()Lye/O;
    .locals 1

    sget-object v0, LTb/f;->d:Lye/O;

    return-object v0
.end method

.method public static synthetic f()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, LTb/f;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static synthetic g()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, LTb/f;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static synthetic h()Lu7/c;
    .locals 1

    sget-object v0, LTb/f;->j:Lu7/c;

    return-object v0
.end method

.method public static synthetic i(Lu7/c;)Lu7/c;
    .locals 0

    sput-object p0, LTb/f;->j:Lu7/c;

    return-object p0
.end method

.method public static synthetic j()[Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, LTb/f;->f:[Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static k()I
    .locals 1

    sget-object v0, LTb/f;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public static l()Z
    .locals 5

    sget-object v0, LTb/f;->f:[Ljava/util/concurrent/atomic/AtomicBoolean;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static m()Z
    .locals 2

    sget-object v0, LTb/f;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LTb/f;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, LTb/f;->l()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, LTb/f;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static n()V
    .locals 3

    :cond_0
    sget-object v0, LTb/f;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-gtz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    :cond_1
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public static o()V
    .locals 1

    sget-object v0, LTb/f;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public static p()I
    .locals 2

    sget-object v0, LTb/f;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static q(LTb/f$d;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    sget-object v0, LTb/f;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LTb/f;->c:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, LTb/f;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    sget-object p0, LTb/f;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, LGb/b;

    new-instance v1, LTb/f$a;

    invoke-direct {v1}, LTb/f$a;-><init>()V

    invoke-direct {p0, v1}, LGb/b;-><init>(LGb/b$a;)V

    invoke-static {p0}, Lc9/a;->H(LGb/b;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static r()I
    .locals 1

    sget-object v0, LTb/f;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method
