.class public final LF2/m;
.super LF2/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LF2/q<",
        "LF2/r;",
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

    invoke-static {p1}, LF2/m;->m(Z)LF2/r;

    move-result-object v0

    invoke-static {}, LF2/m;->n()LF2/v;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LF2/q;-><init>(LF2/v;LF2/v;)V

    iput-boolean p1, p0, LF2/m;->e:Z

    return-void
.end method

.method public static m(Z)LF2/r;
    .locals 1

    new-instance v0, LF2/r;

    invoke-direct {v0, p0}, LF2/r;-><init>(Z)V

    const p0, 0x3f59999a    # 0.85f

    invoke-virtual {v0, p0}, LF2/r;->m(F)V

    invoke-virtual {v0, p0}, LF2/r;->l(F)V

    return-object v0
.end method

.method public static n()LF2/v;
    .locals 1

    new-instance v0, LF2/d;

    invoke-direct {v0}, LF2/d;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(LF2/v;)V
    .locals 0
    .param p1    # LF2/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, LF2/q;->a(LF2/v;)V

    return-void
.end method

.method public bridge synthetic c()V
    .locals 0

    invoke-super {p0}, LF2/q;->c()V

    return-void
.end method

.method public bridge synthetic i()LF2/v;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-super {p0}, LF2/q;->i()LF2/v;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k(LF2/v;)Z
    .locals 0
    .param p1    # LF2/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, LF2/q;->k(LF2/v;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic l(LF2/v;)V
    .locals 0
    .param p1    # LF2/v;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, LF2/q;->l(LF2/v;)V

    return-void
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, LF2/m;->e:Z

    return v0
.end method

.method public bridge synthetic onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, LF2/q;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, LF2/q;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method
