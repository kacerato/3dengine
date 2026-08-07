.class public final LG2/n;
.super LG2/r;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LG2/r<",
        "LG2/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:F = 0.85f


# instance fields
.field public final e:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    invoke-static {p1}, LG2/n;->m(Z)LG2/s;

    move-result-object v0

    invoke-static {}, LG2/n;->n()LG2/w;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LG2/r;-><init>(LG2/w;LG2/w;)V

    iput-boolean p1, p0, LG2/n;->e:Z

    return-void
.end method

.method public static m(Z)LG2/s;
    .locals 1

    new-instance v0, LG2/s;

    invoke-direct {v0, p0}, LG2/s;-><init>(Z)V

    const p0, 0x3f59999a    # 0.85f

    invoke-virtual {v0, p0}, LG2/s;->m(F)V

    invoke-virtual {v0, p0}, LG2/s;->l(F)V

    return-object v0
.end method

.method public static n()LG2/w;
    .locals 1

    new-instance v0, LG2/d;

    invoke-direct {v0}, LG2/d;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(LG2/w;)V
    .locals 0
    .param p1    # LG2/w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, LG2/r;->a(LG2/w;)V

    return-void
.end method

.method public bridge synthetic c()V
    .locals 0

    invoke-super {p0}, LG2/r;->c()V

    return-void
.end method

.method public bridge synthetic i()LG2/w;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-super {p0}, LG2/r;->i()LG2/w;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k(LG2/w;)Z
    .locals 0
    .param p1    # LG2/w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, LG2/r;->k(LG2/w;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic l(LG2/w;)V
    .locals 0
    .param p1    # LG2/w;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, LG2/r;->l(LG2/w;)V

    return-void
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, LG2/n;->e:Z

    return v0
.end method

.method public bridge synthetic onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, LG2/r;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, LG2/r;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method
