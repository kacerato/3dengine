.class public final Leh/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llh/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final b:Llh/j;

.field public c:Z

.field public final synthetic d:Leh/a;


# direct methods
.method public constructor <init>(Leh/a;)V
    .locals 1

    iput-object p1, p0, Leh/a$c;->d:Leh/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Llh/j;

    iget-object p1, p1, Leh/a;->e:Llh/d;

    invoke-interface {p1}, Llh/x;->a0()Llh/z;

    move-result-object p1

    invoke-direct {v0, p1}, Llh/j;-><init>(Llh/z;)V

    iput-object v0, p0, Leh/a$c;->b:Llh/j;

    return-void
.end method


# virtual methods
.method public a0()Llh/z;
    .locals 1

    iget-object v0, p0, Leh/a$c;->b:Llh/j;

    return-object v0
.end method

.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Leh/a$c;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Leh/a$c;->c:Z

    iget-object v0, p0, Leh/a$c;->d:Leh/a;

    iget-object v0, v0, Leh/a;->e:Llh/d;

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Llh/d;->J(Ljava/lang/String;)Llh/d;

    iget-object v0, p0, Leh/a$c;->d:Leh/a;

    iget-object v1, p0, Leh/a$c;->b:Llh/j;

    invoke-virtual {v0, v1}, Leh/a;->g(Llh/j;)V

    iget-object v0, p0, Leh/a$c;->d:Leh/a;

    const/4 v1, 0x3

    iput v1, v0, Leh/a;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public d0(Llh/c;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Leh/a$c;->c:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Leh/a$c;->d:Leh/a;

    iget-object v0, v0, Leh/a;->e:Llh/d;

    invoke-interface {v0, p2, p3}, Llh/d;->l0(J)Llh/d;

    iget-object v0, p0, Leh/a$c;->d:Leh/a;

    iget-object v0, v0, Leh/a;->e:Llh/d;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Llh/d;->J(Ljava/lang/String;)Llh/d;

    iget-object v0, p0, Leh/a$c;->d:Leh/a;

    iget-object v0, v0, Leh/a;->e:Llh/d;

    invoke-interface {v0, p1, p2, p3}, Llh/x;->d0(Llh/c;J)V

    iget-object p1, p0, Leh/a$c;->d:Leh/a;

    iget-object p1, p1, Leh/a;->e:Llh/d;

    invoke-interface {p1, v1}, Llh/d;->J(Ljava/lang/String;)Llh/d;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Leh/a$c;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Leh/a$c;->d:Leh/a;

    iget-object v0, v0, Leh/a;->e:Llh/d;

    invoke-interface {v0}, Llh/d;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
