.class public final Lwg/T0;
.super Lwg/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lwg/a0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:LQf/f;
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
.method public constructor <init>(LQf/j;Leg/p;)V
    .locals 1
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Leg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/j;",
            "Leg/p<",
            "-",
            "Lwg/S;",
            "-",
            "LQf/f<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lwg/a0;-><init>(LQf/j;Z)V

    invoke-static {p2, p0, p0}, LSf/c;->c(Leg/p;Ljava/lang/Object;LQf/f;)LQf/f;

    move-result-object p1

    iput-object p1, p0, Lwg/T0;->e:LQf/f;

    return-void
.end method


# virtual methods
.method public h1()V
    .locals 1

    iget-object v0, p0, Lwg/T0;->e:LQf/f;

    invoke-static {v0, p0}, LFg/a;->c(LQf/f;LQf/f;)V

    return-void
.end method
