.class public final Lwg/u;
.super Lwg/L0;
.source "SourceFile"


# annotations
.annotation build LFf/f0;
.end annotation


# instance fields
.field public final f:Lwg/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwg/q<",
            "*>;"
        }
    .end annotation

    .annotation build Ldg/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lwg/q;)V
    .locals 0
    .param p1    # Lwg/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwg/q<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lwg/L0;-><init>()V

    iput-object p1, p0, Lwg/u;->f:Lwg/q;

    return-void
.end method


# virtual methods
.method public Y(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lwg/u;->f:Lwg/q;

    invoke-virtual {p0}, Lwg/Q0;->Z()Lwg/R0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lwg/q;->B(Lwg/K0;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lwg/q;->R(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lwg/u;->Y(Ljava/lang/Throwable;)V

    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method
