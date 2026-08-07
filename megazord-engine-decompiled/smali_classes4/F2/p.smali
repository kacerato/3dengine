.class public final LF2/p;
.super LF2/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LF2/p$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LF2/q<",
        "LF2/v;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:I = 0x0

.field public static final h:I = 0x1

.field public static final i:I = 0x2

.field public static final j:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field

.field public static final k:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field


# instance fields
.field public final e:I

.field public final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, LR1/a$c;->Ja:I

    sput v0, LF2/p;->j:I

    sget v0, LR1/a$c;->Ta:I

    sput v0, LF2/p;->k:I

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    invoke-static {p1, p2}, LF2/p;->m(IZ)LF2/v;

    move-result-object v0

    invoke-static {}, LF2/p;->n()LF2/v;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LF2/q;-><init>(LF2/v;LF2/v;)V

    iput p1, p0, LF2/p;->e:I

    iput-boolean p2, p0, LF2/p;->f:Z

    return-void
.end method

.method public static m(IZ)LF2/v;
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    new-instance p0, LF2/r;

    invoke-direct {p0, p1}, LF2/r;-><init>(Z)V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid axis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, LF2/s;

    if-eqz p1, :cond_2

    const/16 p1, 0x50

    goto :goto_0

    :cond_2
    const/16 p1, 0x30

    :goto_0
    invoke-direct {p0, p1}, LF2/s;-><init>(I)V

    return-object p0

    :cond_3
    new-instance p0, LF2/s;

    if-eqz p1, :cond_4

    const p1, 0x800005

    goto :goto_1

    :cond_4
    const p1, 0x800003

    :goto_1
    invoke-direct {p0, p1}, LF2/s;-><init>(I)V

    return-object p0
.end method

.method private static n()LF2/v;
    .locals 1

    new-instance v0, LF2/e;

    invoke-direct {v0}, LF2/e;-><init>()V

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

    sget p1, LF2/p;->j:I

    return p1
.end method

.method public g(Z)I
    .locals 0
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation

    sget p1, LF2/p;->k:I

    return p1
.end method

.method public bridge synthetic h()LF2/v;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, LF2/q;->h()LF2/v;

    move-result-object v0

    return-object v0
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

.method public o()I
    .locals 1

    iget v0, p0, LF2/p;->e:I

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

.method public p()Z
    .locals 1

    iget-boolean v0, p0, LF2/p;->f:Z

    return v0
.end method
