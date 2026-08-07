.class public final Lgf/b1;
.super LTe/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/b1$b;,
        Lgf/b1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/B<",
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

    invoke-direct {p0}, LTe/B;-><init>()V

    iput-object p1, p0, Lgf/b1;->b:LTe/G;

    iput-object p2, p0, Lgf/b1;->c:LTe/G;

    iput-object p3, p0, Lgf/b1;->d:LXe/d;

    iput p4, p0, Lgf/b1;->e:I

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v6, Lgf/b1$a;

    iget v2, p0, Lgf/b1;->e:I

    iget-object v3, p0, Lgf/b1;->b:LTe/G;

    iget-object v4, p0, Lgf/b1;->c:LTe/G;

    iget-object v5, p0, Lgf/b1;->d:LXe/d;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lgf/b1$a;-><init>(LTe/I;ILTe/G;LTe/G;LXe/d;)V

    invoke-interface {p1, v6}, LTe/I;->e(LVe/c;)V

    invoke-virtual {v6}, Lgf/b1$a;->e()V

    return-void
.end method
