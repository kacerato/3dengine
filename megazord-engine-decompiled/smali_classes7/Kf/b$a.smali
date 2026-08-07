.class public final LKf/b$a;
.super LHf/d;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LKf/b;->a([I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LHf/d<",
        "LFf/B0;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field public final synthetic d:[I


# direct methods
.method public constructor <init>([I)V
    .locals 0

    iput-object p1, p0, LKf/b$a;->d:[I

    invoke-direct {p0}, LHf/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    iget-object v0, p0, LKf/b$a;->d:[I

    invoke-static {v0}, LFf/C0;->u([I)I

    move-result v0

    return v0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, LFf/B0;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, LFf/B0;

    invoke-virtual {p1}, LFf/B0;->q0()I

    move-result p1

    invoke-virtual {p0, p1}, LKf/b$a;->j(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LKf/b$a;->k(I)I

    move-result p1

    invoke-static {p1}, LFf/B0;->e(I)LFf/B0;

    move-result-object p1

    return-object p1
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, LFf/B0;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, LFf/B0;

    invoke-virtual {p1}, LFf/B0;->q0()I

    move-result p1

    invoke-virtual {p0, p1}, LKf/b$a;->l(I)I

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LKf/b$a;->d:[I

    invoke-static {v0}, LFf/C0;->x([I)Z

    move-result v0

    return v0
.end method

.method public j(I)Z
    .locals 1

    iget-object v0, p0, LKf/b$a;->d:[I

    invoke-static {v0, p1}, LFf/C0;->o([II)Z

    move-result p1

    return p1
.end method

.method public k(I)I
    .locals 1

    iget-object v0, p0, LKf/b$a;->d:[I

    invoke-static {v0, p1}, LFf/C0;->s([II)I

    move-result p1

    return p1
.end method

.method public l(I)I
    .locals 1

    iget-object v0, p0, LKf/b$a;->d:[I

    invoke-static {v0, p1}, LHf/A;->Yf([II)I

    move-result p1

    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, LFf/B0;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, LFf/B0;

    invoke-virtual {p1}, LFf/B0;->q0()I

    move-result p1

    invoke-virtual {p0, p1}, LKf/b$a;->m(I)I

    move-result p1

    return p1
.end method

.method public m(I)I
    .locals 1

    iget-object v0, p0, LKf/b$a;->d:[I

    invoke-static {v0, p1}, LHf/A;->ci([II)I

    move-result p1

    return p1
.end method
