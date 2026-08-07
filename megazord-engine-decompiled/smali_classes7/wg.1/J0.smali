.class public final Lwg/J0;
.super Lwg/Q0;
.source "SourceFile"


# instance fields
.field public final f:Leg/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/l<",
            "Ljava/lang/Throwable;",
            "LFf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Leg/l;)V
    .locals 0
    .param p1    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/l<",
            "-",
            "Ljava/lang/Throwable;",
            "LFf/P0;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lwg/Q0;-><init>()V

    iput-object p1, p0, Lwg/J0;->f:Leg/l;

    return-void
.end method


# virtual methods
.method public Y(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lwg/J0;->f:Leg/l;

    invoke-interface {v0, p1}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lwg/J0;->Y(Ljava/lang/Throwable;)V

    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method
