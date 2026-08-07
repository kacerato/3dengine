.class public LV2/E$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LV2/E;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:LV2/P;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LV2/P<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LV2/A;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LV2/A<",
            "TN;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, LV2/A;->d()LV2/A;

    move-result-object p1

    invoke-static {}, LV2/s;->g()LV2/s;

    move-result-object v0

    invoke-virtual {p1, v0}, LV2/A;->i(LV2/s;)LV2/A;

    move-result-object p1

    invoke-virtual {p1}, LV2/A;->b()LV2/P;

    move-result-object p1

    iput-object p1, p0, LV2/E$a;->a:LV2/P;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)LV2/E$a;
    .locals 1
    .annotation build Ld3/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "LV2/E$a<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, LV2/E$a;->a:LV2/P;

    invoke-interface {v0, p1}, LV2/P;->q(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b()LV2/E;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LV2/E<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, LV2/E$a;->a:LV2/P;

    invoke-static {v0}, LV2/E;->S(LV2/z;)LV2/E;

    move-result-object v0

    return-object v0
.end method

.method public c(LV2/u;)LV2/E$a;
    .locals 1
    .annotation build Ld3/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LV2/u<",
            "TN;>;)",
            "LV2/E$a<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, LV2/E$a;->a:LV2/P;

    invoke-interface {v0, p1}, LV2/P;->D(LV2/u;)Z

    return-object p0
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;)LV2/E$a;
    .locals 1
    .annotation build Ld3/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)",
            "LV2/E$a<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, LV2/E$a;->a:LV2/P;

    invoke-interface {v0, p1, p2}, LV2/P;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object p0
.end method
