.class public final LYc/e;
.super Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;
.source "SourceFile"

# interfaces
.implements Lad/b$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LYc/e$b;,
        LYc/e$a;
    }
.end annotation


# static fields
.field public static final L:I = 0x1fffffff

.field public static final M:J = 0x2L


# instance fields
.field public final C:LYc/e$a;

.field public final D:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

.field public final E:I

.field public final F:I

.field public G:I

.field public H:I

.field public I:Z

.field public J:LYc/e$b;

.field public K:LYc/e$b;


# direct methods
.method public constructor <init>(LYc/e$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LYc/e;->I:Z

    sget-object v1, LYc/e$b;->PLAYING:LYc/e$b;

    iput-object v1, p0, LYc/e;->K:LYc/e$b;

    if-eqz p1, :cond_0

    iput-object p1, p0, LYc/e;->C:LYc/e$a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->getSampleRate()I

    move-result p1

    int-to-float p1, p1

    const v1, 0x3d23d70a    # 0.04f

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, LYc/e;->E:I

    const/4 v0, 0x2

    const/4 v1, 0x6

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/2addr v0, p1

    iput v0, p0, LYc/e;->F:I

    new-instance v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-direct {v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;-><init>(I)V

    iput-object v1, p0, LYc/e;->D:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    const p1, 0x1fffffff

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->g0(II)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->x0(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "callback can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final A0(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millis"
        }
    .end annotation

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public a()V
    .locals 5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->h0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->X()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, LYc/e;->J:LYc/e$b;

    if-eqz v2, :cond_3

    iget v1, p0, LYc/e;->G:I

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, LYc/e;->J:LYc/e$b;

    sget-object v0, LYc/e$b;->PAUSED:LYc/e$b;

    if-ne v2, v0, :cond_1

    sget-object v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Paused:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    invoke-super {p0, v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->n0(Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Stopped:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    invoke-super {p0, v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->n0(Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;)V

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, LYc/e;->A0(J)V

    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->c0()Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    move-result-object v2

    sget-object v3, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Playing:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    if-eq v2, v3, :cond_4

    return-void

    :cond_4
    iget-boolean v2, p0, LYc/e;->I:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->q0(I)V

    iput v0, p0, LYc/e;->G:I

    iput-boolean v1, p0, LYc/e;->I:Z

    iget v2, p0, LYc/e;->F:I

    add-int v3, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->x0(I)V

    :cond_5
    iget v2, p0, LYc/e;->G:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, LYc/e;->D:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->V(S)V

    iget-object v1, p0, LYc/e;->C:LYc/e$a;

    iget-object v2, p0, LYc/e;->D:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->getSampleRate()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-interface {v1, v2, v0, v3}, LYc/e$a;->fillAudio(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;IF)LYc/e$b;

    move-result-object v1

    if-nez v1, :cond_6

    sget-object v1, LYc/e$b;->STOPPED:LYc/e$b;

    :cond_6
    iget-object v2, p0, LYc/e;->D:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    iget v3, p0, LYc/e;->E:I

    invoke-virtual {p0, v2, v0, v3}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->r0(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;II)V

    iget v2, p0, LYc/e;->E:I

    add-int/2addr v0, v2

    iput v0, p0, LYc/e;->G:I

    iput-object v1, p0, LYc/e;->K:LYc/e$b;

    sget-object v2, LYc/e$b;->PLAYING:LYc/e$b;

    if-ne v1, v2, :cond_7

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->x0(I)V

    return-void

    :cond_7
    iput-object v1, p0, LYc/e;->J:LYc/e$b;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->x0(I)V

    return-void
.end method

.method public b()Z
    .locals 6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->h0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->X()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->c0()Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    move-result-object v2

    sget-object v3, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Playing:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    iget v2, p0, LYc/e;->E:I

    add-int/2addr v2, v0

    iget v5, p0, LYc/e;->H:I

    if-ge v2, v5, :cond_1

    iput-boolean v4, p0, LYc/e;->I:Z

    :cond_1
    iput v0, p0, LYc/e;->H:I

    iget-object v2, p0, LYc/e;->J:LYc/e$b;

    if-eqz v2, :cond_2

    return v4

    :cond_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->c0()Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    move-result-object v2

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-boolean v2, p0, LYc/e;->I:Z

    if-eqz v2, :cond_4

    return v4

    :cond_4
    iget v2, p0, LYc/e;->G:I

    sub-int/2addr v2, v0

    iget v0, p0, LYc/e;->E:I

    mul-int/lit8 v0, v0, 0x3

    if-gt v2, v0, :cond_5

    move v1, v4

    :cond_5
    return v1
.end method

.method public destroy()V
    .locals 2

    invoke-static {p0}, Lad/b;->k(Lad/b$b;)V

    :try_start_0
    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LYc/e;->D:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0}, LPc/a;->v()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LYc/e;->D:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->destroyImmediate()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, LYc/e;->D:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v1}, LPc/a;->v()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, LYc/e;->D:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->destroyImmediate()V

    :cond_1
    throw v0
.end method

.method public j0()V
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->c0()Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Playing:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, LYc/e;->J:LYc/e$b;

    :cond_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;->Stopped:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter$c;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, LYc/e;->I:Z

    const/4 v0, 0x0

    iput v0, p0, LYc/e;->G:I

    iput v0, p0, LYc/e;->H:I

    sget-object v0, LYc/e$b;->STOPPED:LYc/e$b;

    iput-object v0, p0, LYc/e;->K:LYc/e$b;

    iget v0, p0, LYc/e;->F:I

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->x0(I)V

    :cond_1
    invoke-virtual {p0}, LYc/e;->u0()V

    return-void
.end method

.method public l0(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "second"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->getSampleRate()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v0, 0x0

    iput-object v0, p0, LYc/e;->J:LYc/e$b;

    sget-object v0, LYc/e$b;->PLAYING:LYc/e$b;

    iput-object v0, p0, LYc/e;->K:LYc/e$b;

    const/4 v0, 0x1

    iput-boolean v0, p0, LYc/e;->I:Z

    iput p1, p0, LYc/e;->G:I

    iput p1, p0, LYc/e;->H:I

    iget v0, p0, LYc/e;->F:I

    add-int v1, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->x0(I)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->v0(I)V

    invoke-virtual {p0}, LYc/e;->u0()V

    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msec"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    invoke-virtual {p0, p1}, LYc/e;->l0(F)V

    return-void
.end method

.method public u0()V
    .locals 1

    invoke-virtual {p0}, LYc/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lad/b;->m(Lad/b$b;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lad/b;->k(Lad/b$b;)V

    :goto_0
    return-void
.end method

.method public z0()LYc/e$b;
    .locals 1

    iget-object v0, p0, LYc/e;->K:LYc/e$b;

    return-object v0
.end method
