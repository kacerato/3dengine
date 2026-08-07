.class public final Llh/r$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llh/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llh/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final b:Llh/z;

.field public final synthetic c:Llh/r;


# direct methods
.method public constructor <init>(Llh/r;)V
    .locals 0

    iput-object p1, p0, Llh/r$b;->c:Llh/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Llh/z;

    invoke-direct {p1}, Llh/z;-><init>()V

    iput-object p1, p0, Llh/r$b;->b:Llh/z;

    return-void
.end method


# virtual methods
.method public a0()Llh/z;
    .locals 1

    iget-object v0, p0, Llh/r$b;->b:Llh/z;

    return-object v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llh/r$b;->c:Llh/r;

    iget-object v0, v0, Llh/r;->b:Llh/c;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Llh/r$b;->c:Llh/r;

    const/4 v2, 0x1

    iput-boolean v2, v1, Llh/r;->d:Z

    iget-object v1, v1, Llh/r;->b:Llh/c;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public x0(Llh/c;J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llh/r$b;->c:Llh/r;

    iget-object v0, v0, Llh/r;->b:Llh/c;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Llh/r$b;->c:Llh/r;

    iget-boolean v1, v1, Llh/r;->d:Z

    if-nez v1, :cond_2

    :goto_0
    iget-object v1, p0, Llh/r$b;->c:Llh/r;

    iget-object v1, v1, Llh/r;->b:Llh/c;

    invoke-virtual {v1}, Llh/c;->U()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-object v1, p0, Llh/r$b;->c:Llh/r;

    iget-boolean v2, v1, Llh/r;->c:Z

    if-eqz v2, :cond_0

    monitor-exit v0

    const-wide/16 p1, -0x1

    return-wide p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Llh/r$b;->b:Llh/z;

    iget-object v1, v1, Llh/r;->b:Llh/c;

    invoke-virtual {v2, v1}, Llh/z;->j(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Llh/r$b;->c:Llh/r;

    iget-object v1, v1, Llh/r;->b:Llh/c;

    invoke-virtual {v1, p1, p2, p3}, Llh/c;->x0(Llh/c;J)J

    move-result-wide p1

    iget-object p3, p0, Llh/r$b;->c:Llh/r;

    iget-object p3, p3, Llh/r;->b:Llh/c;

    invoke-virtual {p3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-wide p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
