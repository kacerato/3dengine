.class public Lcom/google/android/filament/SwapChain;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:J


# direct methods
.method public constructor <init>(JLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/filament/SwapChain;->b:J

    iput-object p3, p0, Lcom/google/android/filament/SwapChain;->a:Ljava/lang/Object;

    return-void
.end method

.method public static e(Lcom/google/android/filament/Engine;I)Z
    .locals 2
    .param p0    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/SwapChain;->nIsMSAASwapChainSupported(JI)Z

    move-result p0

    return p0
.end method

.method public static f(Lcom/google/android/filament/Engine;)Z
    .locals 2
    .param p0    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/SwapChain;->nIsProtectedContentSupported(J)Z

    move-result p0

    return p0
.end method

.method public static g(Lcom/google/android/filament/Engine;)Z
    .locals 2
    .param p0    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/SwapChain;->nIsSRGBSwapChainSupported(J)Z

    move-result p0

    return p0
.end method

.method private static native nIsFrameScheduledCallbackSet(J)Z
.end method

.method private static native nIsMSAASwapChainSupported(JI)Z
.end method

.method private static native nIsProtectedContentSupported(J)Z
.end method

.method private static native nIsSRGBSwapChainSupported(J)Z
.end method

.method private static native nSetFrameCompletedCallback(JLjava/lang/Object;Ljava/lang/Runnable;)V
.end method

.method private static native nSetFrameScheduledCallback(JLjava/lang/Object;Ljava/lang/Runnable;)V
.end method


# virtual methods
.method public a()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/SwapChain;->b:J

    return-void
.end method

.method public b()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/SwapChain;->b:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling method on destroyed SwapChain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/filament/SwapChain;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public d()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/SwapChain;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/SwapChain;->nIsFrameScheduledCallbackSet(J)Z

    move-result v0

    return v0
.end method

.method public h(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/SwapChain;->b()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/SwapChain;->nSetFrameCompletedCallback(JLjava/lang/Object;Ljava/lang/Runnable;)V

    return-void
.end method

.method public i(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/SwapChain;->b()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/SwapChain;->nSetFrameScheduledCallback(JLjava/lang/Object;Ljava/lang/Runnable;)V

    return-void
.end method
