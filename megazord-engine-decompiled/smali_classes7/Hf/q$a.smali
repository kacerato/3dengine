.class public final LHf/q$a;
.super LHf/d;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LHf/q;->n([B)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LHf/d<",
        "Ljava/lang/Byte;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field public final synthetic d:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    iput-object p1, p0, LHf/q$a;->d:[B

    invoke-direct {p0}, LHf/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    iget-object v0, p0, LHf/q$a;->d:[B

    array-length v0, v0

    return v0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1}, LHf/q$a;->d(B)Z

    move-result p1

    return p1
.end method

.method public d(B)Z
    .locals 1

    iget-object v0, p0, LHf/q$a;->d:[B

    invoke-static {v0, p1}, LHf/A;->v8([BB)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LHf/q$a;->j(I)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1}, LHf/q$a;->k(B)I

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LHf/q$a;->d:[B

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j(I)Ljava/lang/Byte;
    .locals 1

    iget-object v0, p0, LHf/q$a;->d:[B

    aget-byte p1, v0, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public k(B)I
    .locals 1

    iget-object v0, p0, LHf/q$a;->d:[B

    invoke-static {v0, p1}, LHf/A;->Uf([BB)I

    move-result p1

    return p1
.end method

.method public l(B)I
    .locals 1

    iget-object v0, p0, LHf/q$a;->d:[B

    invoke-static {v0, p1}, LHf/A;->Yh([BB)I

    move-result p1

    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1}, LHf/q$a;->l(B)I

    move-result p1

    return p1
.end method
