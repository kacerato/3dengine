.class public final LKf/b$b;
.super LHf/d;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LKf/b;->c([J)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LHf/d<",
        "LFf/F0;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field public final synthetic d:[J


# direct methods
.method public constructor <init>([J)V
    .locals 0

    iput-object p1, p0, LKf/b$b;->d:[J

    invoke-direct {p0}, LHf/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    iget-object v0, p0, LKf/b$b;->d:[J

    invoke-static {v0}, LFf/G0;->s([J)I

    move-result v0

    return v0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, LFf/F0;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, LFf/F0;

    invoke-virtual {p1}, LFf/F0;->m0()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, LKf/b$b;->d(J)Z

    move-result p1

    return p1
.end method

.method public d(J)Z
    .locals 1

    iget-object v0, p0, LKf/b$b;->d:[J

    invoke-static {v0, p1, p2}, LFf/G0;->m([JJ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, LKf/b$b;->j(I)J

    move-result-wide v0

    invoke-static {v0, v1}, LFf/F0;->b(J)LFf/F0;

    move-result-object p1

    return-object p1
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 2

    instance-of v0, p1, LFf/F0;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, LFf/F0;

    invoke-virtual {p1}, LFf/F0;->m0()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, LKf/b$b;->k(J)I

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LKf/b$b;->d:[J

    invoke-static {v0}, LFf/G0;->v([J)Z

    move-result v0

    return v0
.end method

.method public j(I)J
    .locals 2

    iget-object v0, p0, LKf/b$b;->d:[J

    invoke-static {v0, p1}, LFf/G0;->q([JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public k(J)I
    .locals 1

    iget-object v0, p0, LKf/b$b;->d:[J

    invoke-static {v0, p1, p2}, LHf/A;->Zf([JJ)I

    move-result p1

    return p1
.end method

.method public l(J)I
    .locals 1

    iget-object v0, p0, LKf/b$b;->d:[J

    invoke-static {v0, p1, p2}, LHf/A;->di([JJ)I

    move-result p1

    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 2

    instance-of v0, p1, LFf/F0;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, LFf/F0;

    invoke-virtual {p1}, LFf/F0;->m0()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, LKf/b$b;->l(J)I

    move-result p1

    return p1
.end method
