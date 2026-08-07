.class public final Lph/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lph/k;


# instance fields
.field public A:Ljava/lang/Float;

.field public B:Ljava/lang/Float;

.field public C:Lph/i;

.field public D:Lph/B;

.field public E:Ljava/lang/Float;

.field public F:Ljava/lang/Float;

.field public G:Lph/B;

.field public final a:Ljava/lang/String;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Float;

.field public d:Lph/i;

.field public e:Ljava/lang/Float;

.field public f:Lph/i;

.field public g:Lph/B;

.field public h:Lph/i;

.field public i:Lph/B;

.field public j:Lph/i;

.field public k:Lph/B;

.field public l:Ljava/lang/Float;

.field public m:Lph/B;

.field public n:Ljava/lang/Float;

.field public o:Ljava/lang/Boolean;

.field public p:Lph/B;

.field public q:Lph/B;

.field public r:Lph/B;

.field public s:Lph/B;

.field public final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lph/B;",
            ">;"
        }
    .end annotation
.end field

.field public u:Ljava/lang/Float;

.field public v:Lph/B;

.field public w:Ljava/lang/Float;

.field public x:Lph/B;

.field public y:Ljava/lang/Float;

.field public z:Lph/B;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lph/d;->a:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lph/d;->t:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disp"
        }
    .end annotation

    iget-object v0, p0, Lph/d;->r:Lph/B;

    if-nez v0, :cond_0

    new-instance v0, Lph/h;

    invoke-direct {v0}, Lph/h;-><init>()V

    iput-object v0, p0, Lph/d;->r:Lph/B;

    :cond_0
    iget-object v0, p0, Lph/d;->r:Lph/B;

    invoke-interface {v0, p1}, Lph/B;->a(Ljava/lang/String;)V

    return-void
.end method

.method public A0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lph/d;->s:Lph/B;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lph/B;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lph/d;->v:Lph/B;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lph/B;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public B0(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "g",
            "b"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lph/C;->a(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)Lph/i;

    move-result-object p1

    iput-object p1, p0, Lph/d;->j:Lph/i;

    return-void
.end method

.method public C()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lph/d;->g:Lph/B;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lph/B;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C0(Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ns"
        }
    .end annotation

    iput-object p1, p0, Lph/d;->l:Ljava/lang/Float;

    return-void
.end method

.method public D(Lph/B;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    iput-object p1, p0, Lph/d;->p:Lph/B;

    return-void
.end method

.method public D0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lph/d;->p:Lph/B;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lph/B;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public E()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lph/d;->A:Ljava/lang/Float;

    return-object v0
.end method

.method public E0()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lph/d;->F:Ljava/lang/Float;

    return-object v0
.end method

.method public F()Lph/B;
    .locals 1

    iget-object v0, p0, Lph/d;->k:Lph/B;

    return-object v0
.end method

.method public F0(Lph/B;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    iput-object p1, p0, Lph/d;->D:Lph/B;

    return-void
.end method

.method public G()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lph/d;->E:Ljava/lang/Float;

    return-object v0
.end method

.method public G0()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lph/d;->w:Ljava/lang/Float;

    return-object v0
.end method

.method public H()Lph/i;
    .locals 1

    iget-object v0, p0, Lph/d;->h:Lph/i;

    return-object v0
.end method

.method public H0(Lph/B;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    iput-object p1, p0, Lph/d;->q:Lph/B;

    return-void
.end method

.method public I(Lph/B;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    iput-object p1, p0, Lph/d;->m:Lph/B;

    return-void
.end method

.method public I0(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapKa"
        }
    .end annotation

    iget-object v0, p0, Lph/d;->g:Lph/B;

    if-nez v0, :cond_0

    new-instance v0, Lph/h;

    invoke-direct {v0}, Lph/h;-><init>()V

    iput-object v0, p0, Lph/d;->g:Lph/B;

    :cond_0
    iget-object v0, p0, Lph/d;->g:Lph/B;

    invoke-interface {v0, p1}, Lph/B;->a(Ljava/lang/String;)V

    return-void
.end method

.method public J(Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ni"
        }
    .end annotation

    iput-object p1, p0, Lph/d;->c:Ljava/lang/Float;

    return-void
.end method

.method public J0()Lph/B;
    .locals 1

    iget-object v0, p0, Lph/d;->m:Lph/B;

    return-object v0
.end method

.method public K()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lph/d;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public L(Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    iput-object p1, p0, Lph/d;->n:Ljava/lang/Float;

    return-void
.end method

.method public M()Lph/B;
    .locals 1

    iget-object v0, p0, Lph/d;->D:Lph/B;

    return-object v0
.end method

.method public N()Lph/i;
    .locals 1

    iget-object v0, p0, Lph/d;->C:Lph/i;

    return-object v0
.end method

.method public O()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lph/d;->D:Lph/B;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lph/B;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public P(Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pcr"
        }
    .end annotation

    iput-object p1, p0, Lph/d;->B:Ljava/lang/Float;

    return-void
.end method

.method public Q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lph/d;->z:Lph/B;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lph/B;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public R(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapNs"
        }
    .end annotation

    iget-object v0, p0, Lph/d;->m:Lph/B;

    if-nez v0, :cond_0

    new-instance v0, Lph/h;

    invoke-direct {v0}, Lph/h;-><init>()V

    iput-object v0, p0, Lph/d;->m:Lph/B;

    :cond_0
    iget-object v0, p0, Lph/d;->m:Lph/B;

    invoke-interface {v0, p1}, Lph/B;->a(Ljava/lang/String;)V

    return-void
.end method

.method public S()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lph/d;->i:Lph/B;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lph/B;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public T(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapPs"
        }
    .end annotation

    iget-object v0, p0, Lph/d;->z:Lph/B;

    if-nez v0, :cond_0

    new-instance v0, Lph/h;

    invoke-direct {v0}, Lph/h;-><init>()V

    iput-object v0, p0, Lph/d;->z:Lph/B;

    :cond_0
    iget-object v0, p0, Lph/d;->z:Lph/B;

    invoke-interface {v0, p1}, Lph/B;->a(Ljava/lang/String;)V

    return-void
.end method

.method public U(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "norm"
        }
    .end annotation

    iget-object v0, p0, Lph/d;->G:Lph/B;

    if-nez v0, :cond_0

    new-instance v0, Lph/h;

    invoke-direct {v0}, Lph/h;-><init>()V

    iput-object v0, p0, Lph/d;->G:Lph/B;

    :cond_0
    iget-object v0, p0, Lph/d;->G:Lph/B;

    invoke-interface {v0, p1}, Lph/B;->a(Ljava/lang/String;)V

    return-void
.end method

.method public V(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "g",
            "b"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lph/C;->a(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)Lph/i;

    move-result-object p1

    iput-object p1, p0, Lph/d;->C:Lph/i;

    return-void
.end method

.method public W(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bump"
        }
    .end annotation

    iget-object v0, p0, Lph/d;->q:Lph/B;

    if-nez v0, :cond_0

    new-instance v0, Lph/h;

    invoke-direct {v0}, Lph/h;-><init>()V

    iput-object v0, p0, Lph/d;->q:Lph/B;

    :cond_0
    iget-object v0, p0, Lph/d;->q:Lph/B;

    invoke-interface {v0, p1}, Lph/B;->a(Ljava/lang/String;)V

    return-void
.end method

.method public X(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapKd"
        }
    .end annotation

    iget-object v0, p0, Lph/d;->i:Lph/B;

    if-nez v0, :cond_0

    new-instance v0, Lph/h;

    invoke-direct {v0}, Lph/h;-><init>()V

    iput-object v0, p0, Lph/d;->i:Lph/B;

    :cond_0
    iget-object v0, p0, Lph/d;->i:Lph/B;

    invoke-interface {v0, p1}, Lph/B;->a(Ljava/lang/String;)V

    return-void
.end method

.method public Y(Lph/B;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    iput-object p1, p0, Lph/d;->G:Lph/B;

    return-void
.end method

.method public Z(Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pr"
        }
    .end annotation

    iput-object p1, p0, Lph/d;->u:Ljava/lang/Float;

    return-void
.end method

.method public a()Lph/B;
    .locals 1

    iget-object v0, p0, Lph/d;->q:Lph/B;

    return-object v0
.end method

.method public a0(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapPr"
        }
    .end annotation

    iget-object v0, p0, Lph/d;->v:Lph/B;

    if-nez v0, :cond_0

    new-instance v0, Lph/h;

    invoke-direct {v0}, Lph/h;-><init>()V

    iput-object v0, p0, Lph/d;->v:Lph/B;

    :cond_0
    iget-object v0, p0, Lph/d;->v:Lph/B;

    invoke-interface {v0, p1}, Lph/B;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sharpness"
        }
    .end annotation

    iput-object p1, p0, Lph/d;->e:Ljava/lang/Float;

    return-void
.end method

.method public b0(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "g",
            "b"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lph/C;->a(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)Lph/i;

    move-result-object p1

    iput-object p1, p0, Lph/d;->h:Lph/i;

    return-void
.end method

.method public c(Lph/B;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    iput-object p1, p0, Lph/d;->i:Lph/B;

    return-void
.end method

.method public c0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lph/B;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lph/d;->t:Ljava/util/List;

    return-object v0
.end method

.method public d(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "g",
            "b"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lph/C;->a(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)Lph/i;

    move-result-object p1

    iput-object p1, p0, Lph/d;->d:Lph/i;

    return-void
.end method

.method public d0()Lph/B;
    .locals 1

    iget-object v0, p0, Lph/d;->g:Lph/B;

    return-object v0
.end method

.method public e()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lph/d;->B:Ljava/lang/Float;

    return-object v0
.end method

.method public e0()Lph/B;
    .locals 1

    iget-object v0, p0, Lph/d;->i:Lph/B;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lph/d;->x:Lph/B;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lph/B;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f0(Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ps"
        }
    .end annotation

    iput-object p1, p0, Lph/d;->y:Ljava/lang/Float;

    return-void
.end method

.method public g()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lph/d;->c:Ljava/lang/Float;

    return-object v0
.end method

.method public g0()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lph/d;->l:Ljava/lang/Float;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lph/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getNorm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lph/d;->G:Lph/B;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lph/B;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "anisor"
        }
    .end annotation

    iput-object p1, p0, Lph/d;->F:Ljava/lang/Float;

    return-void
.end method

.method public h0(Lph/B;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    iput-object p1, p0, Lph/d;->v:Lph/B;

    return-void
.end method

.method public i(Lph/B;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    iput-object p1, p0, Lph/d;->g:Lph/B;

    return-void
.end method

.method public i0(Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pc"
        }
    .end annotation

    iput-object p1, p0, Lph/d;->A:Ljava/lang/Float;

    return-void
.end method

.method public j()Lph/B;
    .locals 1

    iget-object v0, p0, Lph/d;->v:Lph/B;

    return-object v0
.end method

.method public j0(Lph/B;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    iput-object p1, p0, Lph/d;->z:Lph/B;

    return-void
.end method

.method public k()Lph/i;
    .locals 1

    iget-object v0, p0, Lph/d;->f:Lph/i;

    return-object v0
.end method

.method public k0()Lph/B;
    .locals 1

    iget-object v0, p0, Lph/d;->x:Lph/B;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapPm"
        }
    .end annotation

    iget-object v0, p0, Lph/d;->x:Lph/B;

    if-nez v0, :cond_0

    new-instance v0, Lph/h;

    invoke-direct {v0}, Lph/h;-><init>()V

    iput-object v0, p0, Lph/d;->x:Lph/B;

    :cond_0
    iget-object v0, p0, Lph/d;->x:Lph/B;

    invoke-interface {v0, p1}, Lph/B;->a(Ljava/lang/String;)V

    return-void
.end method

.method public l0()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lph/d;->e:Ljava/lang/Float;

    return-object v0
.end method

.method public m()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lph/d;->u:Ljava/lang/Float;

    return-object v0
.end method

.method public m0(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapKe"
        }
    .end annotation

    iget-object v0, p0, Lph/d;->D:Lph/B;

    if-nez v0, :cond_0

    new-instance v0, Lph/h;

    invoke-direct {v0}, Lph/h;-><init>()V

    iput-object v0, p0, Lph/d;->D:Lph/B;

    :cond_0
    iget-object v0, p0, Lph/d;->D:Lph/B;

    invoke-interface {v0, p1}, Lph/B;->a(Ljava/lang/String;)V

    return-void
.end method

.method public n()Lph/B;
    .locals 1

    iget-object v0, p0, Lph/d;->r:Lph/B;

    return-object v0
.end method

.method public n0(Lph/B;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    iput-object p1, p0, Lph/d;->s:Lph/B;

    return-void
.end method

.method public o()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lph/d;->n:Ljava/lang/Float;

    return-object v0
.end method

.method public o0(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "g",
            "b"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lph/C;->a(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)Lph/i;

    move-result-object p1

    iput-object p1, p0, Lph/d;->f:Lph/i;

    return-void
.end method

.method public p()Lph/B;
    .locals 1

    iget-object v0, p0, Lph/d;->z:Lph/B;

    return-object v0
.end method

.method public p0(Lph/B;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    iput-object p1, p0, Lph/d;->r:Lph/B;

    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lph/d;->r:Lph/B;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lph/B;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q0()Lph/i;
    .locals 1

    iget-object v0, p0, Lph/d;->d:Lph/i;

    return-object v0
.end method

.method public r()Lph/B;
    .locals 1

    iget-object v0, p0, Lph/d;->s:Lph/B;

    return-object v0
.end method

.method public r0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lph/d;->q:Lph/B;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lph/B;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "halo"
        }
    .end annotation

    iput-object p1, p0, Lph/d;->o:Ljava/lang/Boolean;

    return-void
.end method

.method public s0(Lph/B;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    iput-object p1, p0, Lph/d;->k:Lph/B;

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "decal"
        }
    .end annotation

    iget-object v0, p0, Lph/d;->s:Lph/B;

    if-nez v0, :cond_0

    new-instance v0, Lph/h;

    invoke-direct {v0}, Lph/h;-><init>()V

    iput-object v0, p0, Lph/d;->s:Lph/B;

    :cond_0
    iget-object v0, p0, Lph/d;->s:Lph/B;

    invoke-interface {v0, p1}, Lph/B;->a(Ljava/lang/String;)V

    return-void
.end method

.method public t0()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lph/d;->o:Ljava/lang/Boolean;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mtl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lph/d;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapD"
        }
    .end annotation

    iget-object v0, p0, Lph/d;->p:Lph/B;

    if-nez v0, :cond_0

    new-instance v0, Lph/h;

    invoke-direct {v0}, Lph/h;-><init>()V

    iput-object v0, p0, Lph/d;->p:Lph/B;

    :cond_0
    iget-object v0, p0, Lph/d;->p:Lph/B;

    invoke-interface {v0, p1}, Lph/B;->a(Ljava/lang/String;)V

    return-void
.end method

.method public u0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lph/d;->m:Lph/B;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lph/B;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v(Lph/B;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    iput-object p1, p0, Lph/d;->x:Lph/B;

    return-void
.end method

.method public v0()Lph/B;
    .locals 1

    iget-object v0, p0, Lph/d;->G:Lph/B;

    return-object v0
.end method

.method public w()Lph/i;
    .locals 1

    iget-object v0, p0, Lph/d;->j:Lph/i;

    return-object v0
.end method

.method public w0(Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aniso"
        }
    .end annotation

    iput-object p1, p0, Lph/d;->E:Ljava/lang/Float;

    return-void
.end method

.method public x(Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pm"
        }
    .end annotation

    iput-object p1, p0, Lph/d;->w:Ljava/lang/Float;

    return-void
.end method

.method public x0()Lph/B;
    .locals 1

    iget-object v0, p0, Lph/d;->p:Lph/B;

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lph/d;->k:Lph/B;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lph/B;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y0(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "illum"
        }
    .end annotation

    iput-object p1, p0, Lph/d;->b:Ljava/lang/Integer;

    return-void
.end method

.method public z()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lph/d;->y:Ljava/lang/Float;

    return-object v0
.end method

.method public z0(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapKs"
        }
    .end annotation

    iget-object v0, p0, Lph/d;->k:Lph/B;

    if-nez v0, :cond_0

    new-instance v0, Lph/h;

    invoke-direct {v0}, Lph/h;-><init>()V

    iput-object v0, p0, Lph/d;->k:Lph/B;

    :cond_0
    iget-object v0, p0, Lph/d;->k:Lph/B;

    invoke-interface {v0, p1}, Lph/B;->a(Ljava/lang/String;)V

    return-void
.end method
