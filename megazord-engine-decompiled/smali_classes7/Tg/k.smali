.class public LTg/k;
.super LTg/b;
.source "SourceFile"


# instance fields
.field public t:[B

.field public u:J

.field public v:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LTg/b;-><init>()V

    sget-object v0, LQg/c;->LOCAL_FILE_HEADER:LQg/c;

    invoke-virtual {p0, v0}, LTg/q;->b(LQg/c;)V

    return-void
.end method


# virtual methods
.method public N()[B
    .locals 1

    iget-object v0, p0, LTg/k;->t:[B

    return-object v0
.end method

.method public O()J
    .locals 2

    iget-wide v0, p0, LTg/k;->u:J

    return-wide v0
.end method

.method public P()Z
    .locals 1

    iget-boolean v0, p0, LTg/k;->v:Z

    return v0
.end method

.method public Q([B)V
    .locals 0

    iput-object p1, p0, LTg/k;->t:[B

    return-void
.end method

.method public R(J)V
    .locals 0

    iput-wide p1, p0, LTg/k;->u:J

    return-void
.end method

.method public S(Z)V
    .locals 0

    iput-boolean p1, p0, LTg/k;->v:Z

    return-void
.end method
