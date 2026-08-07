.class public final Lyg/y;
.super Lyg/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lyg/g<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final f:LQf/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQf/f<",
            "LFf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(LQf/j;Lyg/d;Leg/p;)V
    .locals 1
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyg/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Leg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/j;",
            "Lyg/d<",
            "TE;>;",
            "Leg/p<",
            "-",
            "Lyg/B<",
            "-TE;>;-",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lyg/g;-><init>(LQf/j;Lyg/d;Z)V

    invoke-static {p3, p0, p0}, LSf/c;->c(Leg/p;Ljava/lang/Object;LQf/f;)LQf/f;

    move-result-object p1

    iput-object p1, p0, Lyg/y;->f:LQf/f;

    return-void
.end method


# virtual methods
.method public h1()V
    .locals 1

    iget-object v0, p0, Lyg/y;->f:LQf/f;

    invoke-static {v0, p0}, LFg/a;->c(LQf/f;LQf/f;)V

    return-void
.end method

.method public v()Lyg/D;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lyg/D<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lyg/g;->C1()Lyg/d;

    move-result-object v0

    invoke-interface {v0}, Lyg/d;->v()Lyg/D;

    move-result-object v0

    invoke-virtual {p0}, Lwg/R0;->start()Z

    return-object v0
.end method
