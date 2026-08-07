.class public final Lwg/w;
.super Lwg/L0;
.source "SourceFile"

# interfaces
.implements Lwg/v;


# instance fields
.field public final f:Lwg/x;
    .annotation build Ldg/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lwg/x;)V
    .locals 0
    .param p1    # Lwg/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lwg/L0;-><init>()V

    iput-object p1, p0, Lwg/w;->f:Lwg/x;

    return-void
.end method


# virtual methods
.method public Y(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lwg/w;->f:Lwg/x;

    invoke-virtual {p0}, Lwg/Q0;->Z()Lwg/R0;

    move-result-object v0

    invoke-interface {p1, v0}, Lwg/x;->R(Lwg/b1;)V

    return-void
.end method

.method public c(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lwg/Q0;->Z()Lwg/R0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lwg/R0;->p0(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public getParent()Lwg/K0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lwg/Q0;->Z()Lwg/R0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lwg/w;->Y(Ljava/lang/Throwable;)V

    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method
