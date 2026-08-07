.class public final Lfh/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llh/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfh/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# static fields
.field public static final f:J = 0x4000L

.field public static final synthetic g:Z


# instance fields
.field public final b:Llh/c;

.field public c:Z

.field public d:Z

.field public final synthetic e:Lfh/h;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lfh/h;)V
    .locals 0

    iput-object p1, p0, Lfh/h$a;->e:Lfh/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Llh/c;

    invoke-direct {p1}, Llh/c;-><init>()V

    iput-object p1, p0, Lfh/h$a;->b:Llh/c;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lfh/h$a;->e:Lfh/h;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfh/h$a;->e:Lfh/h;

    iget-object v1, v1, Lfh/h;->k:Lfh/h$c;

    invoke-virtual {v1}, Llh/a;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_0
    :try_start_1
    iget-object v1, p0, Lfh/h$a;->e:Lfh/h;

    iget-wide v2, v1, Lfh/h;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    iget-boolean v2, p0, Lfh/h$a;->d:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lfh/h$a;->c:Z

    if-nez v2, :cond_0

    iget-object v2, v1, Lfh/h;->l:Lfh/a;

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lfh/h;->w()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    :try_start_2
    iget-object v1, v1, Lfh/h;->k:Lfh/h$c;

    invoke-virtual {v1}, Lfh/h$c;->w()V

    iget-object v1, p0, Lfh/h$a;->e:Lfh/h;

    invoke-virtual {v1}, Lfh/h;->e()V

    iget-object v1, p0, Lfh/h$a;->e:Lfh/h;

    iget-wide v1, v1, Lfh/h;->b:J

    iget-object v3, p0, Lfh/h$a;->b:Llh/c;

    invoke-virtual {v3}, Llh/c;->U()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    iget-object v1, p0, Lfh/h$a;->e:Lfh/h;

    iget-wide v2, v1, Lfh/h;->b:J

    sub-long/2addr v2, v9

    iput-wide v2, v1, Lfh/h;->b:J

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v0, v1, Lfh/h;->k:Lfh/h$c;

    invoke-virtual {v0}, Llh/a;->m()V

    :try_start_3
    iget-object v0, p0, Lfh/h$a;->e:Lfh/h;

    iget-object v5, v0, Lfh/h;->d:Lfh/f;

    iget v6, v0, Lfh/h;->c:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lfh/h$a;->b:Llh/c;

    invoke-virtual {p1}, Llh/c;->U()J

    move-result-wide v0

    cmp-long p1, v9, v0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    :goto_1
    move v7, p1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :goto_2
    iget-object v8, p0, Lfh/h$a;->b:Llh/c;

    invoke-virtual/range {v5 .. v10}, Lfh/f;->P(IZLlh/c;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object p1, p0, Lfh/h$a;->e:Lfh/h;

    iget-object p1, p1, Lfh/h;->k:Lfh/h$c;

    invoke-virtual {p1}, Lfh/h$c;->w()V

    return-void

    :goto_3
    iget-object v0, p0, Lfh/h$a;->e:Lfh/h;

    iget-object v0, v0, Lfh/h;->k:Lfh/h$c;

    invoke-virtual {v0}, Lfh/h$c;->w()V

    throw p1

    :catchall_2
    move-exception p1

    goto :goto_5

    :goto_4
    :try_start_4
    iget-object v1, p0, Lfh/h$a;->e:Lfh/h;

    iget-object v1, v1, Lfh/h;->k:Lfh/h$c;

    invoke-virtual {v1}, Lfh/h$c;->w()V

    throw p1

    :goto_5
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public a0()Llh/z;
    .locals 1

    iget-object v0, p0, Lfh/h$a;->e:Lfh/h;

    iget-object v0, v0, Lfh/h;->k:Lfh/h$c;

    return-object v0
.end method

.method public close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lfh/h$a;->e:Lfh/h;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lfh/h$a;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lfh/h$a;->e:Lfh/h;

    iget-object v0, v0, Lfh/h;->i:Lfh/h$a;

    iget-boolean v0, v0, Lfh/h$a;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lfh/h$a;->b:Llh/c;

    invoke-virtual {v0}, Llh/c;->U()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    :goto_0
    iget-object v0, p0, Lfh/h$a;->b:Llh/c;

    invoke-virtual {v0}, Llh/c;->U()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    invoke-virtual {p0, v1}, Lfh/h$a;->a(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lfh/h$a;->e:Lfh/h;

    iget-object v2, v0, Lfh/h;->d:Lfh/f;

    iget v3, v0, Lfh/h;->c:I

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    invoke-virtual/range {v2 .. v7}, Lfh/f;->P(IZLlh/c;J)V

    :cond_2
    iget-object v2, p0, Lfh/h$a;->e:Lfh/h;

    monitor-enter v2

    :try_start_1
    iput-boolean v1, p0, Lfh/h$a;->c:Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lfh/h$a;->e:Lfh/h;

    iget-object v0, v0, Lfh/h;->d:Lfh/f;

    invoke-virtual {v0}, Lfh/f;->flush()V

    iget-object v0, p0, Lfh/h$a;->e:Lfh/h;

    invoke-virtual {v0}, Lfh/h;->d()V

    return-void

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public d0(Llh/c;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lfh/h$a;->b:Llh/c;

    invoke-virtual {v0, p1, p2, p3}, Llh/c;->d0(Llh/c;J)V

    :goto_0
    iget-object p1, p0, Lfh/h$a;->b:Llh/c;

    invoke-virtual {p1}, Llh/c;->U()J

    move-result-wide p1

    const-wide/16 v0, 0x4000

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lfh/h$a;->a(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lfh/h$a;->e:Lfh/h;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfh/h$a;->e:Lfh/h;

    invoke-virtual {v1}, Lfh/h;->e()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lfh/h$a;->b:Llh/c;

    invoke-virtual {v0}, Llh/c;->U()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lfh/h$a;->a(Z)V

    iget-object v0, p0, Lfh/h$a;->e:Lfh/h;

    iget-object v0, v0, Lfh/h;->d:Lfh/f;

    invoke-virtual {v0}, Lfh/f;->flush()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
