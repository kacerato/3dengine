.class public final LG2/p;
.super LG2/r;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LG2/r<",
        "LG2/e;",
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

    sput v0, LG2/p;->f:I

    sget v0, LR1/a$c;->Ta:I

    sput v0, LG2/p;->g:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-static {}, LG2/p;->m()LG2/e;

    move-result-object v0

    invoke-static {}, LG2/p;->n()LG2/w;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LG2/r;-><init>(LG2/w;LG2/w;)V

    return-void
.end method

.method public static m()LG2/e;
    .locals 1

    new-instance v0, LG2/e;

    invoke-direct {v0}, LG2/e;-><init>()V

    return-object v0
.end method

.method private static n()LG2/w;
    .locals 2

    new-instance v0, LG2/s;

    invoke-direct {v0}, LG2/s;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LG2/s;->o(Z)V

    const v1, 0x3f6b851f    # 0.92f

    invoke-virtual {v0, v1}, LG2/s;->l(F)V

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

.method public f(Z)I
    .locals 0
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation

    sget p1, LG2/p;->f:I

    return p1
.end method

.method public g(Z)I
    .locals 0
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation

    sget p1, LG2/p;->g:I

    return p1
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
