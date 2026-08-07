.class public Lpe/C0;
.super Lpe/b0;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# static fields
.field public static final g:J = 0x153e0c6c865668d2L


# direct methods
.method public constructor <init>(Lte/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lpe/b0;-><init>(Lte/e;)V

    return-void
.end method

.method public constructor <init>(Lte/e;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lpe/b0;-><init>(Lte/e;Ljava/lang/Object;)V

    return-void
.end method

.method private c()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lpe/b0;

    iget-object v1, p0, Lpe/b0;->e:Lte/e;

    invoke-direct {v0, v1}, Lpe/b0;-><init>(Lte/e;)V

    return-object v0
.end method


# virtual methods
.method public subList(II)Lte/e;
    .locals 3

    iget-object v0, p0, Lpe/X;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lpe/C0;

    iget-object v2, p0, Lpe/b0;->e:Lte/e;

    invoke-interface {v2, p1, p2}, Lte/e;->subList(II)Lte/e;

    move-result-object p1

    iget-object p2, p0, Lpe/X;->c:Ljava/lang/Object;

    invoke-direct {v1, p1, p2}, Lpe/C0;-><init>(Lte/e;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
