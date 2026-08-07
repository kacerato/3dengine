.class public final Lwg/R0$e;
.super Lwg/Q0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwg/R0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public final f:LHg/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LHg/m<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic g:Lwg/R0;


# direct methods
.method public constructor <init>(Lwg/R0;LHg/m;)V
    .locals 0
    .param p1    # Lwg/R0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LHg/m<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lwg/R0$e;->g:Lwg/R0;

    invoke-direct {p0}, Lwg/Q0;-><init>()V

    iput-object p2, p0, Lwg/R0$e;->f:LHg/m;

    return-void
.end method


# virtual methods
.method public Y(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lwg/R0$e;->f:LHg/m;

    iget-object v0, p0, Lwg/R0$e;->g:Lwg/R0;

    sget-object v1, LFf/P0;->a:LFf/P0;

    invoke-interface {p1, v0, v1}, LHg/m;->o(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lwg/R0$e;->Y(Ljava/lang/Throwable;)V

    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method
