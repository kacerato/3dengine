.class public abstract LU/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LU/f$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LU/p<",
        "TZ;>;"
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/String; = "CustomViewTarget"

.field public static final h:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field


# instance fields
.field public final b:LU/f$b;

.field public final c:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public d:Landroid/view/View$OnAttachStateChangeListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public e:Z

.field public f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/bumptech/glide/i$e;->l:I

    sput v0, LU/f;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LX/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, LU/f;->c:Landroid/view/View;

    new-instance v0, LU/f$b;

    invoke-direct {v0, p1}, LU/f$b;-><init>(Landroid/view/View;)V

    iput-object v0, p0, LU/f;->b:LU/f$b;

    return-void
.end method

.method private f()Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LU/f;->c:Landroid/view/View;

    sget v1, LU/f;->h:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, LU/f;->d:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, LU/f;->f:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, LU/f;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LU/f;->f:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, LU/f;->d:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, LU/f;->f:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, LU/f;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, LU/f;->f:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private s(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, LU/f;->c:Landroid/view/View;

    sget v1, LU/f;->h:I

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public final d()LU/f;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LU/f<",
            "TT;TZ;>;"
        }
    .end annotation

    iget-object v0, p0, LU/f;->d:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, LU/f$a;

    invoke-direct {v0, p0}, LU/f$a;-><init>(LU/f;)V

    iput-object v0, p0, LU/f;->d:Landroid/view/View$OnAttachStateChangeListener;

    invoke-direct {p0}, LU/f;->m()V

    return-object p0
.end method

.method public final e(LT/d;)V
    .locals 0
    .param p1    # LT/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, LU/f;->s(Ljava/lang/Object;)V

    return-void
.end method

.method public final g()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, LU/f;->c:Landroid/view/View;

    return-object v0
.end method

.method public final getRequest()LT/d;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, LU/f;->f()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, LT/d;

    if-eqz v1, :cond_0

    check-cast v0, LT/d;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must not pass non-R.id ids to setTag(id)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final h(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, LU/f;->m()V

    invoke-virtual {p0, p1}, LU/f;->p(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final i(LU/o;)V
    .locals 1
    .param p1    # LU/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, LU/f;->b:LU/f$b;

    invoke-virtual {v0, p1}, LU/f$b;->k(LU/o;)V

    return-void
.end method

.method public final j(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, LU/f;->b:LU/f$b;

    invoke-virtual {v0}, LU/f$b;->b()V

    invoke-virtual {p0, p1}, LU/f;->o(Landroid/graphics/drawable/Drawable;)V

    iget-boolean p1, p0, LU/f;->e:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, LU/f;->n()V

    :cond_0
    return-void
.end method

.method public final k(LU/o;)V
    .locals 1
    .param p1    # LU/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, LU/f;->b:LU/f$b;

    invoke-virtual {v0, p1}, LU/f$b;->d(LU/o;)V

    return-void
.end method

.method public abstract o(Landroid/graphics/drawable/Drawable;)V
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public p(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public final q()V
    .locals 2

    invoke-virtual {p0}, LU/f;->getRequest()LT/d;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, LU/f;->e:Z

    invoke-interface {v0}, LT/d;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LU/f;->e:Z

    :cond_0
    return-void
.end method

.method public final r()V
    .locals 2

    invoke-virtual {p0}, LU/f;->getRequest()LT/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, LT/d;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LT/d;->i()V

    :cond_0
    return-void
.end method

.method public final t(I)LU/f;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LU/f<",
            "TT;TZ;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Target for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LU/f;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()LU/f;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LU/f<",
            "TT;TZ;>;"
        }
    .end annotation

    iget-object v0, p0, LU/f;->b:LU/f$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, LU/f$b;->c:Z

    return-object p0
.end method
