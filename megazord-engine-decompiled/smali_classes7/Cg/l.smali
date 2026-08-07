.class public final LCg/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQf/j;


# instance fields
.field public final b:Ljava/lang/Throwable;
    .annotation build Ldg/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic c:LQf/j;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;LQf/j;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LCg/l;->b:Ljava/lang/Throwable;

    iput-object p2, p0, LCg/l;->c:LQf/j;

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Leg/p;)Ljava/lang/Object;
    .locals 1
    .param p2    # Leg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Leg/p<",
            "-TR;-",
            "LQf/j$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    iget-object v0, p0, LCg/l;->c:LQf/j;

    invoke-interface {v0, p1, p2}, LQf/j;->fold(Ljava/lang/Object;Leg/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(LQf/j$c;)LQf/j$b;
    .locals 1
    .param p1    # LQf/j$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "LQf/j$b;",
            ">(",
            "LQf/j$c<",
            "TE;>;)TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, LCg/l;->c:LQf/j;

    invoke-interface {v0, p1}, LQf/j;->get(LQf/j$c;)LQf/j$b;

    move-result-object p1

    return-object p1
.end method

.method public minusKey(LQf/j$c;)LQf/j;
    .locals 1
    .param p1    # LQf/j$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/j$c<",
            "*>;)",
            "LQf/j;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LCg/l;->c:LQf/j;

    invoke-interface {v0, p1}, LQf/j;->minusKey(LQf/j$c;)LQf/j;

    move-result-object p1

    return-object p1
.end method

.method public plus(LQf/j;)LQf/j;
    .locals 1
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LCg/l;->c:LQf/j;

    invoke-interface {v0, p1}, LQf/j;->plus(LQf/j;)LQf/j;

    move-result-object p1

    return-object p1
.end method
