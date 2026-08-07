.class public final Llh/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llh/r$b;,
        Llh/r$a;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Llh/c;

.field public c:Z

.field public d:Z

.field public final e:Llh/x;

.field public final f:Llh/y;


# direct methods
.method public constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Llh/c;

    invoke-direct {v0}, Llh/c;-><init>()V

    iput-object v0, p0, Llh/r;->b:Llh/c;

    new-instance v0, Llh/r$a;

    invoke-direct {v0, p0}, Llh/r$a;-><init>(Llh/r;)V

    iput-object v0, p0, Llh/r;->e:Llh/x;

    new-instance v0, Llh/r$b;

    invoke-direct {v0, p0}, Llh/r$b;-><init>(Llh/r;)V

    iput-object v0, p0, Llh/r;->f:Llh/y;

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Llh/r;->a:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxBufferSize < 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Llh/x;
    .locals 1

    iget-object v0, p0, Llh/r;->e:Llh/x;

    return-object v0
.end method

.method public final b()Llh/y;
    .locals 1

    iget-object v0, p0, Llh/r;->f:Llh/y;

    return-object v0
.end method
