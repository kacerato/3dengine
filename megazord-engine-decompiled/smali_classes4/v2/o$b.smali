.class public final Lv2/o$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Lv2/e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public b:Lv2/e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public c:Lv2/e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public d:Lv2/e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public e:Lv2/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public f:Lv2/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public g:Lv2/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public h:Lv2/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public i:Lv2/g;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public j:Lv2/g;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public k:Lv2/g;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public l:Lv2/g;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lv2/k;->b()Lv2/e;

    move-result-object v0

    iput-object v0, p0, Lv2/o$b;->a:Lv2/e;

    .line 3
    invoke-static {}, Lv2/k;->b()Lv2/e;

    move-result-object v0

    iput-object v0, p0, Lv2/o$b;->b:Lv2/e;

    .line 4
    invoke-static {}, Lv2/k;->b()Lv2/e;

    move-result-object v0

    iput-object v0, p0, Lv2/o$b;->c:Lv2/e;

    .line 5
    invoke-static {}, Lv2/k;->b()Lv2/e;

    move-result-object v0

    iput-object v0, p0, Lv2/o$b;->d:Lv2/e;

    .line 6
    new-instance v0, Lv2/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lv2/a;-><init>(F)V

    iput-object v0, p0, Lv2/o$b;->e:Lv2/d;

    .line 7
    new-instance v0, Lv2/a;

    invoke-direct {v0, v1}, Lv2/a;-><init>(F)V

    iput-object v0, p0, Lv2/o$b;->f:Lv2/d;

    .line 8
    new-instance v0, Lv2/a;

    invoke-direct {v0, v1}, Lv2/a;-><init>(F)V

    iput-object v0, p0, Lv2/o$b;->g:Lv2/d;

    .line 9
    new-instance v0, Lv2/a;

    invoke-direct {v0, v1}, Lv2/a;-><init>(F)V

    iput-object v0, p0, Lv2/o$b;->h:Lv2/d;

    .line 10
    invoke-static {}, Lv2/k;->c()Lv2/g;

    move-result-object v0

    iput-object v0, p0, Lv2/o$b;->i:Lv2/g;

    .line 11
    invoke-static {}, Lv2/k;->c()Lv2/g;

    move-result-object v0

    iput-object v0, p0, Lv2/o$b;->j:Lv2/g;

    .line 12
    invoke-static {}, Lv2/k;->c()Lv2/g;

    move-result-object v0

    iput-object v0, p0, Lv2/o$b;->k:Lv2/g;

    .line 13
    invoke-static {}, Lv2/k;->c()Lv2/g;

    move-result-object v0

    iput-object v0, p0, Lv2/o$b;->l:Lv2/g;

    return-void
.end method

.method public constructor <init>(Lv2/o;)V
    .locals 2
    .param p1    # Lv2/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Lv2/k;->b()Lv2/e;

    move-result-object v0

    iput-object v0, p0, Lv2/o$b;->a:Lv2/e;

    .line 16
    invoke-static {}, Lv2/k;->b()Lv2/e;

    move-result-object v0

    iput-object v0, p0, Lv2/o$b;->b:Lv2/e;

    .line 17
    invoke-static {}, Lv2/k;->b()Lv2/e;

    move-result-object v0

    iput-object v0, p0, Lv2/o$b;->c:Lv2/e;

    .line 18
    invoke-static {}, Lv2/k;->b()Lv2/e;

    move-result-object v0

    iput-object v0, p0, Lv2/o$b;->d:Lv2/e;

    .line 19
    new-instance v0, Lv2/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lv2/a;-><init>(F)V

    iput-object v0, p0, Lv2/o$b;->e:Lv2/d;

    .line 20
    new-instance v0, Lv2/a;

    invoke-direct {v0, v1}, Lv2/a;-><init>(F)V

    iput-object v0, p0, Lv2/o$b;->f:Lv2/d;

    .line 21
    new-instance v0, Lv2/a;

    invoke-direct {v0, v1}, Lv2/a;-><init>(F)V

    iput-object v0, p0, Lv2/o$b;->g:Lv2/d;

    .line 22
    new-instance v0, Lv2/a;

    invoke-direct {v0, v1}, Lv2/a;-><init>(F)V

    iput-object v0, p0, Lv2/o$b;->h:Lv2/d;

    .line 23
    invoke-static {}, Lv2/k;->c()Lv2/g;

    move-result-object v0

    iput-object v0, p0, Lv2/o$b;->i:Lv2/g;

    .line 24
    invoke-static {}, Lv2/k;->c()Lv2/g;

    move-result-object v0

    iput-object v0, p0, Lv2/o$b;->j:Lv2/g;

    .line 25
    invoke-static {}, Lv2/k;->c()Lv2/g;

    move-result-object v0

    iput-object v0, p0, Lv2/o$b;->k:Lv2/g;

    .line 26
    invoke-static {}, Lv2/k;->c()Lv2/g;

    move-result-object v0

    iput-object v0, p0, Lv2/o$b;->l:Lv2/g;

    .line 27
    iget-object v0, p1, Lv2/o;->a:Lv2/e;

    iput-object v0, p0, Lv2/o$b;->a:Lv2/e;

    .line 28
    iget-object v0, p1, Lv2/o;->b:Lv2/e;

    iput-object v0, p0, Lv2/o$b;->b:Lv2/e;

    .line 29
    iget-object v0, p1, Lv2/o;->c:Lv2/e;

    iput-object v0, p0, Lv2/o$b;->c:Lv2/e;

    .line 30
    iget-object v0, p1, Lv2/o;->d:Lv2/e;

    iput-object v0, p0, Lv2/o$b;->d:Lv2/e;

    .line 31
    iget-object v0, p1, Lv2/o;->e:Lv2/d;

    iput-object v0, p0, Lv2/o$b;->e:Lv2/d;

    .line 32
    iget-object v0, p1, Lv2/o;->f:Lv2/d;

    iput-object v0, p0, Lv2/o$b;->f:Lv2/d;

    .line 33
    iget-object v0, p1, Lv2/o;->g:Lv2/d;

    iput-object v0, p0, Lv2/o$b;->g:Lv2/d;

    .line 34
    iget-object v0, p1, Lv2/o;->h:Lv2/d;

    iput-object v0, p0, Lv2/o$b;->h:Lv2/d;

    .line 35
    iget-object v0, p1, Lv2/o;->i:Lv2/g;

    iput-object v0, p0, Lv2/o$b;->i:Lv2/g;

    .line 36
    iget-object v0, p1, Lv2/o;->j:Lv2/g;

    iput-object v0, p0, Lv2/o$b;->j:Lv2/g;

    .line 37
    iget-object v0, p1, Lv2/o;->k:Lv2/g;

    iput-object v0, p0, Lv2/o$b;->k:Lv2/g;

    .line 38
    iget-object p1, p1, Lv2/o;->l:Lv2/g;

    iput-object p1, p0, Lv2/o$b;->l:Lv2/g;

    return-void
.end method

.method public static synthetic a(Lv2/o$b;)Lv2/e;
    .locals 0

    iget-object p0, p0, Lv2/o$b;->a:Lv2/e;

    return-object p0
.end method

.method public static synthetic b(Lv2/o$b;)Lv2/g;
    .locals 0

    iget-object p0, p0, Lv2/o$b;->j:Lv2/g;

    return-object p0
.end method

.method public static synthetic c(Lv2/o$b;)Lv2/g;
    .locals 0

    iget-object p0, p0, Lv2/o$b;->k:Lv2/g;

    return-object p0
.end method

.method public static synthetic d(Lv2/o$b;)Lv2/g;
    .locals 0

    iget-object p0, p0, Lv2/o$b;->l:Lv2/g;

    return-object p0
.end method

.method public static synthetic e(Lv2/o$b;)Lv2/e;
    .locals 0

    iget-object p0, p0, Lv2/o$b;->b:Lv2/e;

    return-object p0
.end method

.method public static synthetic f(Lv2/o$b;)Lv2/e;
    .locals 0

    iget-object p0, p0, Lv2/o$b;->c:Lv2/e;

    return-object p0
.end method

.method public static synthetic g(Lv2/o$b;)Lv2/e;
    .locals 0

    iget-object p0, p0, Lv2/o$b;->d:Lv2/e;

    return-object p0
.end method

.method public static synthetic h(Lv2/o$b;)Lv2/d;
    .locals 0

    iget-object p0, p0, Lv2/o$b;->e:Lv2/d;

    return-object p0
.end method

.method public static synthetic i(Lv2/o$b;)Lv2/d;
    .locals 0

    iget-object p0, p0, Lv2/o$b;->f:Lv2/d;

    return-object p0
.end method

.method public static synthetic j(Lv2/o$b;)Lv2/d;
    .locals 0

    iget-object p0, p0, Lv2/o$b;->g:Lv2/d;

    return-object p0
.end method

.method public static synthetic k(Lv2/o$b;)Lv2/d;
    .locals 0

    iget-object p0, p0, Lv2/o$b;->h:Lv2/d;

    return-object p0
.end method

.method public static synthetic l(Lv2/o$b;)Lv2/g;
    .locals 0

    iget-object p0, p0, Lv2/o$b;->i:Lv2/g;

    return-object p0
.end method

.method public static n(Lv2/e;)F
    .locals 1

    instance-of v0, p0, Lv2/n;

    if-eqz v0, :cond_0

    check-cast p0, Lv2/n;

    iget p0, p0, Lv2/n;->a:F

    return p0

    :cond_0
    instance-of v0, p0, Lv2/f;

    if-eqz v0, :cond_1

    check-cast p0, Lv2/f;

    iget p0, p0, Lv2/f;->a:F

    return p0

    :cond_1
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method


# virtual methods
.method public A(ILv2/d;)Lv2/o$b;
    .locals 0
    .param p2    # Lv2/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Lv2/k;->a(I)Lv2/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lv2/o$b;->B(Lv2/e;)Lv2/o$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lv2/o$b;->D(Lv2/d;)Lv2/o$b;

    move-result-object p1

    return-object p1
.end method

.method public B(Lv2/e;)Lv2/o$b;
    .locals 1
    .param p1    # Lv2/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lv2/o$b;->c:Lv2/e;

    invoke-static {p1}, Lv2/o$b;->n(Lv2/e;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lv2/o$b;->C(F)Lv2/o$b;

    :cond_0
    return-object p0
.end method

.method public C(F)Lv2/o$b;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lv2/a;

    invoke-direct {v0, p1}, Lv2/a;-><init>(F)V

    iput-object v0, p0, Lv2/o$b;->g:Lv2/d;

    return-object p0
.end method

.method public D(Lv2/d;)Lv2/o$b;
    .locals 0
    .param p1    # Lv2/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lv2/o$b;->g:Lv2/d;

    return-object p0
.end method

.method public E(Lv2/g;)Lv2/o$b;
    .locals 0
    .param p1    # Lv2/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lv2/o$b;->l:Lv2/g;

    return-object p0
.end method

.method public F(Lv2/g;)Lv2/o$b;
    .locals 0
    .param p1    # Lv2/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lv2/o$b;->j:Lv2/g;

    return-object p0
.end method

.method public G(Lv2/g;)Lv2/o$b;
    .locals 0
    .param p1    # Lv2/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lv2/o$b;->i:Lv2/g;

    return-object p0
.end method

.method public H(IF)Lv2/o$b;
    .locals 0
    .param p2    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Lv2/k;->a(I)Lv2/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lv2/o$b;->J(Lv2/e;)Lv2/o$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lv2/o$b;->K(F)Lv2/o$b;

    move-result-object p1

    return-object p1
.end method

.method public I(ILv2/d;)Lv2/o$b;
    .locals 0
    .param p2    # Lv2/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Lv2/k;->a(I)Lv2/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lv2/o$b;->J(Lv2/e;)Lv2/o$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lv2/o$b;->L(Lv2/d;)Lv2/o$b;

    move-result-object p1

    return-object p1
.end method

.method public J(Lv2/e;)Lv2/o$b;
    .locals 1
    .param p1    # Lv2/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lv2/o$b;->a:Lv2/e;

    invoke-static {p1}, Lv2/o$b;->n(Lv2/e;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lv2/o$b;->K(F)Lv2/o$b;

    :cond_0
    return-object p0
.end method

.method public K(F)Lv2/o$b;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lv2/a;

    invoke-direct {v0, p1}, Lv2/a;-><init>(F)V

    iput-object v0, p0, Lv2/o$b;->e:Lv2/d;

    return-object p0
.end method

.method public L(Lv2/d;)Lv2/o$b;
    .locals 0
    .param p1    # Lv2/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lv2/o$b;->e:Lv2/d;

    return-object p0
.end method

.method public M(IF)Lv2/o$b;
    .locals 0
    .param p2    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Lv2/k;->a(I)Lv2/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lv2/o$b;->O(Lv2/e;)Lv2/o$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lv2/o$b;->P(F)Lv2/o$b;

    move-result-object p1

    return-object p1
.end method

.method public N(ILv2/d;)Lv2/o$b;
    .locals 0
    .param p2    # Lv2/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Lv2/k;->a(I)Lv2/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lv2/o$b;->O(Lv2/e;)Lv2/o$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lv2/o$b;->Q(Lv2/d;)Lv2/o$b;

    move-result-object p1

    return-object p1
.end method

.method public O(Lv2/e;)Lv2/o$b;
    .locals 1
    .param p1    # Lv2/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lv2/o$b;->b:Lv2/e;

    invoke-static {p1}, Lv2/o$b;->n(Lv2/e;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lv2/o$b;->P(F)Lv2/o$b;

    :cond_0
    return-object p0
.end method

.method public P(F)Lv2/o$b;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lv2/a;

    invoke-direct {v0, p1}, Lv2/a;-><init>(F)V

    iput-object v0, p0, Lv2/o$b;->f:Lv2/d;

    return-object p0
.end method

.method public Q(Lv2/d;)Lv2/o$b;
    .locals 0
    .param p1    # Lv2/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lv2/o$b;->f:Lv2/d;

    return-object p0
.end method

.method public m()Lv2/o;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lv2/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lv2/o;-><init>(Lv2/o$b;Lv2/o$a;)V

    return-object v0
.end method

.method public o(F)Lv2/o$b;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lv2/o$b;->K(F)Lv2/o$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lv2/o$b;->P(F)Lv2/o$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lv2/o$b;->C(F)Lv2/o$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lv2/o$b;->x(F)Lv2/o$b;

    move-result-object p1

    return-object p1
.end method

.method public p(Lv2/d;)Lv2/o$b;
    .locals 1
    .param p1    # Lv2/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lv2/o$b;->L(Lv2/d;)Lv2/o$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lv2/o$b;->Q(Lv2/d;)Lv2/o$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lv2/o$b;->D(Lv2/d;)Lv2/o$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lv2/o$b;->y(Lv2/d;)Lv2/o$b;

    move-result-object p1

    return-object p1
.end method

.method public q(IF)Lv2/o$b;
    .locals 0
    .param p2    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Lv2/k;->a(I)Lv2/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lv2/o$b;->r(Lv2/e;)Lv2/o$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lv2/o$b;->o(F)Lv2/o$b;

    move-result-object p1

    return-object p1
.end method

.method public r(Lv2/e;)Lv2/o$b;
    .locals 1
    .param p1    # Lv2/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lv2/o$b;->J(Lv2/e;)Lv2/o$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lv2/o$b;->O(Lv2/e;)Lv2/o$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lv2/o$b;->B(Lv2/e;)Lv2/o$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lv2/o$b;->w(Lv2/e;)Lv2/o$b;

    move-result-object p1

    return-object p1
.end method

.method public s(Lv2/g;)Lv2/o$b;
    .locals 1
    .param p1    # Lv2/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lv2/o$b;->E(Lv2/g;)Lv2/o$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lv2/o$b;->G(Lv2/g;)Lv2/o$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lv2/o$b;->F(Lv2/g;)Lv2/o$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lv2/o$b;->t(Lv2/g;)Lv2/o$b;

    move-result-object p1

    return-object p1
.end method

.method public t(Lv2/g;)Lv2/o$b;
    .locals 0
    .param p1    # Lv2/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lv2/o$b;->k:Lv2/g;

    return-object p0
.end method

.method public u(IF)Lv2/o$b;
    .locals 0
    .param p2    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Lv2/k;->a(I)Lv2/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lv2/o$b;->w(Lv2/e;)Lv2/o$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lv2/o$b;->x(F)Lv2/o$b;

    move-result-object p1

    return-object p1
.end method

.method public v(ILv2/d;)Lv2/o$b;
    .locals 0
    .param p2    # Lv2/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Lv2/k;->a(I)Lv2/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lv2/o$b;->w(Lv2/e;)Lv2/o$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lv2/o$b;->y(Lv2/d;)Lv2/o$b;

    move-result-object p1

    return-object p1
.end method

.method public w(Lv2/e;)Lv2/o$b;
    .locals 1
    .param p1    # Lv2/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lv2/o$b;->d:Lv2/e;

    invoke-static {p1}, Lv2/o$b;->n(Lv2/e;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lv2/o$b;->x(F)Lv2/o$b;

    :cond_0
    return-object p0
.end method

.method public x(F)Lv2/o$b;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lv2/a;

    invoke-direct {v0, p1}, Lv2/a;-><init>(F)V

    iput-object v0, p0, Lv2/o$b;->h:Lv2/d;

    return-object p0
.end method

.method public y(Lv2/d;)Lv2/o$b;
    .locals 0
    .param p1    # Lv2/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lv2/o$b;->h:Lv2/d;

    return-object p0
.end method

.method public z(IF)Lv2/o$b;
    .locals 0
    .param p2    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Lv2/k;->a(I)Lv2/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lv2/o$b;->B(Lv2/e;)Lv2/o$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lv2/o$b;->C(F)Lv2/o$b;

    move-result-object p1

    return-object p1
.end method
