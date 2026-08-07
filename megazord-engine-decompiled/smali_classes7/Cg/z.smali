.class public final LCg/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBg/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LBg/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LQf/j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Leg/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/p<",
            "TT;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBg/j;LQf/j;)V
    .locals 1
    .param p1    # LBg/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBg/j<",
            "-TT;>;",
            "LQf/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LCg/z;->b:LQf/j;

    invoke-static {p2}, LEg/Z;->b(LQf/j;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, LCg/z;->c:Ljava/lang/Object;

    new-instance p2, LCg/z$a;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, LCg/z$a;-><init>(LBg/j;LQf/f;)V

    iput-object p2, p0, LCg/z;->d:Leg/p;

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;
    .locals 3
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, LCg/z;->b:LQf/j;

    iget-object v1, p0, LCg/z;->c:Ljava/lang/Object;

    iget-object v2, p0, LCg/z;->d:Leg/p;

    invoke-static {v0, p1, v1, v2, p2}, LCg/e;->c(LQf/j;Ljava/lang/Object;Ljava/lang/Object;Leg/p;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method
