.class public final LX0/C;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LT0/a;
.end annotation


# static fields
.field public static b:LX0/C;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static final c:LX0/D;


# instance fields
.field public a:LX0/D;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, LX0/D;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LX0/D;-><init>(IZZII)V

    sput-object v6, LX0/C;->c:LX0/D;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized b()LX0/C;
    .locals 2
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-class v0, LX0/C;

    monitor-enter v0

    :try_start_0
    sget-object v1, LX0/C;->b:LX0/C;

    if-nez v1, :cond_0

    new-instance v1, LX0/C;

    invoke-direct {v1}, LX0/C;-><init>()V

    sput-object v1, LX0/C;->b:LX0/C;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, LX0/C;->b:LX0/C;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public a()LX0/D;
    .locals 1
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LX0/C;->a:LX0/D;

    return-object v0
.end method

.method public final declared-synchronized c(LX0/D;)V
    .locals 2
    .param p1    # LX0/D;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    sget-object p1, LX0/C;->c:LX0/D;

    iput-object p1, p0, LX0/C;->a:LX0/D;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v0, p0, LX0/C;->a:LX0/D;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, LX0/D;->getVersion()I

    move-result v0

    invoke-virtual {p1}, LX0/D;->getVersion()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v0, v1, :cond_1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :goto_0
    :try_start_2
    iput-object p1, p0, LX0/C;->a:LX0/D;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
