.class public final Lif/H;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lif/H$e;,
        Lif/H$c;,
        Lif/H$d;,
        Lif/H$b;,
        Lif/H$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a()Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/Callable<",
            "Ljava/util/NoSuchElementException;",
            ">;"
        }
    .end annotation

    sget-object v0, Lif/H$a;->INSTANCE:Lif/H$a;

    return-object v0
.end method

.method public static b(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LTe/Q<",
            "+TT;>;>;)",
            "Ljava/lang/Iterable<",
            "+",
            "LTe/l<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Lif/H$c;

    invoke-direct {v0, p0}, Lif/H$c;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static c()LXe/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LXe/o<",
            "LTe/Q<",
            "+TT;>;",
            "LCi/b<",
            "+TT;>;>;"
        }
    .end annotation

    sget-object v0, Lif/H$b;->INSTANCE:Lif/H$b;

    return-object v0
.end method

.method public static d()LXe/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LXe/o<",
            "LTe/Q<",
            "+TT;>;",
            "LTe/B<",
            "+TT;>;>;"
        }
    .end annotation

    sget-object v0, Lif/H$e;->INSTANCE:Lif/H$e;

    return-object v0
.end method
