.class public final LF2/o;
.super LF2/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LF2/q<",
        "LF2/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:F = 0.92f

.field public static final f:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field

.field public static final g:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, LR1/a$c;->Ja:I

    sput v0, LF2/o;->f:I

    sget v0, LR1/a$c;->Ta:I

    sput v0, LF2/o;->g:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-static {}, LF2/o;->m()LF2/e;

    move-result-object v0

    invoke-static {}, LF2/o;->n()LF2/v;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LF2/q;-><init>(LF2/v;LF2/v;)V

    return-void
.end method

.method public static m()LF2/e;
    .locals 1

    new-instance v0, LF2/e;

    invoke-direct {v0}, LF2/e;-><init>()V

    return-object v0
.end method

.method private static n()LF2/v;
    .locals 2

    new-instance v0, LF2/r;

    invoke-direct {v0}, LF2/r;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LF2/r;->o(Z)V

    const v1, 0x3f6b851f    # 0.92f

    invoke-virtual {v0, v1}, LF2/r;->l(F)V

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

.method public f(Z)I
    .locals 0
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation

    sget p1, LF2/o;->f:I

    return p1
.end method

.method public g(Z)I
    .locals 0
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation

    sget p1, LF2/o;->g:I

    return p1
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
