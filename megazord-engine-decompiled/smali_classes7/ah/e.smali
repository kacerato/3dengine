.class public Lah/e;
.super Llh/h;
.source "SourceFile"


# instance fields
.field public c:Z


# direct methods
.method public constructor <init>(Llh/x;)V
    .locals 0

    invoke-direct {p0, p1}, Llh/h;-><init>(Llh/x;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lah/e;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Llh/h;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lah/e;->c:Z

    invoke-virtual {p0, v0}, Lah/e;->d(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method

.method public d(Ljava/io/IOException;)V
    .locals 0

    return-void
.end method

.method public d0(Llh/c;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lah/e;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, p3}, Llh/c;->skip(J)V

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Llh/h;->d0(Llh/c;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lah/e;->c:Z

    invoke-virtual {p0, p1}, Lah/e;->d(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lah/e;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Llh/h;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lah/e;->c:Z

    invoke-virtual {p0, v0}, Lah/e;->d(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method
