.class public final Lde/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LWd/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/a$a;
    }
.end annotation


# static fields
.field public static final j:J = 0x12cL

.field public static final k:J = 0xbb8L

.field public static final l:Lde/a$a;


# instance fields
.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Ljava/lang/Runnable;

.field public f:Z

.field public g:J

.field public h:J

.field public final i:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lde/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lde/a$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lde/a;->l:Lde/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "targetView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lde/a;->i:Landroid/view/View;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lde/a;->d:Z

    new-instance p1, Lde/a$c;

    invoke-direct {p1, p0}, Lde/a$c;-><init>(Lde/a;)V

    iput-object p1, p0, Lde/a;->e:Ljava/lang/Runnable;

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lde/a;->g:J

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lde/a;->h:J

    return-void
.end method

.method public static final synthetic a(Lde/a;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lde/a;->b(F)V

    return-void
.end method

.method private final m(LVd/a$d;)V
    .locals 3

    sget-object v0, Lde/b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lde/a;->b:Z

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lde/a;->b:Z

    goto :goto_0

    :cond_2
    iput-boolean v0, p0, Lde/a;->b:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public A(LVd/b;F)V
    .locals 0
    .param p1    # LVd/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "youTubePlayer"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final b(F)V
    .locals 4

    iget-boolean v0, p0, Lde/a;->c:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lde/a;->f:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lde/a;->d:Z

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lde/a;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lde/a;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lde/a;->e:Ljava/lang/Runnable;

    iget-wide v2, p0, Lde/a;->h:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lde/a;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lde/a;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lde/a;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p0, Lde/a;->g:J

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lde/a$b;

    invoke-direct {v1, p0, p1}, Lde/a$b;-><init>(Lde/a;F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_4
    :goto_2
    return-void
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lde/a;->g:J

    return-wide v0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lde/a;->h:J

    return-wide v0
.end method

.method public final e()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lde/a;->i:Landroid/view/View;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lde/a;->f:Z

    return v0
.end method

.method public final g(J)V
    .locals 0

    iput-wide p1, p0, Lde/a;->g:J

    return-void
.end method

.method public final h(Z)V
    .locals 0

    iput-boolean p1, p0, Lde/a;->f:Z

    return-void
.end method

.method public i(LVd/b;)V
    .locals 1
    .param p1    # LVd/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "youTubePlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public j(LVd/b;LVd/a$a;)V
    .locals 1
    .param p1    # LVd/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LVd/a$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "youTubePlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "playbackQuality"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final k(J)V
    .locals 0

    iput-wide p1, p0, Lde/a;->h:J

    return-void
.end method

.method public final l()V
    .locals 1

    iget-boolean v0, p0, Lde/a;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, v0}, Lde/a;->b(F)V

    return-void
.end method

.method public o(LVd/b;Ljava/lang/String;)V
    .locals 1
    .param p1    # LVd/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "youTubePlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoId"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public q(LVd/b;LVd/a$b;)V
    .locals 1
    .param p1    # LVd/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LVd/a$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "youTubePlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "playbackRate"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public r(LVd/b;F)V
    .locals 0
    .param p1    # LVd/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "youTubePlayer"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public t(LVd/b;LVd/a$c;)V
    .locals 1
    .param p1    # LVd/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LVd/a$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "youTubePlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "error"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public u(LVd/b;)V
    .locals 1
    .param p1    # LVd/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "youTubePlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public v(LVd/b;LVd/a$d;)V
    .locals 2
    .param p1    # LVd/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LVd/a$d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "youTubePlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "state"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lde/a;->m(LVd/a$d;)V

    sget-object p1, Lde/b;->b:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v0}, Lde/a;->b(F)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v0}, Lde/a;->b(F)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v0}, Lde/a;->b(F)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lde/a;->c:Z

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lde/a;->c:Z

    sget-object p1, LVd/a$d;->PLAYING:LVd/a$d;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lde/a;->i:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lde/a;->e:Ljava/lang/Runnable;

    iget-wide v0, p0, Lde/a;->h:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lde/a;->i:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lde/a;->e:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public y(LVd/b;F)V
    .locals 0
    .param p1    # LVd/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "youTubePlayer"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
