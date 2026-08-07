.class public final Lgf/L0;
.super LTe/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/L0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/s<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LTe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/G<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:LXe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/c<",
            "TT;TT;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/G;LXe/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "TT;>;",
            "LXe/c<",
            "TT;TT;TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/s;-><init>()V

    iput-object p1, p0, Lgf/L0;->b:LTe/G;

    iput-object p2, p0, Lgf/L0;->c:LXe/c;

    return-void
.end method


# virtual methods
.method public t1(LTe/v;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/L0;->b:LTe/G;

    new-instance v1, Lgf/L0$a;

    iget-object v2, p0, Lgf/L0;->c:LXe/c;

    invoke-direct {v1, p1, v2}, Lgf/L0$a;-><init>(LTe/v;LXe/c;)V

    invoke-interface {v0, v1}, LTe/G;->b(LTe/I;)V

    return-void
.end method
