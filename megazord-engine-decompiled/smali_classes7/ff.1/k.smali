.class public final Lff/k;
.super LTe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lff/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "LTe/l<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final c:LTe/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/y<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "+TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/y;LXe/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/y<",
            "TT;>;",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "+TR;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/l;-><init>()V

    iput-object p1, p0, Lff/k;->c:LTe/y;

    iput-object p2, p0, Lff/k;->d:LXe/o;

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lff/k;->c:LTe/y;

    new-instance v1, Lff/k$a;

    iget-object v2, p0, Lff/k;->d:LXe/o;

    invoke-direct {v1, p1, v2}, Lff/k$a;-><init>(LCi/c;LXe/o;)V

    invoke-interface {v0, v1}, LTe/y;->d(LTe/v;)V

    return-void
.end method
