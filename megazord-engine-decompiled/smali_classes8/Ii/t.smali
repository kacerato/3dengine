.class public LIi/t;
.super LIi/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LIi/t$b;
    }
.end annotation


# instance fields
.field public final a:LEi/L;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, LIi/a;-><init>()V

    new-instance v0, LIi/t$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LIi/t$b;-><init>(LIi/t$a;)V

    iput-object v0, p0, LIi/t;->a:LEi/L;

    return-void
.end method

.method public static synthetic d(LEi/A;[FLjava/util/concurrent/atomic/AtomicReference;FLjava/util/concurrent/atomic/AtomicBoolean;LEi/s;LEi/G;J)V
    .locals 0

    invoke-static/range {p0 .. p8}, LIi/t;->h(LEi/A;[FLjava/util/concurrent/atomic/AtomicReference;FLjava/util/concurrent/atomic/AtomicBoolean;LEi/s;LEi/G;J)V

    return-void
.end method

.method public static synthetic e(LIi/t;LEi/A;LIi/m;[FLjava/lang/Float;)LEi/U;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, LIi/t;->i(LEi/A;LIi/m;[FLjava/lang/Float;)LEi/U;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(LEi/A;[FLjava/util/concurrent/atomic/AtomicReference;FLjava/util/concurrent/atomic/AtomicBoolean;LEi/s;LEi/G;J)V
    .locals 0

    invoke-virtual {p0, p7, p8, p1}, LEi/A;->A(J[F)LEi/O;

    move-result-object p0

    invoke-virtual {p0}, LEi/O;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, LEi/O;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Float;

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p5

    cmpl-float p5, p1, p5

    if-lez p5, :cond_0

    cmpg-float p1, p1, p3

    if-gez p1, :cond_0

    invoke-virtual {p2, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 p0, 0x1

    invoke-virtual {p4, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(LIi/m;LRi/p$b;LIi/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "acfg",
            "result",
            "es"
        }
    .end annotation

    iget v0, p1, LIi/m;->d:F

    iget v1, p1, LIi/m;->f:F

    iget v2, p1, LIi/m;->c:F

    invoke-virtual {p0, p2, v0, v1, v2}, LIi/t;->f(LRi/p$b;FFF)LEi/A;

    move-result-object p2

    new-instance v0, LIi/s;

    invoke-direct {v0, p0, p2, p1}, LIi/s;-><init>(LIi/t;LEi/A;LIi/m;)V

    invoke-virtual {p0, p1, p3, v0}, LIi/a;->b(LIi/m;LIi/e;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public final f(LRi/p$b;FFF)LEi/A;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "agentRadius",
            "agentHeight",
            "agentClimb"
        }
    .end annotation

    new-instance v0, LEi/x;

    invoke-direct {v0}, LEi/x;-><init>()V

    invoke-virtual {p1}, LRi/p$b;->c()LRi/k;

    move-result-object v1

    iget-object v1, v1, LRi/k;->a:[I

    iput-object v1, v0, LEi/x;->a:[I

    invoke-virtual {p1}, LRi/p$b;->c()LRi/k;

    move-result-object v1

    iget v1, v1, LRi/k;->e:I

    iput v1, v0, LEi/x;->b:I

    invoke-virtual {p1}, LRi/p$b;->c()LRi/k;

    move-result-object v1

    iget-object v1, v1, LRi/k;->b:[I

    iput-object v1, v0, LEi/x;->c:[I

    invoke-virtual {p1}, LRi/p$b;->c()LRi/k;

    move-result-object v1

    iget-object v1, v1, LRi/k;->d:[I

    iput-object v1, v0, LEi/x;->e:[I

    invoke-virtual {p1}, LRi/p$b;->c()LRi/k;

    move-result-object v1

    iget-object v1, v1, LRi/k;->i:[I

    iput-object v1, v0, LEi/x;->d:[I

    invoke-virtual {p1}, LRi/p$b;->c()LRi/k;

    move-result-object v1

    iget v1, v1, LRi/k;->f:I

    iput v1, v0, LEi/x;->f:I

    invoke-virtual {p1}, LRi/p$b;->c()LRi/k;

    move-result-object v1

    iget v1, v1, LRi/k;->g:I

    iput v1, v0, LEi/x;->g:I

    invoke-virtual {p1}, LRi/p$b;->d()LRi/l;

    move-result-object v1

    iget-object v1, v1, LRi/l;->a:[I

    iput-object v1, v0, LEi/x;->h:[I

    invoke-virtual {p1}, LRi/p$b;->d()LRi/l;

    move-result-object v1

    iget-object v1, v1, LRi/l;->b:[F

    iput-object v1, v0, LEi/x;->i:[F

    invoke-virtual {p1}, LRi/p$b;->d()LRi/l;

    move-result-object v1

    iget v1, v1, LRi/l;->e:I

    iput v1, v0, LEi/x;->j:I

    invoke-virtual {p1}, LRi/p$b;->d()LRi/l;

    move-result-object v1

    iget-object v1, v1, LRi/l;->c:[I

    iput-object v1, v0, LEi/x;->k:[I

    invoke-virtual {p1}, LRi/p$b;->d()LRi/l;

    move-result-object v1

    iget v1, v1, LRi/l;->f:I

    iput v1, v0, LEi/x;->l:I

    iput p2, v0, LEi/x;->A:F

    iput p3, v0, LEi/x;->z:F

    iput p4, v0, LEi/x;->B:F

    invoke-virtual {p1}, LRi/p$b;->c()LRi/k;

    move-result-object p2

    iget-object p2, p2, LRi/k;->j:[F

    iput-object p2, v0, LEi/x;->x:[F

    invoke-virtual {p1}, LRi/p$b;->c()LRi/k;

    move-result-object p2

    iget-object p2, p2, LRi/k;->k:[F

    iput-object p2, v0, LEi/x;->y:[F

    invoke-virtual {p1}, LRi/p$b;->c()LRi/k;

    move-result-object p2

    iget p2, p2, LRi/k;->l:F

    iput p2, v0, LEi/x;->C:F

    invoke-virtual {p1}, LRi/p$b;->c()LRi/k;

    move-result-object p1

    iget p1, p1, LRi/k;->m:F

    iput p1, v0, LEi/x;->D:F

    const/4 p1, 0x1

    iput-boolean p1, v0, LEi/x;->E:Z

    new-instance p1, LEi/A;

    new-instance p2, LEi/v;

    invoke-static {v0}, LEi/w;->d(LEi/x;)LEi/q;

    move-result-object p3

    iget p4, v0, LEi/x;->g:I

    const/4 v0, 0x0

    invoke-direct {p2, p3, p4, v0}, LEi/v;-><init>(LEi/q;II)V

    invoke-direct {p1, p2}, LEi/A;-><init>(LEi/v;)V

    return-object p1
.end method

.method public final g(LEi/A;[FFF)LEi/U;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "navMeshQuery",
            "pt",
            "cs",
            "heightRange"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LEi/A;",
            "[FFF)",
            "LEi/U<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 v1, 0x1

    aput p4, v0, v1

    const/4 v2, 0x2

    aput p3, v0, v2

    aget p3, p2, v1

    add-float v6, p3, p4

    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    new-instance p4, Ljava/util/concurrent/atomic/AtomicReference;

    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p4, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iget-object v8, p0, LIi/t;->a:LEi/L;

    new-instance v9, LIi/r;

    move-object v2, v9

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, LIi/r;-><init>(LEi/A;[FLjava/util/concurrent/atomic/AtomicReference;FLjava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {p1, p2, v0, v8, v9}, LEi/A;->M([F[FLEi/L;LEi/I;)LEi/Q;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, LEi/U;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-direct {p1, p2, p3}, LEi/U;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p1, LEi/U;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aget p2, p2, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p1, p3, p2}, LEi/U;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final synthetic i(LEi/A;LIi/m;[FLjava/lang/Float;)LEi/U;
    .locals 0

    iget p2, p2, LIi/m;->a:F

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    invoke-virtual {p0, p1, p3, p2, p4}, LIi/t;->g(LEi/A;[FFF)LEi/U;

    move-result-object p1

    return-object p1
.end method
