.class public final LLd/c;
.super LLd/b;
.source "SourceFile"


# instance fields
.field public volatile b:J

.field public volatile c:J

.field public volatile d:J

.field public volatile e:J

.field public volatile f:J

.field public volatile g:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, LLd/b;-><init>()V

    const-wide/16 v0, 0x7

    .line 2
    iput-wide v0, p0, LLd/c;->g:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, LLd/b;-><init>(J)V

    const-wide/16 p1, 0x7

    .line 4
    iput-wide p1, p0, LLd/c;->g:J

    return-void
.end method


# virtual methods
.method public c()J
    .locals 4

    iget-wide v0, p0, LLd/c;->b:J

    iget-wide v2, p0, LLd/c;->c:J

    add-long/2addr v0, v2

    iget-wide v2, p0, LLd/c;->d:J

    add-long/2addr v0, v2

    iget-wide v2, p0, LLd/c;->e:J

    add-long/2addr v0, v2

    iget-wide v2, p0, LLd/c;->f:J

    add-long/2addr v0, v2

    iget-wide v2, p0, LLd/c;->g:J

    add-long/2addr v0, v2

    return-wide v0
.end method
