.class public final Lef/E;
.super Lef/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lef/E$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lef/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final c:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+",
            "LTe/y<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final d:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "LTe/y<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "LTe/y<",
            "+TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/y;LXe/o;LXe/o;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/y<",
            "TT;>;",
            "LXe/o<",
            "-TT;+",
            "LTe/y<",
            "+TR;>;>;",
            "LXe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "LTe/y<",
            "+TR;>;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "LTe/y<",
            "+TR;>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lef/a;-><init>(LTe/y;)V

    iput-object p2, p0, Lef/E;->c:LXe/o;

    iput-object p3, p0, Lef/E;->d:LXe/o;

    iput-object p4, p0, Lef/E;->e:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public t1(LTe/v;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lef/a;->b:LTe/y;

    new-instance v1, Lef/E$a;

    iget-object v2, p0, Lef/E;->c:LXe/o;

    iget-object v3, p0, Lef/E;->d:LXe/o;

    iget-object v4, p0, Lef/E;->e:Ljava/util/concurrent/Callable;

    invoke-direct {v1, p1, v2, v3, v4}, Lef/E$a;-><init>(LTe/v;LXe/o;LXe/o;Ljava/util/concurrent/Callable;)V

    invoke-interface {v0, v1}, LTe/y;->d(LTe/v;)V

    return-void
.end method
