.class public LL9/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LL9/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LL9/a;


# direct methods
.method public constructor <init>(LL9/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LL9/a$a;->a:LL9/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaPlayer"
        }
    .end annotation

    iget-object v0, p0, LL9/a$a;->a:LL9/a;

    invoke-static {v0}, LL9/a;->r(LL9/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LL9/a$a;->a:LL9/a;

    invoke-static {v0}, LL9/a;->s(LL9/a;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    :try_start_0
    iget-object p1, p0, LL9/a$a;->a:LL9/a;

    invoke-static {p1}, LL9/a;->t(LL9/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    iget-object p1, p0, LL9/a$a;->a:LL9/a;

    invoke-static {p1}, LL9/a;->w(LL9/a;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-static {p1, v0}, LL9/a;->v(LL9/a;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    :try_start_1
    iget-object p1, p0, LL9/a$a;->a:LL9/a;

    invoke-static {p1}, LL9/a;->u(LL9/a;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object p1

    iget-object v0, p0, LL9/a$a;->a:LL9/a;

    invoke-static {v0}, LL9/a;->x(LL9/a;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    iget-object v0, p0, LL9/a$a;->a:LL9/a;

    invoke-static {v0}, LL9/a;->y(LL9/a;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    iget-object v0, p0, LL9/a$a;->a:LL9/a;

    invoke-static {v0}, LL9/a;->u(LL9/a;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    :try_start_2
    iget-object p1, p0, LL9/a$a;->a:LL9/a;

    invoke-static {p1}, LL9/a;->u(LL9/a;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    iget-object p1, p0, LL9/a$a;->a:LL9/a;

    invoke-static {p1}, LL9/a;->u(LL9/a;)Landroid/media/MediaPlayer;

    move-result-object p1

    iget-object v0, p0, LL9/a$a;->a:LL9/a;

    invoke-static {v0}, LL9/a;->z(LL9/a;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    :try_start_3
    iget-object p1, p0, LL9/a$a;->a:LL9/a;

    invoke-static {p1}, LL9/a;->u(LL9/a;)Landroid/media/MediaPlayer;

    move-result-object p1

    iget-object v0, p0, LL9/a$a;->a:LL9/a;

    invoke-static {v0}, LL9/a;->A(LL9/a;)F

    move-result v0

    iget-object v1, p0, LL9/a$a;->a:LL9/a;

    invoke-static {v1}, LL9/a;->B(LL9/a;)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_4

    :catch_4
    :cond_0
    return-void
.end method
