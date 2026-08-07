.class public final Lgf/f;
.super Lgf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lgf/a<",
        "TT;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:LXe/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/r<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/G;LXe/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "TT;>;",
            "LXe/r<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lgf/a;-><init>(LTe/G;)V

    iput-object p2, p0, Lgf/f;->c:LXe/r;

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/a;->b:LTe/G;

    new-instance v1, Lgf/f$a;

    iget-object v2, p0, Lgf/f;->c:LXe/r;

    invoke-direct {v1, p1, v2}, Lgf/f$a;-><init>(LTe/I;LXe/r;)V

    invoke-interface {v0, v1}, LTe/G;->b(LTe/I;)V

    return-void
.end method
