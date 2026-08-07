.class public final LYd/d;
.super LWd/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlaybackResumer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlaybackResumer.kt\ncom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/PlaybackResumer\n*L\n1#1,70:1\n*E\n"
.end annotation


# instance fields
.field public b:Z

.field public c:Z

.field public d:LVd/a$c;

.field public e:Ljava/lang/String;

.field public f:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LWd/a;-><init>()V

    return-void
.end method


# virtual methods
.method public A(LVd/b;F)V
    .locals 1
    .param p1    # LVd/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "youTubePlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iput p2, p0, LYd/d;->f:F

    return-void
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LYd/d;->b:Z

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, LYd/d;->b:Z

    return-void
.end method

.method public final c(LVd/b;)V
    .locals 4
    .param p1    # LVd/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "youTubePlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LYd/d;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, LYd/d;->c:Z

    if-eqz v1, :cond_0

    iget-object v2, p0, LYd/d;->d:LVd/a$c;

    sget-object v3, LVd/a$c;->HTML_5_PLAYER:LVd/a$c;

    if-ne v2, v3, :cond_0

    iget-boolean v1, p0, LYd/d;->b:Z

    iget v2, p0, LYd/d;->f:F

    invoke-static {p1, v1, v0, v2}, LYd/g;->b(LVd/b;ZLjava/lang/String;F)V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    iget-object v1, p0, LYd/d;->d:LVd/a$c;

    sget-object v2, LVd/a$c;->HTML_5_PLAYER:LVd/a$c;

    if-ne v1, v2, :cond_1

    iget v1, p0, LYd/d;->f:F

    invoke-interface {p1, v0, v1}, LVd/b;->c(Ljava/lang/String;F)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, LYd/d;->d:LVd/a$c;

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

    iput-object p2, p0, LYd/d;->e:Ljava/lang/String;

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

    sget-object p1, LVd/a$c;->HTML_5_PLAYER:LVd/a$c;

    if-ne p2, p1, :cond_0

    iput-object p2, p0, LYd/d;->d:LVd/a$c;

    :cond_0
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

    sget-object p1, LYd/c;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    iput-boolean v0, p0, LYd/d;->c:Z

    return-void

    :cond_1
    iput-boolean p2, p0, LYd/d;->c:Z

    return-void

    :cond_2
    iput-boolean p2, p0, LYd/d;->c:Z

    return-void
.end method
