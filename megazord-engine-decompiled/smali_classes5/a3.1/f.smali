.class public final La3/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LQ2/b;
    emulated = true
.end annotation

.annotation runtime La3/a;
.end annotation

.annotation runtime Ld3/j;
.end annotation


# static fields
.field public static final e:LR2/e;

.field public static final f:LR2/M;

.field public static final g:LR2/y;

.field public static final h:I = -0x1

.field public static final i:I = 0x7f

.field public static final j:I = 0xfd

.field public static final k:I = 0x3f

.field public static final l:LR2/e;

.field public static final m:LR2/e;

.field public static final n:LR2/e;

.field public static final o:LR2/e;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/google/common/collect/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g1<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, ".\u3002\uff0e\uff61"

    invoke-static {v0}, LR2/e;->d(Ljava/lang/CharSequence;)LR2/e;

    move-result-object v0

    sput-object v0, La3/f;->e:LR2/e;

    const/16 v0, 0x2e

    invoke-static {v0}, LR2/M;->h(C)LR2/M;

    move-result-object v1

    sput-object v1, La3/f;->f:LR2/M;

    invoke-static {v0}, LR2/y;->o(C)LR2/y;

    move-result-object v0

    sput-object v0, La3/f;->g:LR2/y;

    const-string v0, "-_"

    invoke-static {v0}, LR2/e;->d(Ljava/lang/CharSequence;)LR2/e;

    move-result-object v0

    sput-object v0, La3/f;->l:LR2/e;

    const/16 v1, 0x30

    const/16 v2, 0x39

    invoke-static {v1, v2}, LR2/e;->m(CC)LR2/e;

    move-result-object v1

    sput-object v1, La3/f;->m:LR2/e;

    const/16 v2, 0x61

    const/16 v3, 0x7a

    invoke-static {v2, v3}, LR2/e;->m(CC)LR2/e;

    move-result-object v2

    const/16 v3, 0x41

    const/16 v4, 0x5a

    invoke-static {v3, v4}, LR2/e;->m(CC)LR2/e;

    move-result-object v3

    invoke-virtual {v2, v3}, LR2/e;->I(LR2/e;)LR2/e;

    move-result-object v2

    sput-object v2, La3/f;->n:LR2/e;

    invoke-virtual {v1, v2}, LR2/e;->I(LR2/e;)LR2/e;

    move-result-object v1

    invoke-virtual {v1, v0}, LR2/e;->I(LR2/e;)LR2/e;

    move-result-object v0

    sput-object v0, La3/f;->o:LR2/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, La3/f;->e:LR2/e;

    const/16 v1, 0x2e

    invoke-virtual {v0, p1, v1}, LR2/e;->N(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LR2/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xfd

    if-gt v0, v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const-string v3, "Domain name too long: \'%s\':"

    invoke-static {v0, v3, p1}, LR2/H;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, La3/f;->a:Ljava/lang/String;

    sget-object v0, La3/f;->f:LR2/M;

    invoke-virtual {v0, p1}, LR2/M;->n(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/g1;->p(Ljava/lang/Iterable;)Lcom/google/common/collect/g1;

    move-result-object v0

    iput-object v0, p0, La3/f;->b:Lcom/google/common/collect/g1;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    const/16 v4, 0x7f

    if-gt v3, v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    const-string v2, "Domain has too many parts: \'%s\'"

    invoke-static {v1, v2, p1}, LR2/H;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, La3/f;->x(Ljava/util/List;)Z

    move-result v0

    const-string v1, "Not a valid domain name: \'%s\'"

    invoke-static {v0, v1, p1}, LR2/H;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, LR2/C;->a()LR2/C;

    move-result-object p1

    invoke-virtual {p0, p1}, La3/f;->c(LR2/C;)I

    move-result p1

    iput p1, p0, La3/f;->c:I

    sget-object p1, LR3/b;->REGISTRY:LR3/b;

    invoke-static {p1}, LR2/C;->f(Ljava/lang/Object;)LR2/C;

    move-result-object p1

    invoke-virtual {p0, p1}, La3/f;->c(LR2/C;)I

    move-result p1

    iput p1, p0, La3/f;->d:I

    return-void
.end method

.method public static d(Ljava/lang/String;)La3/f;
    .locals 1
    .annotation build Ld3/a;
    .end annotation

    new-instance v0, La3/f;

    invoke-static {p0}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, La3/f;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static n(Ljava/lang/String;)Z
    .locals 0

    :try_start_0
    invoke-static {p0}, La3/f;->d(Ljava/lang/String;)La3/f;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static o(LR2/C;LR2/C;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR2/C<",
            "LR3/b;",
            ">;",
            "LR2/C<",
            "LR3/b;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, LR2/C;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, LR2/C;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, LR2/C;->e()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static p(LR2/C;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR2/C<",
            "LR3/b;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    sget-object v0, La3/f;->f:LR2/M;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LR2/M;->f(I)LR2/M;

    move-result-object v0

    invoke-virtual {v0, p1}, LR2/M;->o(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    sget-object v0, LR3/a;->b:Lcom/google/common/collect/i1;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/i1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LR3/b;

    invoke-static {p1}, LR2/C;->c(Ljava/lang/Object;)LR2/C;

    move-result-object p1

    invoke-static {p0, p1}, La3/f;->o(LR2/C;LR2/C;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static w(Ljava/lang/String;Z)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x3f

    if-le v0, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, LR2/e;->f()LR2/e;

    move-result-object v0

    invoke-virtual {v0, p0}, LR2/e;->P(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, La3/f;->o:LR2/e;

    invoke-virtual {v3, v0}, LR2/e;->C(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    sget-object v0, La3/f;->l:LR2/e;

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, LR2/e;->B(C)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, LR2/e;->B(C)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    sget-object p1, La3/f;->m:LR2/e;

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {p1, p0}, LR2/e;->B(C)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v2

    :cond_4
    :goto_0
    return v1
.end method

.method public static x(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v1}, La3/f;->w(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v3}, La3/f;->w(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    return v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method public final a(I)La3/f;
    .locals 3

    sget-object v0, La3/f;->g:LR2/y;

    iget-object v1, p0, La3/f;->b:Lcom/google/common/collect/g1;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/google/common/collect/g1;->M(II)Lcom/google/common/collect/g1;

    move-result-object p1

    invoke-virtual {v0, p1}, LR2/y;->k(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, La3/f;->d(Ljava/lang/String;)La3/f;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)La3/f;
    .locals 3

    invoke-static {p1}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, La3/f;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, La3/f;->d(Ljava/lang/String;)La3/f;

    move-result-object p1

    return-object p1
.end method

.method public final c(LR2/C;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR2/C<",
            "LR3/b;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, La3/f;->b:Lcom/google/common/collect/g1;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    sget-object v2, La3/f;->g:LR2/y;

    iget-object v3, p0, La3/f;->b:Lcom/google/common/collect/g1;

    invoke-virtual {v3, v1, v0}, Lcom/google/common/collect/g1;->M(II)Lcom/google/common/collect/g1;

    move-result-object v3

    invoke-virtual {v2, v3}, LR2/y;->k(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, LR3/a;->a:Lcom/google/common/collect/i1;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/i1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LR3/b;

    invoke-static {v3}, LR2/C;->c(Ljava/lang/Object;)LR2/C;

    move-result-object v3

    invoke-static {p1, v3}, La3/f;->o(LR2/C;LR2/C;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    sget-object v3, LR3/a;->c:Lcom/google/common/collect/i1;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/i1;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    return v1

    :cond_1
    invoke-static {p1, v2}, La3/f;->p(LR2/C;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, La3/f;->b:Lcom/google/common/collect/g1;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, La3/f;

    if-eqz v0, :cond_1

    check-cast p1, La3/f;

    iget-object v0, p0, La3/f;->a:Ljava/lang/String;

    iget-object p1, p1, La3/f;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public f()Z
    .locals 2

    iget v0, p0, La3/f;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 2

    iget v0, p0, La3/f;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Z
    .locals 1

    iget v0, p0, La3/f;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, La3/f;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    iget v0, p0, La3/f;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Z
    .locals 2

    iget v0, p0, La3/f;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public k()Z
    .locals 2

    iget v0, p0, La3/f;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public l()Z
    .locals 1

    iget v0, p0, La3/f;->c:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()Z
    .locals 1

    iget v0, p0, La3/f;->d:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q()La3/f;
    .locals 3

    invoke-virtual {p0}, La3/f;->e()Z

    move-result v0

    const-string v1, "Domain \'%s\' has no parent"

    iget-object v2, p0, La3/f;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LR2/H;->x0(ZLjava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, La3/f;->a(I)La3/f;

    move-result-object v0

    return-object v0
.end method

.method public r()Lcom/google/common/collect/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g1<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, La3/f;->b:Lcom/google/common/collect/g1;

    return-object v0
.end method

.method public s()La3/f;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, La3/f;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, La3/f;->c:I

    invoke-virtual {p0, v0}, La3/f;->a(I)La3/f;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public t()La3/f;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, La3/f;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, La3/f;->d:I

    invoke-virtual {p0, v0}, La3/f;->a(I)La3/f;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La3/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public u()La3/f;
    .locals 3

    invoke-virtual {p0}, La3/f;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, La3/f;->m()Z

    move-result v0

    const-string v1, "Not under a registry suffix: %s"

    iget-object v2, p0, La3/f;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LR2/H;->x0(ZLjava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, La3/f;->d:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, La3/f;->a(I)La3/f;

    move-result-object v0

    return-object v0
.end method

.method public v()La3/f;
    .locals 3

    invoke-virtual {p0}, La3/f;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, La3/f;->l()Z

    move-result v0

    const-string v1, "Not under a public suffix: %s"

    iget-object v2, p0, La3/f;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LR2/H;->x0(ZLjava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, La3/f;->c:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, La3/f;->a(I)La3/f;

    move-result-object v0

    return-object v0
.end method
