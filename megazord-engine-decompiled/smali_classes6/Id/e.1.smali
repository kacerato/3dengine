.class public final LId/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LId/J;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(JLId/z;LId/z;LId/A;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lmax/disruptor/AlertException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p4}, LId/z;->c()J

    move-result-wide v0

    cmp-long p3, v0, p1

    if-gez p3, :cond_0

    invoke-interface {p5}, LId/A;->b()V

    goto :goto_0

    :cond_0
    return-wide v0
.end method
