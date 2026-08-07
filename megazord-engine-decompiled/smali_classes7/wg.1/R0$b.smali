.class public final Lwg/R0$b;
.super Lwg/Q0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwg/R0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final f:Lwg/R0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lwg/R0$c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lwg/w;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lwg/R0;Lwg/R0$c;Lwg/w;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lwg/R0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lwg/R0$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lwg/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lwg/Q0;-><init>()V

    iput-object p1, p0, Lwg/R0$b;->f:Lwg/R0;

    iput-object p2, p0, Lwg/R0$b;->g:Lwg/R0$c;

    iput-object p3, p0, Lwg/R0$b;->h:Lwg/w;

    iput-object p4, p0, Lwg/R0$b;->i:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public Y(Ljava/lang/Throwable;)V
    .locals 3
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lwg/R0$b;->f:Lwg/R0;

    iget-object v0, p0, Lwg/R0$b;->g:Lwg/R0$c;

    iget-object v1, p0, Lwg/R0$b;->h:Lwg/w;

    iget-object v2, p0, Lwg/R0$b;->i:Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Lwg/R0;->W(Lwg/R0;Lwg/R0$c;Lwg/w;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lwg/R0$b;->Y(Ljava/lang/Throwable;)V

    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method
