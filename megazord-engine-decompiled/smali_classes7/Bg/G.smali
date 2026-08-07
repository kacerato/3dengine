.class public final LBg/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBg/U;
.implements LBg/c;
.implements LCg/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LBg/U<",
        "TT;>;",
        "LBg/c<",
        "TT;>;",
        "LCg/p<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lwg/K0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final synthetic c:LBg/U;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBg/U<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBg/U;Lwg/K0;)V
    .locals 0
    .param p1    # LBg/U;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lwg/K0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBg/U<",
            "+TT;>;",
            "Lwg/K0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LBg/G;->b:Lwg/K0;

    iput-object p1, p0, LBg/G;->c:LBg/U;

    return-void
.end method


# virtual methods
.method public a(LBg/j;LQf/f;)Ljava/lang/Object;
    .locals 1
    .param p1    # LBg/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBg/j<",
            "-TT;>;",
            "LQf/f<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, LBg/G;->c:LBg/U;

    invoke-interface {v0, p1, p2}, LBg/I;->a(LBg/j;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(LQf/j;ILyg/i;)LBg/i;
    .locals 0
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lyg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/j;",
            "I",
            "Lyg/i;",
            ")",
            "LBg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1, p2, p3}, LBg/W;->d(LBg/U;LQf/j;ILyg/i;)LBg/i;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LBg/G;->c:LBg/U;

    invoke-interface {v0}, LBg/I;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, LBg/G;->c:LBg/U;

    invoke-interface {v0}, LBg/U;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
