.class public Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView$c;
.super Lea/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;-><init>(Lcom/google/android/filament/Engine;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "cls"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView$c;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-direct {p0, p2}, Lea/a;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView$c;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->x(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView$c;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->y(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView$c;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->y(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->s()Lcom/google/android/filament/RenderTarget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/RenderTarget;->m()J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView$c;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->A(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)Lcom/google/android/filament/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/filament/View;->q0(Lcom/google/android/filament/RenderTarget;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView$c;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->z(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView$c;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->B(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;)Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->r()Lye/X;

    move-result-object p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView$c;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->A(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)Lcom/google/android/filament/View;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, p2}, Lye/X;->cb(JLjava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->s()Lye/X;

    move-result-object p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView$c;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->A(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)Lcom/google/android/filament/View;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, p2}, Lye/X;->cb(JLjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
