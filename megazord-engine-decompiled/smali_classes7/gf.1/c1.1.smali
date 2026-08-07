.class public final Lgf/c1;
.super LTe/K;
.source "SourceFile"

# interfaces
.implements Laf/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/c1$b;,
        Lgf/c1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/K<",
        "Ljava/lang/Boolean;",
        ">;",
        "Laf/d<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:LTe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/G<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final c:LTe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/G<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final d:LXe/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/d<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field

.field public final e:I


# direct methods
.method public constructor <init>(LTe/G;LTe/G;LXe/d;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "+TT;>;",
            "LTe/G<",
            "+TT;>;",
            "LXe/d<",
            "-TT;-TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/K;-><init>()V

    iput-object p1, p0, Lgf/c1;->b:LTe/G;

    iput-object p2, p0, Lgf/c1;->c:LTe/G;

    iput-object p3, p0, Lgf/c1;->d:LXe/d;

    iput p4, p0, Lgf/c1;->e:I

    return-void
.end method


# virtual methods
.method public c()LTe/B;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LTe/B<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lgf/b1;

    iget-object v1, p0, Lgf/c1;->b:LTe/G;

    iget-object v2, p0, Lgf/c1;->c:LTe/G;

    iget-object v3, p0, Lgf/c1;->d:LXe/d;

    iget v4, p0, Lgf/c1;->e:I

    invoke-direct {v0, v1, v2, v3, v4}, Lgf/b1;-><init>(LTe/G;LTe/G;LXe/d;I)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object v0

    return-object v0
.end method

.method public d1(LTe/N;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/N<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v6, Lgf/c1$a;

    iget v2, p0, Lgf/c1;->e:I

    iget-object v3, p0, Lgf/c1;->b:LTe/G;

    iget-object v4, p0, Lgf/c1;->c:LTe/G;

    iget-object v5, p0, Lgf/c1;->d:LXe/d;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lgf/c1$a;-><init>(LTe/N;ILTe/G;LTe/G;LXe/d;)V

    invoke-interface {p1, v6}, LTe/N;->e(LVe/c;)V

    invoke-virtual {v6}, Lgf/c1$a;->e()V

    return-void
.end method
