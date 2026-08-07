.class public final LVd/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LVd/c$b;,
        LVd/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nYouTubePlayerBridge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 YouTubePlayerBridge.kt\ncom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge\n*L\n1#1,222:1\n*E\n"
.end annotation


# static fields
.field public static final c:Ljava/lang/String; = "UNSTARTED"

.field public static final d:Ljava/lang/String; = "ENDED"

.field public static final e:Ljava/lang/String; = "PLAYING"

.field public static final f:Ljava/lang/String; = "PAUSED"

.field public static final g:Ljava/lang/String; = "BUFFERING"

.field public static final h:Ljava/lang/String; = "CUED"

.field public static final i:Ljava/lang/String; = "small"

.field public static final j:Ljava/lang/String; = "medium"

.field public static final k:Ljava/lang/String; = "large"

.field public static final l:Ljava/lang/String; = "hd720"

.field public static final m:Ljava/lang/String; = "hd1080"

.field public static final n:Ljava/lang/String; = "highres"

.field public static final o:Ljava/lang/String; = "default"

.field public static final p:Ljava/lang/String; = "0.25"

.field public static final q:Ljava/lang/String; = "0.5"

.field public static final r:Ljava/lang/String; = "1"

.field public static final s:Ljava/lang/String; = "1.5"

.field public static final t:Ljava/lang/String; = "2"

.field public static final u:Ljava/lang/String; = "2"

.field public static final v:Ljava/lang/String; = "5"

.field public static final w:Ljava/lang/String; = "100"

.field public static final x:Ljava/lang/String; = "101"

.field public static final y:Ljava/lang/String; = "150"

.field public static final z:LVd/c$a;


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:LVd/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LVd/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LVd/c$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, LVd/c;->z:LVd/c$a;

    return-void
.end method

.method public constructor <init>(LVd/c$b;)V
    .locals 1
    .param p1    # LVd/c$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "youTubePlayerOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LVd/c;->b:LVd/c$b;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, LVd/c;->a:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic a(LVd/c;)LVd/c$b;
    .locals 0

    iget-object p0, p0, LVd/c;->b:LVd/c$b;

    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)LVd/a$a;
    .locals 2

    const-string v0, "small"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lsg/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, LVd/a$a;->SMALL:LVd/a$a;

    goto :goto_0

    :cond_0
    const-string v0, "medium"

    invoke-static {p1, v0, v1}, Lsg/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, LVd/a$a;->MEDIUM:LVd/a$a;

    goto :goto_0

    :cond_1
    const-string v0, "large"

    invoke-static {p1, v0, v1}, Lsg/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, LVd/a$a;->LARGE:LVd/a$a;

    goto :goto_0

    :cond_2
    const-string v0, "hd720"

    invoke-static {p1, v0, v1}, Lsg/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, LVd/a$a;->HD720:LVd/a$a;

    goto :goto_0

    :cond_3
    const-string v0, "hd1080"

    invoke-static {p1, v0, v1}, Lsg/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p1, LVd/a$a;->HD1080:LVd/a$a;

    goto :goto_0

    :cond_4
    const-string v0, "highres"

    invoke-static {p1, v0, v1}, Lsg/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p1, LVd/a$a;->HIGH_RES:LVd/a$a;

    goto :goto_0

    :cond_5
    const-string v0, "default"

    invoke-static {p1, v0, v1}, Lsg/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, LVd/a$a;->DEFAULT:LVd/a$a;

    goto :goto_0

    :cond_6
    sget-object p1, LVd/a$a;->UNKNOWN:LVd/a$a;

    :goto_0
    return-object p1
.end method

.method public final c(Ljava/lang/String;)LVd/a$b;
    .locals 2

    const-string v0, "0.25"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lsg/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, LVd/a$b;->RATE_0_25:LVd/a$b;

    goto :goto_0

    :cond_0
    const-string v0, "0.5"

    invoke-static {p1, v0, v1}, Lsg/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, LVd/a$b;->RATE_0_5:LVd/a$b;

    goto :goto_0

    :cond_1
    const-string v0, "1"

    invoke-static {p1, v0, v1}, Lsg/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, LVd/a$b;->RATE_1:LVd/a$b;

    goto :goto_0

    :cond_2
    const-string v0, "1.5"

    invoke-static {p1, v0, v1}, Lsg/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, LVd/a$b;->RATE_1_5:LVd/a$b;

    goto :goto_0

    :cond_3
    const-string v0, "2"

    invoke-static {p1, v0, v1}, Lsg/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, LVd/a$b;->RATE_2:LVd/a$b;

    goto :goto_0

    :cond_4
    sget-object p1, LVd/a$b;->UNKNOWN:LVd/a$b;

    :goto_0
    return-object p1
.end method

.method public final d(Ljava/lang/String;)LVd/a$c;
    .locals 2

    const-string v0, "2"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lsg/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, LVd/a$c;->INVALID_PARAMETER_IN_REQUEST:LVd/a$c;

    goto :goto_0

    :cond_0
    const-string v0, "5"

    invoke-static {p1, v0, v1}, Lsg/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, LVd/a$c;->HTML_5_PLAYER:LVd/a$c;

    goto :goto_0

    :cond_1
    const-string v0, "100"

    invoke-static {p1, v0, v1}, Lsg/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, LVd/a$c;->VIDEO_NOT_FOUND:LVd/a$c;

    goto :goto_0

    :cond_2
    const-string v0, "101"

    invoke-static {p1, v0, v1}, Lsg/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, LVd/a$c;->VIDEO_NOT_PLAYABLE_IN_EMBEDDED_PLAYER:LVd/a$c;

    goto :goto_0

    :cond_3
    const-string v0, "150"

    invoke-static {p1, v0, v1}, Lsg/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, LVd/a$c;->VIDEO_NOT_PLAYABLE_IN_EMBEDDED_PLAYER:LVd/a$c;

    goto :goto_0

    :cond_4
    sget-object p1, LVd/a$c;->UNKNOWN:LVd/a$c;

    :goto_0
    return-object p1
.end method

.method public final e(Ljava/lang/String;)LVd/a$d;
    .locals 2

    const-string v0, "UNSTARTED"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lsg/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, LVd/a$d;->UNSTARTED:LVd/a$d;

    goto :goto_0

    :cond_0
    const-string v0, "ENDED"

    invoke-static {p1, v0, v1}, Lsg/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, LVd/a$d;->ENDED:LVd/a$d;

    goto :goto_0

    :cond_1
    const-string v0, "PLAYING"

    invoke-static {p1, v0, v1}, Lsg/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, LVd/a$d;->PLAYING:LVd/a$d;

    goto :goto_0

    :cond_2
    const-string v0, "PAUSED"

    invoke-static {p1, v0, v1}, Lsg/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, LVd/a$d;->PAUSED:LVd/a$d;

    goto :goto_0

    :cond_3
    const-string v0, "BUFFERING"

    invoke-static {p1, v0, v1}, Lsg/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p1, LVd/a$d;->BUFFERING:LVd/a$d;

    goto :goto_0

    :cond_4
    const-string v0, "CUED"

    invoke-static {p1, v0, v1}, Lsg/K;->e2(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, LVd/a$d;->VIDEO_CUED:LVd/a$d;

    goto :goto_0

    :cond_5
    sget-object p1, LVd/a$d;->UNKNOWN:LVd/a$d;

    :goto_0
    return-object p1
.end method

.method public final sendApiChange()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, LVd/c;->a:Landroid/os/Handler;

    new-instance v1, LVd/c$c;

    invoke-direct {v1, p0}, LVd/c$c;-><init>(LVd/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendError(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LVd/c;->d(Ljava/lang/String;)LVd/a$c;

    move-result-object p1

    iget-object v0, p0, LVd/c;->a:Landroid/os/Handler;

    new-instance v1, LVd/c$d;

    invoke-direct {v1, p0, p1}, LVd/c$d;-><init>(LVd/c;LVd/a$c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendPlaybackQualityChange(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "quality"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LVd/c;->b(Ljava/lang/String;)LVd/a$a;

    move-result-object p1

    iget-object v0, p0, LVd/c;->a:Landroid/os/Handler;

    new-instance v1, LVd/c$e;

    invoke-direct {v1, p0, p1}, LVd/c$e;-><init>(LVd/c;LVd/a$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendPlaybackRateChange(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "rate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LVd/c;->c(Ljava/lang/String;)LVd/a$b;

    move-result-object p1

    iget-object v0, p0, LVd/c;->a:Landroid/os/Handler;

    new-instance v1, LVd/c$f;

    invoke-direct {v1, p0, p1}, LVd/c$f;-><init>(LVd/c;LVd/a$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendReady()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, LVd/c;->a:Landroid/os/Handler;

    new-instance v1, LVd/c$g;

    invoke-direct {v1, p0}, LVd/c$g;-><init>(LVd/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendStateChange(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LVd/c;->e(Ljava/lang/String;)LVd/a$d;

    move-result-object p1

    iget-object v0, p0, LVd/c;->a:Landroid/os/Handler;

    new-instance v1, LVd/c$h;

    invoke-direct {v1, p0, p1}, LVd/c$h;-><init>(LVd/c;LVd/a$d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendVideoCurrentTime(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "seconds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, LVd/c;->a:Landroid/os/Handler;

    new-instance v1, LVd/c$i;

    invoke-direct {v1, p0, p1}, LVd/c$i;-><init>(LVd/c;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final sendVideoDuration(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "seconds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "0"

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, LVd/c;->a:Landroid/os/Handler;

    new-instance v1, LVd/c$j;

    invoke-direct {v1, p0, p1}, LVd/c$j;-><init>(LVd/c;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final sendVideoId(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LVd/c;->a:Landroid/os/Handler;

    new-instance v1, LVd/c$k;

    invoke-direct {v1, p0, p1}, LVd/c$k;-><init>(LVd/c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendVideoLoadedFraction(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "fraction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, LVd/c;->a:Landroid/os/Handler;

    new-instance v1, LVd/c$l;

    invoke-direct {v1, p0, p1}, LVd/c$l;-><init>(LVd/c;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final sendYouTubeIFrameAPIReady()Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, LVd/c;->a:Landroid/os/Handler;

    new-instance v1, LVd/c$m;

    invoke-direct {v1, p0}, LVd/c$m;-><init>(LVd/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method
