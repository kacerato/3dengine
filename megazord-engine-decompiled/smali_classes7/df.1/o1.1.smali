.class public final Ldf/o1;
.super LTe/K;
.source "SourceFile"

# interfaces
.implements Laf/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/o1$a;
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
        "Laf/b<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:LCi/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/b<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final c:LCi/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/b<",
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
.method public constructor <init>(LCi/b;LCi/b;LXe/d;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/b<",
            "+TT;>;",
            "LCi/b<",
            "+TT;>;",
            "LXe/d<",
            "-TT;-TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/K;-><init>()V

    iput-object p1, p0, Ldf/o1;->b:LCi/b;

    iput-object p2, p0, Ldf/o1;->c:LCi/b;

    iput-object p3, p0, Ldf/o1;->d:LXe/d;

    iput p4, p0, Ldf/o1;->e:I

    return-void
.end method


# virtual methods
.method public d1(LTe/N;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/N<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ldf/o1$a;

    iget v1, p0, Ldf/o1;->e:I

    iget-object v2, p0, Ldf/o1;->d:LXe/d;

    invoke-direct {v0, p1, v1, v2}, Ldf/o1$a;-><init>(LTe/N;ILXe/d;)V

    invoke-interface {p1, v0}, LTe/N;->e(LVe/c;)V

    iget-object p1, p0, Ldf/o1;->b:LCi/b;

    iget-object v1, p0, Ldf/o1;->c:LCi/b;

    invoke-virtual {v0, p1, v1}, Ldf/o1$a;->b(LCi/b;LCi/b;)V

    return-void
.end method

.method public f()LTe/l;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LTe/l<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Ldf/n1;

    iget-object v1, p0, Ldf/o1;->b:LCi/b;

    iget-object v2, p0, Ldf/o1;->c:LCi/b;

    iget-object v3, p0, Ldf/o1;->d:LXe/d;

    iget v4, p0, Ldf/o1;->e:I

    invoke-direct {v0, v1, v2, v3, v4}, Ldf/n1;-><init>(LCi/b;LCi/b;LXe/d;I)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object v0

    return-object v0
.end method
