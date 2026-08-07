.class public final LB1/U;
.super LB1/V;
.source "SourceFile"


# instance fields
.field public final transient d:I

.field public final transient e:I

.field public final synthetic f:LB1/V;


# direct methods
.method public constructor <init>(LB1/V;II)V
    .locals 0

    iput-object p1, p0, LB1/U;->f:LB1/V;

    invoke-direct {p0}, LB1/V;-><init>()V

    iput p2, p0, LB1/U;->d:I

    iput p3, p0, LB1/U;->e:I

    return-void
.end method


# virtual methods
.method public final b()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LB1/U;->f:LB1/V;

    invoke-virtual {v0}, LB1/S;->b()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .locals 2

    iget-object v0, p0, LB1/U;->f:LB1/V;

    invoke-virtual {v0}, LB1/S;->c()I

    move-result v0

    iget v1, p0, LB1/U;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final d()I
    .locals 2

    iget-object v0, p0, LB1/U;->f:LB1/V;

    invoke-virtual {v0}, LB1/S;->c()I

    move-result v0

    iget v1, p0, LB1/U;->d:I

    add-int/2addr v0, v1

    iget v1, p0, LB1/U;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, LB1/U;->e:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, LB1/O;->a(IILjava/lang/String;)I

    iget-object v0, p0, LB1/U;->f:LB1/V;

    iget v1, p0, LB1/U;->d:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final j(II)LB1/V;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "LB1/V;"
        }
    .end annotation

    iget v0, p0, LB1/U;->e:I

    invoke-static {p1, p2, v0}, LB1/O;->c(III)V

    iget-object v0, p0, LB1/U;->f:LB1/V;

    iget v1, p0, LB1/U;->d:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, LB1/V;->j(II)LB1/V;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, LB1/U;->e:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, LB1/V;->j(II)LB1/V;

    move-result-object p1

    return-object p1
.end method
