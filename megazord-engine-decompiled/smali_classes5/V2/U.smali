.class public final LV2/U;
.super LV2/g;
.source "SourceFile"


# annotations
.annotation build LQ2/a;
.end annotation

.annotation runtime LV2/t;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "LV2/g<",
        "TN;>;"
    }
.end annotation


# instance fields
.field public f:Z

.field public g:LV2/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LV2/s<",
            "-TE;>;"
        }
    .end annotation
.end field

.field public h:LR2/C;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LR2/C<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, LV2/g;-><init>(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, LV2/U;->f:Z

    invoke-static {}, LV2/s;->d()LV2/s;

    move-result-object p1

    iput-object p1, p0, LV2/U;->g:LV2/s;

    invoke-static {}, LR2/C;->a()LR2/C;

    move-result-object p1

    iput-object p1, p0, LV2/U;->h:LR2/C;

    return-void
.end method

.method public static e()LV2/U;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LV2/U<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, LV2/U;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LV2/U;-><init>(Z)V

    return-object v0
.end method

.method public static i(LV2/T;)LV2/U;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "LV2/T<",
            "TN;TE;>;)",
            "LV2/U<",
            "TN;TE;>;"
        }
    .end annotation

    new-instance v0, LV2/U;

    invoke-interface {p0}, LV2/T;->e()Z

    move-result v1

    invoke-direct {v0, v1}, LV2/U;-><init>(Z)V

    invoke-interface {p0}, LV2/T;->z()Z

    move-result v1

    invoke-virtual {v0, v1}, LV2/U;->a(Z)LV2/U;

    move-result-object v0

    invoke-interface {p0}, LV2/T;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, LV2/U;->b(Z)LV2/U;

    move-result-object v0

    invoke-interface {p0}, LV2/T;->h()LV2/s;

    move-result-object v1

    invoke-virtual {v0, v1}, LV2/U;->k(LV2/s;)LV2/U;

    move-result-object v0

    invoke-interface {p0}, LV2/T;->I()LV2/s;

    move-result-object p0

    invoke-virtual {v0, p0}, LV2/U;->f(LV2/s;)LV2/U;

    move-result-object p0

    return-object p0
.end method

.method public static l()LV2/U;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LV2/U<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, LV2/U;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LV2/U;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public a(Z)LV2/U;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "LV2/U<",
            "TN;TE;>;"
        }
    .end annotation

    iput-boolean p1, p0, LV2/U;->f:Z

    return-object p0
.end method

.method public b(Z)LV2/U;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "LV2/U<",
            "TN;TE;>;"
        }
    .end annotation

    iput-boolean p1, p0, LV2/g;->b:Z

    return-object p0
.end method

.method public c()LV2/Q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;E1:TE;>()",
            "LV2/Q<",
            "TN1;TE1;>;"
        }
    .end annotation

    new-instance v0, LV2/Z;

    invoke-direct {v0, p0}, LV2/Z;-><init>(LV2/U;)V

    return-object v0
.end method

.method public final d()LV2/U;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;E1:TE;>()",
            "LV2/U<",
            "TN1;TE1;>;"
        }
    .end annotation

    return-object p0
.end method

.method public f(LV2/s;)LV2/U;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E1:TE;>(",
            "LV2/s<",
            "TE1;>;)",
            "LV2/U<",
            "TN;TE1;>;"
        }
    .end annotation

    invoke-virtual {p0}, LV2/U;->d()LV2/U;

    move-result-object v0

    invoke-static {p1}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LV2/s;

    iput-object p1, v0, LV2/U;->g:LV2/s;

    return-object v0
.end method

.method public g(I)LV2/U;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LV2/U<",
            "TN;TE;>;"
        }
    .end annotation

    invoke-static {p1}, LV2/D;->b(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, LR2/C;->f(Ljava/lang/Object;)LR2/C;

    move-result-object p1

    iput-object p1, p0, LV2/U;->h:LR2/C;

    return-object p0
.end method

.method public h(I)LV2/U;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LV2/U<",
            "TN;TE;>;"
        }
    .end annotation

    invoke-static {p1}, LV2/D;->b(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, LR2/C;->f(Ljava/lang/Object;)LR2/C;

    move-result-object p1

    iput-object p1, p0, LV2/g;->e:LR2/C;

    return-object p0
.end method

.method public j()LV2/I$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;E1:TE;>()",
            "LV2/I$a<",
            "TN1;TE1;>;"
        }
    .end annotation

    invoke-virtual {p0}, LV2/U;->d()LV2/U;

    move-result-object v0

    new-instance v1, LV2/I$a;

    invoke-direct {v1, v0}, LV2/I$a;-><init>(LV2/U;)V

    return-object v1
.end method

.method public k(LV2/s;)LV2/U;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>(",
            "LV2/s<",
            "TN1;>;)",
            "LV2/U<",
            "TN1;TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, LV2/U;->d()LV2/U;

    move-result-object v0

    invoke-static {p1}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LV2/s;

    iput-object p1, v0, LV2/g;->c:LV2/s;

    return-object v0
.end method
