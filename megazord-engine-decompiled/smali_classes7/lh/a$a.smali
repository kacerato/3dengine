.class public Llh/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llh/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llh/a;->t(Llh/x;)Llh/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Llh/x;

.field public final synthetic c:Llh/a;


# direct methods
.method public constructor <init>(Llh/a;Llh/x;)V
    .locals 0

    iput-object p1, p0, Llh/a$a;->c:Llh/a;

    iput-object p2, p0, Llh/a$a;->b:Llh/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a0()Llh/z;
    .locals 1

    iget-object v0, p0, Llh/a$a;->c:Llh/a;

    return-object v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llh/a$a;->c:Llh/a;

    invoke-virtual {v0}, Llh/a;->m()V

    :try_start_0
    iget-object v0, p0, Llh/a$a;->b:Llh/x;

    invoke-interface {v0}, Llh/x;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iget-object v1, p0, Llh/a$a;->c:Llh/a;

    invoke-virtual {v1, v0}, Llh/a;->o(Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Llh/a$a;->c:Llh/a;

    invoke-virtual {v1, v0}, Llh/a;->n(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v1, p0, Llh/a$a;->c:Llh/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Llh/a;->o(Z)V

    throw v0
.end method

.method public d0(Llh/c;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p1, Llh/c;->c:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Llh/B;->b(JJJ)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_2

    iget-object v2, p1, Llh/c;->b:Llh/u;

    :goto_1
    const-wide/32 v3, 0x10000

    cmp-long v3, v0, v3

    if-gez v3, :cond_1

    iget v3, v2, Llh/u;->c:I

    iget v4, v2, Llh/u;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v0, v3

    cmp-long v3, v0, p2

    if-ltz v3, :cond_0

    move-wide v0, p2

    goto :goto_2

    :cond_0
    iget-object v2, v2, Llh/u;->f:Llh/u;

    goto :goto_1

    :cond_1
    :goto_2
    iget-object v2, p0, Llh/a$a;->c:Llh/a;

    invoke-virtual {v2}, Llh/a;->m()V

    :try_start_0
    iget-object v2, p0, Llh/a$a;->b:Llh/x;

    invoke-interface {v2, p1, v0, v1}, Llh/x;->d0(Llh/c;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr p2, v0

    const/4 v0, 0x1

    iget-object v1, p0, Llh/a$a;->c:Llh/a;

    invoke-virtual {v1, v0}, Llh/a;->o(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p0, Llh/a$a;->c:Llh/a;

    invoke-virtual {p2, p1}, Llh/a;->n(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    iget-object p2, p0, Llh/a$a;->c:Llh/a;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Llh/a;->o(Z)V

    throw p1

    :cond_2
    return-void
.end method

.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llh/a$a;->c:Llh/a;

    invoke-virtual {v0}, Llh/a;->m()V

    :try_start_0
    iget-object v0, p0, Llh/a$a;->b:Llh/x;

    invoke-interface {v0}, Llh/x;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iget-object v1, p0, Llh/a$a;->c:Llh/a;

    invoke-virtual {v1, v0}, Llh/a;->o(Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Llh/a$a;->c:Llh/a;

    invoke-virtual {v1, v0}, Llh/a;->n(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v1, p0, Llh/a$a;->c:Llh/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Llh/a;->o(Z)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Llh/a$a;->b:Llh/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
