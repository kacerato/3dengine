.class public final Lwg/o0;
.super Lwg/Q0;
.source "SourceFile"


# instance fields
.field public final f:Lwg/m0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lwg/m0;)V
    .locals 0
    .param p1    # Lwg/m0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lwg/Q0;-><init>()V

    iput-object p1, p0, Lwg/o0;->f:Lwg/m0;

    return-void
.end method


# virtual methods
.method public Y(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lwg/o0;->f:Lwg/m0;

    invoke-interface {p1}, Lwg/m0;->dispose()V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lwg/o0;->Y(Ljava/lang/Throwable;)V

    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method
