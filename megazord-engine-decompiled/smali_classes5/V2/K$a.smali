.class public LV2/K$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LV2/K;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:LV2/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LV2/S<",
            "TN;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LV2/k0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LV2/k0<",
            "TN;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, LV2/k0;->d()LV2/k0;

    move-result-object p1

    invoke-static {}, LV2/s;->g()LV2/s;

    move-result-object v0

    invoke-virtual {p1, v0}, LV2/k0;->i(LV2/s;)LV2/k0;

    move-result-object p1

    invoke-virtual {p1}, LV2/k0;->b()LV2/S;

    move-result-object p1

    iput-object p1, p0, LV2/K$a;->a:LV2/S;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)LV2/K$a;
    .locals 1
    .annotation build Ld3/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "LV2/K$a<",
            "TN;TV;>;"
        }
    .end annotation

    iget-object v0, p0, LV2/K$a;->a:LV2/S;

    invoke-interface {v0, p1}, LV2/S;->q(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b()LV2/K;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LV2/K<",
            "TN;TV;>;"
        }
    .end annotation

    iget-object v0, p0, LV2/K$a;->a:LV2/S;

    invoke-static {v0}, LV2/K;->Z(LV2/j0;)LV2/K;

    move-result-object v0

    return-object v0
.end method

.method public c(LV2/u;Ljava/lang/Object;)LV2/K$a;
    .locals 1
    .annotation build Ld3/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LV2/u<",
            "TN;>;TV;)",
            "LV2/K$a<",
            "TN;TV;>;"
        }
    .end annotation

    iget-object v0, p0, LV2/K$a;->a:LV2/S;

    invoke-interface {v0, p1, p2}, LV2/S;->E(LV2/u;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)LV2/K$a;
    .locals 1
    .annotation build Ld3/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TV;)",
            "LV2/K$a<",
            "TN;TV;>;"
        }
    .end annotation

    iget-object v0, p0, LV2/K$a;->a:LV2/S;

    invoke-interface {v0, p1, p2, p3}, LV2/S;->L(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
