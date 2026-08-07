.class public LKc/a$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LKc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LKc/a$g$c;
    }
.end annotation


# static fields
.field public static final o:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final p:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final q:Lbd/e;

.field public static final r:Lbd/e;

.field public static final s:Lbd/e;

.field public static final t:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final u:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final v:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final w:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final x:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final y:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final z:F = 0.5f


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:F

.field public e:F

.field public f:F

.field public final g:LKc/a$g$c;

.field public final h:LKc/a$g$c;

.field public final i:LKc/a$g$c;

.field public final j:LKc/a$g$c;

.field public final k:LKc/a$g$c;

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;",
            ">;"
        }
    .end annotation
.end field

.field public n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, LKc/a$g;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, LKc/a$g;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lbd/e;

    invoke-direct {v0}, Lbd/e;-><init>()V

    sput-object v0, LKc/a$g;->q:Lbd/e;

    new-instance v0, Lbd/e;

    invoke-direct {v0}, Lbd/e;-><init>()V

    sput-object v0, LKc/a$g;->r:Lbd/e;

    new-instance v0, Lbd/e;

    invoke-direct {v0}, Lbd/e;-><init>()V

    sput-object v0, LKc/a$g;->s:Lbd/e;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, LKc/a$g;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, LKc/a$g;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, LKc/a$g;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, LKc/a$g;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, LKc/a$g;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, LKc/a$g;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LKc/a;->r:LKc/a$d;

    new-instance v1, LKc/a$g$a;

    invoke-direct {v1, p0}, LKc/a$g$a;-><init>(LKc/a$g;)V

    invoke-virtual {v0, v1}, LKc/a$d;->b(LKc/a$d$a;)V

    invoke-virtual {p0}, LKc/a$g;->e()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LKc/a$g;->c:Z

    new-instance v1, LKc/a$g$c;

    invoke-direct {v1, p0}, LKc/a$g$c;-><init>(LKc/a$g;)V

    iput-object v1, p0, LKc/a$g;->g:LKc/a$g$c;

    new-instance v1, LKc/a$g$c;

    invoke-direct {v1, p0}, LKc/a$g$c;-><init>(LKc/a$g;)V

    iput-object v1, p0, LKc/a$g;->h:LKc/a$g$c;

    new-instance v1, LKc/a$g$c;

    invoke-direct {v1, p0}, LKc/a$g$c;-><init>(LKc/a$g;)V

    iput-object v1, p0, LKc/a$g;->i:LKc/a$g$c;

    new-instance v1, LKc/a$g$c;

    invoke-direct {v1, p0}, LKc/a$g$c;-><init>(LKc/a$g;)V

    iput-object v1, p0, LKc/a$g;->j:LKc/a$g$c;

    new-instance v1, LKc/a$g$c;

    invoke-direct {v1, p0}, LKc/a$g$c;-><init>(LKc/a$g;)V

    iput-object v1, p0, LKc/a$g;->k:LKc/a$g$c;

    new-instance v1, Lfd/d;

    invoke-direct {v1}, Lfd/d;-><init>()V

    iput-object v1, p0, LKc/a$g;->l:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, LKc/a$g;->m:Ljava/util/List;

    iput-boolean v0, p0, LKc/a$g;->n:Z

    return-void
.end method

.method public static synthetic a(LKc/a$g;)V
    .locals 0

    invoke-virtual {p0}, LKc/a$g;->e()V

    return-void
.end method

.method public static synthetic b(LKc/a$g;F)F
    .locals 0

    iput p1, p0, LKc/a$g;->d:F

    return p1
.end method

.method public static synthetic c(LKc/a$g;F)F
    .locals 0

    iput p1, p0, LKc/a$g;->e:F

    return p1
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-object v0, p0, LKc/a$g;->h:LKc/a$g$c;

    iget-boolean v0, v0, LKc/a$g$c;->a:Z

    return v0
.end method

.method public B()Z
    .locals 1

    iget-object v0, p0, LKc/a$g;->h:LKc/a$g$c;

    iget-boolean v0, v0, LKc/a$g$c;->c:Z

    return v0
.end method

.method public C()Z
    .locals 1

    iget-object v0, p0, LKc/a$g;->i:LKc/a$g$c;

    iget-boolean v0, v0, LKc/a$g$c;->b:Z

    return v0
.end method

.method public D()Z
    .locals 1

    iget-object v0, p0, LKc/a$g;->i:LKc/a$g$c;

    iget-boolean v0, v0, LKc/a$g$c;->e:Z

    return v0
.end method

.method public E()Z
    .locals 1

    iget-object v0, p0, LKc/a$g;->i:LKc/a$g$c;

    iget-boolean v0, v0, LKc/a$g$c;->d:Z

    return v0
.end method

.method public F()Z
    .locals 1

    iget-object v0, p0, LKc/a$g;->i:LKc/a$g$c;

    iget-boolean v0, v0, LKc/a$g$c;->a:Z

    return v0
.end method

.method public G()Z
    .locals 1

    iget-object v0, p0, LKc/a$g;->i:LKc/a$g$c;

    iget-boolean v0, v0, LKc/a$g$c;->c:Z

    return v0
.end method

.method public H()Z
    .locals 1

    iget-object v0, p0, LKc/a$g;->g:LKc/a$g$c;

    iget-boolean v0, v0, LKc/a$g$c;->b:Z

    return v0
.end method

.method public I()Z
    .locals 1

    iget-object v0, p0, LKc/a$g;->g:LKc/a$g$c;

    iget-boolean v0, v0, LKc/a$g$c;->e:Z

    return v0
.end method

.method public J()Z
    .locals 1

    iget-object v0, p0, LKc/a$g;->g:LKc/a$g$c;

    iget-boolean v0, v0, LKc/a$g$c;->d:Z

    return v0
.end method

.method public K()Z
    .locals 1

    iget-object v0, p0, LKc/a$g;->g:LKc/a$g$c;

    iget-boolean v0, v0, LKc/a$g$c;->a:Z

    return v0
.end method

.method public L()Z
    .locals 1

    iget-object v0, p0, LKc/a$g;->g:LKc/a$g$c;

    iget-boolean v0, v0, LKc/a$g$c;->c:Z

    return v0
.end method

.method public M()V
    .locals 2

    invoke-static {}, LKc/a;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LKc/a$g;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, LKc/a$g;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, LKc/a$g;->Q(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public N()V
    .locals 5

    invoke-static {}, LKc/a;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    sget-object v1, LKc/a$g;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iput v1, p0, LKc/a$g;->a:I

    sget-object v1, LKc/a$g;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iput v1, p0, LKc/a$g;->b:I

    iget-object v1, p0, LKc/a$g;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    move v1, v2

    :goto_0
    iget-object v3, p0, LKc/a$g;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, LKc/a$g;->l:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    iget-object v4, v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v4}, Lyb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, LKc/a$g;->m:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, LKc/a$g;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_2
    iget-object v3, p0, LKc/a$g;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, LKc/a$g;->m:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    iget-object v4, p0, LKc/a$g;->l:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v1, p0, LKc/a$g;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_3
    invoke-virtual {p0, v2}, LKc/a$g;->Q(Z)V

    sget-object v1, LKc/a$g;->r:Lbd/e;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lbd/e;->c(F)F

    move-result v1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v1, v3

    iput v1, p0, LKc/a$g;->d:F

    sget-object v1, LKc/a$g;->s:Lbd/e;

    invoke-virtual {v1, v2}, Lbd/e;->c(F)F

    move-result v1

    mul-float/2addr v1, v3

    iput v1, p0, LKc/a$g;->e:F

    sget-object v1, LKc/a$g;->q:Lbd/e;

    invoke-virtual {v1, v2}, Lbd/e;->c(F)F

    move-result v1

    iput v1, p0, LKc/a$g;->f:F

    iget-object v1, p0, LKc/a$g;->h:LKc/a$g$c;

    sget-object v2, LKc/a$g;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, LKc/a$g$c;->f(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    iget-object v1, p0, LKc/a$g;->g:LKc/a$g$c;

    sget-object v2, LKc/a$g;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, LKc/a$g$c;->f(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    iget-object v1, p0, LKc/a$g;->i:LKc/a$g$c;

    sget-object v2, LKc/a$g;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, LKc/a$g$c;->f(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    iget-object v1, p0, LKc/a$g;->j:LKc/a$g$c;

    sget-object v2, LKc/a$g;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, LKc/a$g$c;->f(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    iget-object v1, p0, LKc/a$g;->k:LKc/a$g$c;

    sget-object v2, LKc/a$g;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, LKc/a$g$c;->f(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public O(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    invoke-static {}, LKc/a;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LKc/a$g;->l:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LKc/a$g;->Q(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public P(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    invoke-static {}, LKc/a;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LKc/a$g;->l:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LKc/a$g;->Q(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final Q(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forceRelease"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, LKc/a$g;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-boolean v1, p0, LKc/a$g;->n:Z

    if-ne v1, p1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lf8/c;->M()Z

    move-result v1

    if-nez v1, :cond_2

    iput-boolean v0, p0, LKc/a$g;->n:Z

    return-void

    :cond_2
    iput-boolean p1, p0, LKc/a$g;->n:Z

    new-instance v0, LKc/a$g$b;

    invoke-direct {v0, p0, p1}, LKc/a$g$b;-><init>(LKc/a$g;Z)V

    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delta"
        }
    .end annotation

    :cond_0
    sget-object v0, LKc/a$g;->q:Lbd/e;

    invoke-virtual {v0}, Lbd/e;->b()F

    move-result v1

    add-float v2, v1, p1

    invoke-virtual {v0, v1, v2}, Lbd/e;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final e()V
    .locals 5

    sget-object v0, LKc/a$g;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iput-boolean v3, p0, LKc/a$g;->c:Z

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_0
    move v0, v2

    :goto_0
    sget-object v1, LKc/a;->r:LKc/a$d;

    invoke-virtual {v1}, LKc/a$d;->e()I

    move-result v4

    if-ge v0, v4, :cond_2

    invoke-virtual {v1, v0}, LKc/a$d;->d(I)Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getSources()I

    move-result v1

    invoke-static {v1}, LKc/a;->d(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v3, p0, LKc/a$g;->c:Z

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, LKc/a$g;->c:Z

    return-void
.end method

.method public f()F
    .locals 2

    invoke-virtual {p0}, LKc/a$g;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LKc/a$g;->d:F

    neg-float v0, v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Mouse is not being captured, please call Input.mouse.requestMouseCapture(this); before using slide!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()F
    .locals 2

    invoke-virtual {p0}, LKc/a$g;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LKc/a$g;->e:F

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Mouse is not being captured, please call Input.mouse.requestMouseCapture(this); before using slide!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()F
    .locals 1

    iget v0, p0, LKc/a$g;->f:F

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, LKc/a$g;->a:I

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, LKc/a$g;->b:I

    return v0
.end method

.method public k()Z
    .locals 1

    invoke-virtual {p0}, LKc/a$g;->H()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, LKc/a$g;->K()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, LKc/a$g;->L()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, LKc/a$g;->j:LKc/a$g$c;

    iget-boolean v0, v0, LKc/a$g$c;->b:Z

    return v0
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, LKc/a$g;->j:LKc/a$g$c;

    iget-boolean v0, v0, LKc/a$g$c;->e:Z

    return v0
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, LKc/a$g;->j:LKc/a$g$c;

    iget-boolean v0, v0, LKc/a$g$c;->d:Z

    return v0
.end method

.method public o()Z
    .locals 1

    iget-object v0, p0, LKc/a$g;->j:LKc/a$g$c;

    iget-boolean v0, v0, LKc/a$g$c;->a:Z

    return v0
.end method

.method public p()Z
    .locals 1

    iget-object v0, p0, LKc/a$g;->j:LKc/a$g$c;

    iget-boolean v0, v0, LKc/a$g$c;->c:Z

    return v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, LKc/a$g;->c:Z

    return v0
.end method

.method public r()Z
    .locals 2

    invoke-static {}, LKc/a;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LKc/a$g;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, LKc/a$g;->k:LKc/a$g$c;

    iget-boolean v0, v0, LKc/a$g$c;->b:Z

    return v0
.end method

.method public t()Z
    .locals 1

    iget-object v0, p0, LKc/a$g;->k:LKc/a$g$c;

    iget-boolean v0, v0, LKc/a$g$c;->e:Z

    return v0
.end method

.method public u()Z
    .locals 1

    iget-object v0, p0, LKc/a$g;->k:LKc/a$g$c;

    iget-boolean v0, v0, LKc/a$g$c;->d:Z

    return v0
.end method

.method public v()Z
    .locals 1

    iget-object v0, p0, LKc/a$g;->k:LKc/a$g$c;

    iget-boolean v0, v0, LKc/a$g$c;->a:Z

    return v0
.end method

.method public w()Z
    .locals 1

    iget-object v0, p0, LKc/a$g;->k:LKc/a$g$c;

    iget-boolean v0, v0, LKc/a$g$c;->c:Z

    return v0
.end method

.method public x()Z
    .locals 1

    iget-object v0, p0, LKc/a$g;->h:LKc/a$g$c;

    iget-boolean v0, v0, LKc/a$g$c;->b:Z

    return v0
.end method

.method public y()Z
    .locals 1

    iget-object v0, p0, LKc/a$g;->h:LKc/a$g$c;

    iget-boolean v0, v0, LKc/a$g$c;->e:Z

    return v0
.end method

.method public z()Z
    .locals 1

    iget-object v0, p0, LKc/a$g;->h:LKc/a$g$c;

    iget-boolean v0, v0, LKc/a$g$c;->d:Z

    return v0
.end method
