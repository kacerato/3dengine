.class public final Lgf/Z;
.super LTe/c;
.source "SourceFile"

# interfaces
.implements Laf/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/Z$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/c;",
        "Laf/d<",
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

.field public final c:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+",
            "LTe/i;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Z


# direct methods
.method public constructor <init>(LTe/G;LXe/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "TT;>;",
            "LXe/o<",
            "-TT;+",
            "LTe/i;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/c;-><init>()V

    iput-object p1, p0, Lgf/Z;->b:LTe/G;

    iput-object p2, p0, Lgf/Z;->c:LXe/o;

    iput-boolean p3, p0, Lgf/Z;->d:Z

    return-void
.end method


# virtual methods
.method public K0(LTe/f;)V
    .locals 4

    iget-object v0, p0, Lgf/Z;->b:LTe/G;

    new-instance v1, Lgf/Z$a;

    iget-object v2, p0, Lgf/Z;->c:LXe/o;

    iget-boolean v3, p0, Lgf/Z;->d:Z

    invoke-direct {v1, p1, v2, v3}, Lgf/Z$a;-><init>(LTe/f;LXe/o;Z)V

    invoke-interface {v0, v1}, LTe/G;->b(LTe/I;)V

    return-void
.end method

.method public c()LTe/B;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lgf/Y;

    iget-object v1, p0, Lgf/Z;->b:LTe/G;

    iget-object v2, p0, Lgf/Z;->c:LXe/o;

    iget-boolean v3, p0, Lgf/Z;->d:Z

    invoke-direct {v0, v1, v2, v3}, Lgf/Y;-><init>(LTe/G;LXe/o;Z)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object v0

    return-object v0
.end method
