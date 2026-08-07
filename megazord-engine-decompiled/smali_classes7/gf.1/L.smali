.class public final Lgf/L;
.super Lgf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/L$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lgf/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final c:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;TK;>;"
        }
    .end annotation
.end field

.field public final d:LXe/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/d<",
            "-TK;-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/G;LXe/o;LXe/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "TT;>;",
            "LXe/o<",
            "-TT;TK;>;",
            "LXe/d<",
            "-TK;-TK;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lgf/a;-><init>(LTe/G;)V

    iput-object p2, p0, Lgf/L;->c:LXe/o;

    iput-object p3, p0, Lgf/L;->d:LXe/d;

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/a;->b:LTe/G;

    new-instance v1, Lgf/L$a;

    iget-object v2, p0, Lgf/L;->c:LXe/o;

    iget-object v3, p0, Lgf/L;->d:LXe/d;

    invoke-direct {v1, p1, v2, v3}, Lgf/L$a;-><init>(LTe/I;LXe/o;LXe/d;)V

    invoke-interface {v0, v1}, LTe/G;->b(LTe/I;)V

    return-void
.end method
