.class public final Lwg/x1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQf/j$b;
.implements LQf/j$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LQf/j$b;",
        "LQf/j$c<",
        "Lwg/x1;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lwg/x1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwg/x1;

    invoke-direct {v0}, Lwg/x1;-><init>()V

    sput-object v0, Lwg/x1;->b:Lwg/x1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Leg/p;)Ljava/lang/Object;
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

.method public get(LQf/j$c;)LQf/j$b;
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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQf/j$c<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method

.method public minusKey(LQf/j$c;)LQf/j;
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

.method public plus(LQf/j;)LQf/j;
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
