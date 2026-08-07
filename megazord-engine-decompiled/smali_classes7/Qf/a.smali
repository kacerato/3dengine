.class public abstract LQf/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQf/j$b;


# annotations
.annotation build LFf/l0;
    version = "1.3"
.end annotation


# instance fields
.field private final key:LQf/j$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQf/j$c<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(LQf/j$c;)V
    .locals 1
    .param p1    # LQf/j$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/j$c<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQf/a;->key:LQf/j$c;

    return-void
.end method


# virtual methods
.method public bridge fold(Ljava/lang/Object;Leg/p;)Ljava/lang/Object;
    .locals 0
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

    invoke-static {p0, p1, p2}, LQf/j$b$a;->a(LQf/j$b;Ljava/lang/Object;Leg/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge get(LQf/j$c;)LQf/j$b;
    .locals 0
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

    invoke-static {p0, p1}, LQf/j$b$a;->b(LQf/j$b;LQf/j$c;)LQf/j$b;

    move-result-object p1

    return-object p1
.end method

.method public getKey()LQf/j$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQf/j$c<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LQf/a;->key:LQf/j$c;

    return-object v0
.end method

.method public bridge minusKey(LQf/j$c;)LQf/j;
    .locals 0
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

    invoke-static {p0, p1}, LQf/j$b$a;->c(LQf/j$b;LQf/j$c;)LQf/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge plus(LQf/j;)LQf/j;
    .locals 0
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, LQf/j$b$a;->d(LQf/j$b;LQf/j;)LQf/j;

    move-result-object p1

    return-object p1
.end method
