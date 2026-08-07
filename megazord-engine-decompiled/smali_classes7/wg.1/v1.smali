.class public final Lwg/v1;
.super Lwg/M;
.source "SourceFile"


# static fields
.field public static final b:Lwg/v1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwg/v1;

    invoke-direct {v0}, Lwg/v1;-><init>()V

    sput-object v0, Lwg/v1;->b:Lwg/v1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lwg/M;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(LQf/j;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    sget-object p2, Lwg/z1;->c:Lwg/z1$a;

    invoke-interface {p1, p2}, LQf/j;->get(LQf/j$c;)LQf/j$b;

    move-result-object p1

    check-cast p1, Lwg/z1;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p1, Lwg/z1;->b:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isDispatchNeeded(LQf/j;)Z
    .locals 0
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public limitedParallelism(I)Lwg/M;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation build Lwg/z0;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "limitedParallelism is not supported for Dispatchers.Unconfined"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "Dispatchers.Unconfined"

    return-object v0
.end method
