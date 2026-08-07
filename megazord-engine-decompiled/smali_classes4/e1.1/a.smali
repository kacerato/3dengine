.class public Le1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LT0/a;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le1/a$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static a:Le1/a$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Le1/a$a;
    .locals 2
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Le1/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Le1/a;->a:Le1/a$a;

    if-nez v1, :cond_0

    new-instance v1, Le1/b;

    invoke-direct {v1}, Le1/b;-><init>()V

    sput-object v1, Le1/a;->a:Le1/a$a;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Le1/a;->a:Le1/a$a;
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
