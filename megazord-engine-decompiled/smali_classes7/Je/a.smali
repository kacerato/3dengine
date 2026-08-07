.class public LJe/a;
.super LIe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJe/a$p;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LJe/a$p;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, LIe/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, LJe/a;->a:Ljava/util/List;

    return-void
.end method

.method public static A(LIe/m$b;)V
    .locals 2
    .param p0    # LIe/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, LJe/a$m;

    invoke-direct {v0}, LJe/a$m;-><init>()V

    const-class v1, Lpi/q;

    invoke-interface {p0, v1, v0}, LIe/m$b;->c(Ljava/lang/Class;LIe/m$c;)LIe/m$b;

    return-void
.end method

.method public static B(Lpi/x;)Z
    .locals 1
    .param p0    # Lpi/x;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lpi/b;->p()Lpi/b;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lpi/v;->h()Lpi/v;

    move-result-object p0

    instance-of v0, p0, Lpi/t;

    if-eqz v0, :cond_0

    check-cast p0, Lpi/t;

    invoke-virtual {p0}, Lpi/t;->q()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static C(LIe/m$b;)V
    .locals 2
    .param p0    # LIe/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, LJe/a$f;

    invoke-direct {v0}, LJe/a$f;-><init>()V

    const-class v1, Lpi/r;

    invoke-interface {p0, v1, v0}, LIe/m$b;->c(Ljava/lang/Class;LIe/m$c;)LIe/m$b;

    return-void
.end method

.method public static D(LIe/m$b;)V
    .locals 2
    .param p0    # LIe/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, LJe/a$o;

    invoke-direct {v0}, LJe/a$o;-><init>()V

    const-class v1, Lpi/u;

    invoke-interface {p0, v1, v0}, LIe/m$b;->c(Ljava/lang/Class;LIe/m$c;)LIe/m$b;

    return-void
.end method

.method public static E(Lpi/v;)I
    .locals 2
    .param p0    # Lpi/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lpi/v;->h()Lpi/v;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    instance-of v1, p0, Lpi/u;

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    invoke-virtual {p0}, Lpi/v;->h()Lpi/v;

    move-result-object p0

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static F(LIe/m$b;)V
    .locals 2
    .param p0    # LIe/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, LJe/d;

    invoke-direct {v0}, LJe/d;-><init>()V

    const-class v1, Lpi/w;

    invoke-interface {p0, v1, v0}, LIe/m$b;->c(Ljava/lang/Class;LIe/m$c;)LIe/m$b;

    return-void
.end method

.method public static G(LIe/m$b;)V
    .locals 2
    .param p0    # LIe/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, LJe/a$e;

    invoke-direct {v0}, LJe/a$e;-><init>()V

    const-class v1, Lpi/x;

    invoke-interface {p0, v1, v0}, LIe/m$b;->c(Ljava/lang/Class;LIe/m$c;)LIe/m$b;

    return-void
.end method

.method public static H(LIe/m$b;)V
    .locals 2
    .param p0    # LIe/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, LJe/a$c;

    invoke-direct {v0}, LJe/a$c;-><init>()V

    const-class v1, Lpi/y;

    invoke-interface {p0, v1, v0}, LIe/m$b;->c(Ljava/lang/Class;LIe/m$c;)LIe/m$b;

    return-void
.end method

.method public static I(LIe/m$b;)V
    .locals 2
    .param p0    # LIe/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, LJe/a$h;

    invoke-direct {v0}, LJe/a$h;-><init>()V

    const-class v1, Lpi/z;

    invoke-interface {p0, v1, v0}, LIe/m$b;->c(Ljava/lang/Class;LIe/m$c;)LIe/m$b;

    return-void
.end method

.method public static K(LIe/m$b;)V
    .locals 2
    .param p0    # LIe/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, LJe/a$a;

    invoke-direct {v0}, LJe/a$a;-><init>()V

    const-class v1, Lpi/B;

    invoke-interface {p0, v1, v0}, LIe/m$b;->c(Ljava/lang/Class;LIe/m$c;)LIe/m$b;

    return-void
.end method

.method public static L(LIe/m;Ljava/lang/String;Ljava/lang/String;Lpi/v;)V
    .locals 4
    .param p0    # LIe/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lpi/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-interface {p0, p3}, LIe/m;->F(Lpi/v;)V

    invoke-interface {p0}, LIe/m;->length()I

    move-result v0

    invoke-interface {p0}, LIe/m;->h()LIe/z;

    move-result-object v1

    const/16 v2, 0xa0

    invoke-virtual {v1, v2}, LIe/z;->a(C)LIe/z;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, LIe/z;->a(C)LIe/z;

    move-result-object v1

    invoke-interface {p0}, LIe/m;->B()LIe/g;

    move-result-object v3

    invoke-virtual {v3}, LIe/g;->g()LRe/a;

    move-result-object v3

    invoke-interface {v3, p1, p2}, LRe/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v1, p2}, LIe/z;->b(Ljava/lang/CharSequence;)LIe/z;

    invoke-interface {p0}, LIe/m;->H()V

    invoke-interface {p0}, LIe/m;->h()LIe/z;

    move-result-object p2

    invoke-virtual {p2, v2}, LIe/z;->a(C)LIe/z;

    sget-object p2, LJe/b;->g:LIe/s;

    invoke-interface {p0}, LIe/m;->q()LIe/v;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, LIe/s;->h(LIe/v;Ljava/lang/Object;)V

    invoke-interface {p0, p3, v0}, LIe/m;->z(Lpi/v;I)V

    invoke-interface {p0, p3}, LIe/m;->y(Lpi/v;)V

    return-void
.end method

.method public static synthetic l(LJe/a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LJe/a;->a:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic m(Lpi/v;)I
    .locals 0

    invoke-static {p0}, LJe/a;->E(Lpi/v;)I

    move-result p0

    return p0
.end method

.method public static synthetic n(Lpi/x;)Z
    .locals 0

    invoke-static {p0}, LJe/a;->B(Lpi/x;)Z

    move-result p0

    return p0
.end method

.method public static p(LIe/m$b;)V
    .locals 2
    .param p0    # LIe/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, LJe/a$j;

    invoke-direct {v0}, LJe/a$j;-><init>()V

    const-class v1, Lpi/c;

    invoke-interface {p0, v1, v0}, LIe/m$b;->c(Ljava/lang/Class;LIe/m$c;)LIe/m$b;

    return-void
.end method

.method public static q(LIe/m$b;)V
    .locals 2
    .param p0    # LIe/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, LJe/d;

    invoke-direct {v0}, LJe/d;-><init>()V

    const-class v1, Lpi/d;

    invoke-interface {p0, v1, v0}, LIe/m$b;->c(Ljava/lang/Class;LIe/m$c;)LIe/m$b;

    return-void
.end method

.method public static r(LIe/m$b;)V
    .locals 2
    .param p0    # LIe/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, LJe/a$k;

    invoke-direct {v0}, LJe/a$k;-><init>()V

    const-class v1, Lpi/e;

    invoke-interface {p0, v1, v0}, LIe/m$b;->c(Ljava/lang/Class;LIe/m$c;)LIe/m$b;

    return-void
.end method

.method public static s()LJe/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LJe/a;

    invoke-direct {v0}, LJe/a;-><init>()V

    return-object v0
.end method

.method public static t(LIe/m$b;)V
    .locals 2
    .param p0    # LIe/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, LJe/a$i;

    invoke-direct {v0}, LJe/a$i;-><init>()V

    const-class v1, Lpi/j;

    invoke-interface {p0, v1, v0}, LIe/m$b;->c(Ljava/lang/Class;LIe/m$c;)LIe/m$b;

    return-void
.end method

.method public static u()Ljava/util/Set;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lpi/b;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    const-class v6, Lpi/t;

    const-class v7, Lpi/q;

    const-class v1, Lpi/c;

    const-class v2, Lpi/m;

    const-class v3, Lpi/k;

    const-class v4, Lpi/n;

    const-class v5, Lpi/B;

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static v(LIe/m$b;)V
    .locals 2
    .param p0    # LIe/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, LJe/a$l;

    invoke-direct {v0}, LJe/a$l;-><init>()V

    const-class v1, Lpi/k;

    invoke-interface {p0, v1, v0}, LIe/m$b;->c(Ljava/lang/Class;LIe/m$c;)LIe/m$b;

    return-void
.end method

.method public static w(LIe/m$b;)V
    .locals 2
    .param p0    # LIe/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, LJe/a$d;

    invoke-direct {v0}, LJe/a$d;-><init>()V

    const-class v1, Lpi/l;

    invoke-interface {p0, v1, v0}, LIe/m$b;->c(Ljava/lang/Class;LIe/m$c;)LIe/m$b;

    return-void
.end method

.method public static y(LIe/m$b;)V
    .locals 2
    .param p0    # LIe/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, LJe/a$b;

    invoke-direct {v0}, LJe/a$b;-><init>()V

    const-class v1, Lpi/m;

    invoke-interface {p0, v1, v0}, LIe/m$b;->c(Ljava/lang/Class;LIe/m$c;)LIe/m$b;

    return-void
.end method

.method public static z(LIe/m$b;)V
    .locals 2

    new-instance v0, LJe/a$n;

    invoke-direct {v0}, LJe/a$n;-><init>()V

    const-class v1, Lpi/p;

    invoke-interface {p0, v1, v0}, LIe/m$b;->c(Ljava/lang/Class;LIe/m$c;)LIe/m$b;

    return-void
.end method


# virtual methods
.method public final J(LIe/m$b;)V
    .locals 2
    .param p1    # LIe/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, LJe/a$g;

    invoke-direct {v0, p0}, LJe/a$g;-><init>(LJe/a;)V

    const-class v1, Lpi/A;

    invoke-interface {p1, v1, v0}, LIe/m$b;->c(Ljava/lang/Class;LIe/m$c;)LIe/m$b;

    return-void
.end method

.method public b(LIe/m$b;)V
    .locals 0
    .param p1    # LIe/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, LJe/a;->J(LIe/m$b;)V

    invoke-static {p1}, LJe/a;->I(LIe/m$b;)V

    invoke-static {p1}, LJe/a;->t(LIe/m$b;)V

    invoke-static {p1}, LJe/a;->p(LIe/m$b;)V

    invoke-static {p1}, LJe/a;->r(LIe/m$b;)V

    invoke-static {p1}, LJe/a;->v(LIe/m$b;)V

    invoke-static {p1}, LJe/a;->A(LIe/m$b;)V

    invoke-static {p1}, LJe/a;->z(LIe/m$b;)V

    invoke-static {p1}, LJe/a;->q(LIe/m$b;)V

    invoke-static {p1}, LJe/a;->F(LIe/m$b;)V

    invoke-static {p1}, LJe/a;->D(LIe/m$b;)V

    invoke-static {p1}, LJe/a;->K(LIe/m$b;)V

    invoke-static {p1}, LJe/a;->y(LIe/m$b;)V

    invoke-static {p1}, LJe/a;->H(LIe/m$b;)V

    invoke-static {p1}, LJe/a;->w(LIe/m$b;)V

    invoke-static {p1}, LJe/a;->G(LIe/m$b;)V

    invoke-static {p1}, LJe/a;->C(LIe/m$b;)V

    return-void
.end method

.method public d(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, LJe/a;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_0
    return-void
.end method

.method public i(LIe/k$a;)V
    .locals 3
    .param p1    # LIe/k$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, LKe/b;

    invoke-direct {v0}, LKe/b;-><init>()V

    new-instance v1, LKe/h;

    invoke-direct {v1}, LKe/h;-><init>()V

    const-class v2, Lpi/z;

    invoke-interface {p1, v2, v1}, LIe/k$a;->f(Ljava/lang/Class;LIe/y;)LIe/k$a;

    move-result-object p1

    new-instance v1, LKe/d;

    invoke-direct {v1}, LKe/d;-><init>()V

    const-class v2, Lpi/j;

    invoke-interface {p1, v2, v1}, LIe/k$a;->f(Ljava/lang/Class;LIe/y;)LIe/k$a;

    move-result-object p1

    new-instance v1, LKe/a;

    invoke-direct {v1}, LKe/a;-><init>()V

    const-class v2, Lpi/c;

    invoke-interface {p1, v2, v1}, LIe/k$a;->f(Ljava/lang/Class;LIe/y;)LIe/k$a;

    move-result-object p1

    new-instance v1, LKe/c;

    invoke-direct {v1}, LKe/c;-><init>()V

    const-class v2, Lpi/e;

    invoke-interface {p1, v2, v1}, LIe/k$a;->f(Ljava/lang/Class;LIe/y;)LIe/k$a;

    move-result-object p1

    const-class v1, Lpi/k;

    invoke-interface {p1, v1, v0}, LIe/k$a;->f(Ljava/lang/Class;LIe/y;)LIe/k$a;

    move-result-object p1

    const-class v1, Lpi/q;

    invoke-interface {p1, v1, v0}, LIe/k$a;->f(Ljava/lang/Class;LIe/y;)LIe/k$a;

    move-result-object p1

    new-instance v0, LKe/g;

    invoke-direct {v0}, LKe/g;-><init>()V

    const-class v1, Lpi/u;

    invoke-interface {p1, v1, v0}, LIe/k$a;->f(Ljava/lang/Class;LIe/y;)LIe/k$a;

    move-result-object p1

    new-instance v0, LKe/e;

    invoke-direct {v0}, LKe/e;-><init>()V

    const-class v1, Lpi/m;

    invoke-interface {p1, v1, v0}, LIe/k$a;->f(Ljava/lang/Class;LIe/y;)LIe/k$a;

    move-result-object p1

    new-instance v0, LKe/f;

    invoke-direct {v0}, LKe/f;-><init>()V

    const-class v1, Lpi/r;

    invoke-interface {p1, v1, v0}, LIe/k$a;->f(Ljava/lang/Class;LIe/y;)LIe/k$a;

    move-result-object p1

    new-instance v0, LKe/i;

    invoke-direct {v0}, LKe/i;-><init>()V

    const-class v1, Lpi/B;

    invoke-interface {p1, v1, v0}, LIe/k$a;->f(Ljava/lang/Class;LIe/y;)LIe/k$a;

    return-void
.end method

.method public j(Landroid/widget/TextView;Landroid/text/Spanned;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/text/Spanned;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1, p2}, LLe/k;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    instance-of v0, p2, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/text/Spannable;

    invoke-static {p2, p1}, LLe/n;->a(Landroid/text/Spannable;Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method

.method public o(LJe/a$p;)LJe/a;
    .locals 1
    .param p1    # LJe/a$p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LJe/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public x(Z)LJe/a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, LJe/a;->b:Z

    return-object p0
.end method
