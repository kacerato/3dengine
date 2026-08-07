.class public Le8/p;
.super Le8/g;
.source "SourceFile"


# instance fields
.field public i:Landroid/content/Context;

.field public j:Le8/q;

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le8/g;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le8/g;",
            ">;"
        }
    .end annotation
.end field

.field public m:Le8/o;

.field public n:Z

.field public final o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le8/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le8/g;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Le8/p;->k:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Le8/p;->l:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Le8/p;->m:Le8/o;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Le8/p;->n:Z

    .line 6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Le8/p;->o:Ljava/util/Set;

    .line 7
    iput-object p1, p0, Le8/p;->i:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Le8/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "listener"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Le8/g;-><init>()V

    .line 9
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Le8/p;->k:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Le8/p;->l:Ljava/util/List;

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Le8/p;->m:Le8/o;

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Le8/p;->n:Z

    .line 13
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Le8/p;->o:Ljava/util/Set;

    .line 14
    iput-object p1, p0, Le8/p;->i:Landroid/content/Context;

    .line 15
    iput-object p2, p0, Le8/p;->j:Le8/q;

    return-void
.end method

.method public static synthetic q(Le8/p;)Le8/o;
    .locals 0

    iget-object p0, p0, Le8/p;->m:Le8/o;

    return-object p0
.end method

.method public static synthetic r(Le8/p;Le8/o;)Le8/o;
    .locals 0

    iput-object p1, p0, Le8/p;->m:Le8/o;

    return-object p1
.end method


# virtual methods
.method public A(IZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "idx",
            "notifyListener",
            "isFromUserAction"
        }
    .end annotation

    iget-object v0, p0, Le8/p;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le8/g;

    instance-of v0, p1, Le8/o;

    if-eqz v0, :cond_1

    check-cast p1, Le8/o;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2, p3}, Le8/o;->v0(ZZZ)V

    iget-object p2, p0, Le8/p;->m:Le8/o;

    if-eqz p2, :cond_0

    if-eq p2, p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, p3}, Le8/o;->v0(ZZZ)V

    :cond_0
    iput-object p1, p0, Le8/p;->m:Le8/o;

    :cond_1
    return-void
.end method

.method public B(Le8/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tbToggle"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Le8/p;->C(Le8/o;Z)V

    return-void
.end method

.method public C(Le8/o;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tbToggle",
            "isFromUserAction"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Le8/p;->D(Le8/o;ZZ)V

    return-void
.end method

.method public D(Le8/o;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tbToggle",
            "notifyListener",
            "isFromUserAction"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Le8/p;->m:Le8/o;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0, v0, p3}, Le8/o;->v0(ZZZ)V

    const/4 p1, 0x0

    iput-object p1, p0, Le8/p;->m:Le8/o;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Le8/p;->k:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p1, v1, p2, p3}, Le8/o;->v0(ZZZ)V

    iget-object p2, p0, Le8/p;->m:Le8/o;

    if-eqz p2, :cond_1

    if-eq p2, p1, :cond_1

    invoke-virtual {p2, v0, v0, p3}, Le8/o;->v0(ZZZ)V

    :cond_1
    iput-object p1, p0, Le8/p;->m:Le8/o;

    :cond_2
    :goto_0
    return-void
.end method

.method public E(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spaceBetweenElements"
        }
    .end annotation

    iput-boolean p1, p0, Le8/p;->n:Z

    return-void
.end method

.method public F()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Le8/p;->t()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Le8/p;->G(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public G(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, Le8/p;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le8/g;

    invoke-virtual {v0}, Le8/g;->p()V

    iget-object v1, p0, Le8/p;->o:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Le8/p;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Le8/p;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le8/g;

    invoke-virtual {p1}, Le8/g;->p()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le8/p;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le8/g;

    invoke-virtual {p1}, Le8/g;->g()V

    :goto_0
    return-void
.end method

.method public a(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/view/LayoutInflater;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "context",
            "layoutInflater"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Le8/p;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Le8/p;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le8/g;

    invoke-virtual {v2, p1, p2, p3}, Le8/g;->a(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/view/LayoutInflater;)V

    invoke-static {p2, p1, p3}, Lv7/a;->s(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;)Le8/k;

    move-result-object v2

    iget-object v3, p0, Le8/p;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v3, p0, Le8/p;->n:Z

    if-nez v3, :cond_0

    invoke-virtual {v2}, Le8/g;->g()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Le8/p;->m:Le8/o;

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0, v0}, Le8/o;->v0(ZZZ)V

    :cond_2
    return-void
.end method

.method public g()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Le8/p;->t()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Le8/p;->u(I)Le8/g;

    move-result-object v1

    invoke-virtual {v1}, Le8/g;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Le8/p;->o:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Le8/g;->g()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0}, Le8/g;->g()V

    return-void
.end method

.method public i(LMc/h;Landroid/graphics/Rect;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "touch",
            "rect"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Le8/p;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Le8/p;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le8/g;

    invoke-virtual {v2, p1, p2}, Le8/g;->i(LMc/h;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public k()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Le8/p;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Le8/p;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le8/g;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Le8/g;->k()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Le8/p;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Le8/p;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le8/g;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Le8/g;->k()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public l(Landroid/widget/LinearLayout;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    invoke-super {p0, p1}, Le8/g;->l(Landroid/widget/LinearLayout;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Le8/p;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Le8/p;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le8/g;

    invoke-virtual {v2, p1}, Le8/g;->l(Landroid/widget/LinearLayout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v1, p0, Le8/p;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Le8/p;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le8/g;

    invoke-virtual {v1, p1}, Le8/g;->l(Landroid/widget/LinearLayout;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public p()V
    .locals 2

    iget-object v0, p0, Le8/p;->o:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le8/g;

    invoke-virtual {v1}, Le8/g;->p()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le8/p;->o:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    invoke-super {p0}, Le8/g;->p()V

    return-void
.end method

.method public s(Le8/g;)Le8/p;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    iget-object v0, p0, Le8/p;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    instance-of v0, p1, Le8/o;

    if-eqz v0, :cond_1

    check-cast p1, Le8/o;

    iget-object v0, p0, Le8/p;->m:Le8/o;

    if-nez v0, :cond_0

    iput-object p1, p0, Le8/p;->m:Le8/o;

    :cond_0
    invoke-virtual {p1}, Le8/o;->o0()Le8/r;

    move-result-object v0

    new-instance v1, Le8/p$a;

    invoke-direct {v1, p0, v0}, Le8/p$a;-><init>(Le8/p;Le8/r;)V

    invoke-virtual {p1, v1}, Le8/o;->H0(Le8/r;)V

    :cond_1
    return-object p0
.end method

.method public t()I
    .locals 1

    iget-object v0, p0, Le8/p;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public u(I)Le8/g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, Le8/p;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le8/g;

    return-object p1
.end method

.method public v()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Le8/p;->t()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Le8/p;->w(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public w(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, Le8/p;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le8/g;

    invoke-virtual {v0}, Le8/g;->g()V

    iget-object v1, p0, Le8/p;->o:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Le8/p;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le8/g;

    invoke-virtual {p1}, Le8/g;->g()V

    return-void
.end method

.method public x()Z
    .locals 1

    iget-boolean v0, p0, Le8/p;->n:Z

    return v0
.end method

.method public y(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Le8/p;->A(IZZ)V

    return-void
.end method

.method public z(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "idx",
            "isFromUserAction"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Le8/p;->A(IZZ)V

    return-void
.end method
