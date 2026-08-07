.class public Llh/j;
.super Llh/z;
.source "SourceFile"


# instance fields
.field public e:Llh/z;


# direct methods
.method public constructor <init>(Llh/z;)V
    .locals 1

    invoke-direct {p0}, Llh/z;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Llh/j;->e:Llh/z;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Llh/z;
    .locals 1

    iget-object v0, p0, Llh/j;->e:Llh/z;

    invoke-virtual {v0}, Llh/z;->a()Llh/z;

    move-result-object v0

    return-object v0
.end method

.method public b()Llh/z;
    .locals 1

    iget-object v0, p0, Llh/j;->e:Llh/z;

    invoke-virtual {v0}, Llh/z;->b()Llh/z;

    move-result-object v0

    return-object v0
.end method

.method public d()J
    .locals 2

    iget-object v0, p0, Llh/j;->e:Llh/z;

    invoke-virtual {v0}, Llh/z;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public e(J)Llh/z;
    .locals 1

    iget-object v0, p0, Llh/j;->e:Llh/z;

    invoke-virtual {v0, p1, p2}, Llh/z;->e(J)Llh/z;

    move-result-object p1

    return-object p1
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Llh/j;->e:Llh/z;

    invoke-virtual {v0}, Llh/z;->f()Z

    move-result v0

    return v0
.end method

.method public g()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llh/j;->e:Llh/z;

    invoke-virtual {v0}, Llh/z;->g()V

    return-void
.end method

.method public h(JLjava/util/concurrent/TimeUnit;)Llh/z;
    .locals 1

    iget-object v0, p0, Llh/j;->e:Llh/z;

    invoke-virtual {v0, p1, p2, p3}, Llh/z;->h(JLjava/util/concurrent/TimeUnit;)Llh/z;

    move-result-object p1

    return-object p1
.end method

.method public i()J
    .locals 2

    iget-object v0, p0, Llh/j;->e:Llh/z;

    invoke-virtual {v0}, Llh/z;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public final k()Llh/z;
    .locals 1

    iget-object v0, p0, Llh/j;->e:Llh/z;

    return-object v0
.end method

.method public final l(Llh/z;)Llh/j;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Llh/j;->e:Llh/z;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
