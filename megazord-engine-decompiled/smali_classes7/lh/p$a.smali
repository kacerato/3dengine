.class public final Llh/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llh/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llh/p;->h(Ljava/io/OutputStream;Llh/z;)Llh/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Llh/z;

.field public final synthetic c:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Llh/z;Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Llh/p$a;->b:Llh/z;

    iput-object p2, p0, Llh/p$a;->c:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a0()Llh/z;
    .locals 1

    iget-object v0, p0, Llh/p$a;->b:Llh/z;

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llh/p$a;->c:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public d0(Llh/c;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p1, Llh/c;->c:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Llh/B;->b(JJJ)V

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Llh/p$a;->b:Llh/z;

    invoke-virtual {v0}, Llh/z;->g()V

    iget-object v0, p1, Llh/c;->b:Llh/u;

    iget v1, v0, Llh/u;->c:I

    iget v2, v0, Llh/u;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, p0, Llh/p$a;->c:Ljava/io/OutputStream;

    iget-object v3, v0, Llh/u;->a:[B

    iget v4, v0, Llh/u;->b:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    iget v2, v0, Llh/u;->b:I

    add-int/2addr v2, v1

    iput v2, v0, Llh/u;->b:I

    int-to-long v3, v1

    sub-long/2addr p2, v3

    iget-wide v5, p1, Llh/c;->c:J

    sub-long/2addr v5, v3

    iput-wide v5, p1, Llh/c;->c:J

    iget v1, v0, Llh/u;->c:I

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Llh/u;->b()Llh/u;

    move-result-object v1

    iput-object v1, p1, Llh/c;->b:Llh/u;

    invoke-static {v0}, Llh/v;->a(Llh/u;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llh/p$a;->c:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Llh/p$a;->c:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
