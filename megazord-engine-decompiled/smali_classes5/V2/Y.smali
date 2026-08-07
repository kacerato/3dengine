.class public final LV2/Y;
.super LV2/w;
.source "SourceFile"

# interfaces
.implements LV2/P;


# annotations
.annotation runtime LV2/t;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "LV2/w<",
        "TN;>;",
        "LV2/P<",
        "TN;>;"
    }
.end annotation


# instance fields
.field public final a:LV2/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LV2/S<",
            "TN;",
            "LV2/C$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LV2/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LV2/g<",
            "-TN;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LV2/w;-><init>()V

    new-instance v0, LV2/a0;

    invoke-direct {v0, p1}, LV2/a0;-><init>(LV2/g;)V

    iput-object v0, p0, LV2/Y;->a:LV2/S;

    return-void
.end method


# virtual methods
.method public D(LV2/u;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LV2/u<",
            "TN;>;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, LV2/a;->P(LV2/u;)V

    invoke-virtual {p1}, LV2/u;->h()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, LV2/u;->i()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, LV2/Y;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public H(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    iget-object v0, p0, LV2/Y;->a:LV2/S;

    sget-object v1, LV2/C$a;->EDGE_EXISTS:LV2/C$a;

    invoke-interface {v0, p1, p2, v1}, LV2/S;->L(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public Q()LV2/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LV2/k<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, LV2/Y;->a:LV2/S;

    return-object v0
.end method

.method public o(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    iget-object v0, p0, LV2/Y;->a:LV2/S;

    invoke-interface {v0, p1}, LV2/S;->o(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public q(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    iget-object v0, p0, LV2/Y;->a:LV2/S;

    invoke-interface {v0, p1}, LV2/S;->q(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public r(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    iget-object v0, p0, LV2/Y;->a:LV2/S;

    invoke-interface {v0, p1, p2}, LV2/S;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public s(LV2/u;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LV2/u<",
            "TN;>;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, LV2/a;->P(LV2/u;)V

    invoke-virtual {p1}, LV2/u;->h()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, LV2/u;->i()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, LV2/Y;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
