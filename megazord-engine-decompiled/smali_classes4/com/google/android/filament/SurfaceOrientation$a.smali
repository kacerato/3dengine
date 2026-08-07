.class public Lcom/google/android/filament/SurfaceOrientation$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/SurfaceOrientation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/nio/Buffer;

.field public d:I

.field public e:Ljava/nio/Buffer;

.field public f:I

.field public g:Ljava/nio/Buffer;

.field public h:I

.field public i:Ljava/nio/Buffer;

.field public j:I

.field public k:Ljava/nio/Buffer;

.field public l:Ljava/nio/Buffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/filament/SurfaceOrientation;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/google/android/filament/SurfaceOrientation;->j()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/filament/SurfaceOrientation$a;->a:I

    invoke-static {v0, v1, v2}, Lcom/google/android/filament/SurfaceOrientation;->i(JI)V

    iget v2, p0, Lcom/google/android/filament/SurfaceOrientation$a;->b:I

    invoke-static {v0, v1, v2}, Lcom/google/android/filament/SurfaceOrientation;->e(JI)V

    iget-object v2, p0, Lcom/google/android/filament/SurfaceOrientation$a;->c:Ljava/nio/Buffer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    iget v4, p0, Lcom/google/android/filament/SurfaceOrientation$a;->d:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/filament/SurfaceOrientation;->b(JLjava/nio/Buffer;II)V

    :cond_0
    iget-object v2, p0, Lcom/google/android/filament/SurfaceOrientation$a;->e:Ljava/nio/Buffer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    iget v4, p0, Lcom/google/android/filament/SurfaceOrientation$a;->f:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/filament/SurfaceOrientation;->d(JLjava/nio/Buffer;II)V

    :cond_1
    iget-object v2, p0, Lcom/google/android/filament/SurfaceOrientation$a;->g:Ljava/nio/Buffer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    iget v4, p0, Lcom/google/android/filament/SurfaceOrientation$a;->h:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/filament/SurfaceOrientation;->h(JLjava/nio/Buffer;II)V

    :cond_2
    iget-object v2, p0, Lcom/google/android/filament/SurfaceOrientation$a;->i:Ljava/nio/Buffer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    iget v4, p0, Lcom/google/android/filament/SurfaceOrientation$a;->j:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/filament/SurfaceOrientation;->c(JLjava/nio/Buffer;II)V

    :cond_3
    iget-object v2, p0, Lcom/google/android/filament/SurfaceOrientation$a;->k:Ljava/nio/Buffer;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/SurfaceOrientation;->f(JLjava/nio/Buffer;I)V

    :cond_4
    iget-object v2, p0, Lcom/google/android/filament/SurfaceOrientation$a;->l:Ljava/nio/Buffer;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/SurfaceOrientation;->g(JLjava/nio/Buffer;I)V

    :cond_5
    invoke-static {v0, v1}, Lcom/google/android/filament/SurfaceOrientation;->a(J)J

    move-result-wide v2

    invoke-static {v0, v1}, Lcom/google/android/filament/SurfaceOrientation;->k(J)V

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/google/android/filament/SurfaceOrientation;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/filament/SurfaceOrientation;-><init>(JLcom/google/android/filament/r;)V

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not create SurfaceOrientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/nio/Buffer;)Lcom/google/android/filament/SurfaceOrientation$a;
    .locals 0
    .param p1    # Ljava/nio/Buffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/filament/SurfaceOrientation$a;->c:Ljava/nio/Buffer;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/filament/SurfaceOrientation$a;->d:I

    return-object p0
.end method

.method public c(Ljava/nio/Buffer;)Lcom/google/android/filament/SurfaceOrientation$a;
    .locals 0
    .param p1    # Ljava/nio/Buffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/filament/SurfaceOrientation$a;->i:Ljava/nio/Buffer;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/filament/SurfaceOrientation$a;->j:I

    return-object p0
.end method

.method public d(Ljava/nio/Buffer;)Lcom/google/android/filament/SurfaceOrientation$a;
    .locals 0
    .param p1    # Ljava/nio/Buffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/filament/SurfaceOrientation$a;->e:Ljava/nio/Buffer;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/filament/SurfaceOrientation$a;->f:I

    return-object p0
.end method

.method public e(I)Lcom/google/android/filament/SurfaceOrientation$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/google/android/filament/SurfaceOrientation$a;->b:I

    return-object p0
.end method

.method public f(Ljava/nio/Buffer;)Lcom/google/android/filament/SurfaceOrientation$a;
    .locals 0
    .param p1    # Ljava/nio/Buffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/filament/SurfaceOrientation$a;->k:Ljava/nio/Buffer;

    return-object p0
.end method

.method public g(Ljava/nio/Buffer;)Lcom/google/android/filament/SurfaceOrientation$a;
    .locals 0
    .param p1    # Ljava/nio/Buffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/filament/SurfaceOrientation$a;->l:Ljava/nio/Buffer;

    return-object p0
.end method

.method public h(Ljava/nio/Buffer;)Lcom/google/android/filament/SurfaceOrientation$a;
    .locals 0
    .param p1    # Ljava/nio/Buffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/filament/SurfaceOrientation$a;->g:Ljava/nio/Buffer;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/filament/SurfaceOrientation$a;->h:I

    return-object p0
.end method

.method public i(I)Lcom/google/android/filament/SurfaceOrientation$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/google/android/filament/SurfaceOrientation$a;->a:I

    return-object p0
.end method
