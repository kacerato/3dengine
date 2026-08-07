.class public LD0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LD0/c$a;,
        LD0/c$c;,
        LD0/c$b;,
        LD0/c$e;,
        LD0/c$f;,
        LD0/c$d;
    }
.end annotation


# static fields
.field public static final i:Ljava/lang/String; = "UiHelper"

.field public static final j:Z = false


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/Object;

.field public d:LD0/c$c;

.field public e:Z

.field public f:LD0/c$b;

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, LD0/c$a;->CHECK:LD0/c$a;

    invoke-direct {p0, v0}, LD0/c;-><init>(LD0/c$a;)V

    return-void
.end method

.method public constructor <init>(LD0/c$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, LD0/c;->g:Z

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, LD0/c;->h:Z

    return-void
.end method

.method public static bridge synthetic a(LD0/c;)I
    .locals 0

    iget p0, p0, LD0/c;->b:I

    return p0
.end method

.method public static bridge synthetic b(LD0/c;)I
    .locals 0

    iget p0, p0, LD0/c;->a:I

    return p0
.end method

.method public static bridge synthetic c(LD0/c;)LD0/c$c;
    .locals 0

    iget-object p0, p0, LD0/c;->d:LD0/c$c;

    return-object p0
.end method

.method public static bridge synthetic d(LD0/c;Landroid/view/Surface;)V
    .locals 0

    invoke-virtual {p0, p1}, LD0/c;->j(Landroid/view/Surface;)V

    return-void
.end method

.method public static bridge synthetic e(LD0/c;)V
    .locals 0

    invoke-virtual {p0}, LD0/c;->k()V

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, LD0/c;->c:Ljava/lang/Object;

    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, LD0/c;->f:LD0/c$b;

    if-eqz v0, :cond_1

    invoke-interface {v0}, LD0/c$b;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, LD0/c;->f:LD0/c$b;

    :cond_1
    invoke-virtual {p0}, LD0/c;->k()V

    :cond_2
    iput-object p1, p0, LD0/c;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public g(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, LD0/c;->f(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LD0/c;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x3

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    new-instance v0, LD0/c$d;

    invoke-direct {v0, p0, p1}, LD0/c$d;-><init>(LD0/c;Landroid/view/SurfaceHolder;)V

    iput-object v0, p0, LD0/c;->f:LD0/c$b;

    :cond_1
    return-void
.end method

.method public h(Landroid/view/SurfaceView;)V
    .locals 2
    .param p1    # Landroid/view/SurfaceView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, LD0/c;->f(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, LD0/c;->r()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, LD0/c;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-virtual {p0}, LD0/c;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    goto :goto_1

    :cond_1
    const/4 v1, -0x3

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    new-instance v0, LD0/c$e;

    invoke-direct {v0, p0, p1}, LD0/c$e;-><init>(LD0/c;Landroid/view/SurfaceView;)V

    iput-object v0, p0, LD0/c;->f:LD0/c$b;

    :cond_2
    return-void
.end method

.method public i(Landroid/view/TextureView;)V
    .locals 1
    .param p1    # Landroid/view/TextureView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, LD0/c;->f(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LD0/c;->r()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setOpaque(Z)V

    new-instance v0, LD0/c$f;

    invoke-direct {v0, p0, p1}, LD0/c$f;-><init>(LD0/c;Landroid/view/TextureView;)V

    iput-object v0, p0, LD0/c;->f:LD0/c$b;

    :cond_0
    return-void
.end method

.method public final j(Landroid/view/Surface;)V
    .locals 1
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, LD0/c;->d:LD0/c$c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, LD0/c$c;->a(Landroid/view/Surface;)V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, LD0/c;->e:Z

    return-void
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, LD0/c;->d:LD0/c$c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LD0/c$c;->c()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, LD0/c;->e:Z

    return-void
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, LD0/c;->f:LD0/c$b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LD0/c$b;->a()V

    :cond_0
    invoke-virtual {p0}, LD0/c;->k()V

    const/4 v0, 0x0

    iput-object v0, p0, LD0/c;->c:Ljava/lang/Object;

    iput-object v0, p0, LD0/c;->f:LD0/c$b;

    return-void
.end method

.method public m()I
    .locals 1

    iget v0, p0, LD0/c;->b:I

    return v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, LD0/c;->a:I

    return v0
.end method

.method public o()LD0/c$c;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LD0/c;->d:LD0/c$c;

    return-object v0
.end method

.method public p()J
    .locals 2

    invoke-virtual {p0}, LD0/c;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    :goto_0
    return-wide v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, LD0/c;->h:Z

    return v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, LD0/c;->g:Z

    return v0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, LD0/c;->e:Z

    return v0
.end method

.method public t(II)V
    .locals 1

    iput p1, p0, LD0/c;->a:I

    iput p2, p0, LD0/c;->b:I

    iget-object v0, p0, LD0/c;->f:LD0/c$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, LD0/c$b;->b(II)V

    :cond_0
    return-void
.end method

.method public u(Z)V
    .locals 0

    iput-boolean p1, p0, LD0/c;->h:Z

    return-void
.end method

.method public v(Z)V
    .locals 0

    iput-boolean p1, p0, LD0/c;->g:Z

    return-void
.end method

.method public w(LD0/c$c;)V
    .locals 0
    .param p1    # LD0/c$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, LD0/c;->d:LD0/c$c;

    return-void
.end method
