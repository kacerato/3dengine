.class public final Ldf/c0;
.super LTe/c;
.source "SourceFile"

# interfaces
.implements Laf/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/c0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/c;",
        "Laf/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LTe/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/l<",
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

.field public final d:I

.field public final e:Z


# direct methods
.method public constructor <init>(LTe/l;LXe/o;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;",
            "LXe/o<",
            "-TT;+",
            "LTe/i;",
            ">;ZI)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/c;-><init>()V

    iput-object p1, p0, Ldf/c0;->b:LTe/l;

    iput-object p2, p0, Ldf/c0;->c:LXe/o;

    iput-boolean p3, p0, Ldf/c0;->e:Z

    iput p4, p0, Ldf/c0;->d:I

    return-void
.end method


# virtual methods
.method public K0(LTe/f;)V
    .locals 5

    iget-object v0, p0, Ldf/c0;->b:LTe/l;

    new-instance v1, Ldf/c0$a;

    iget-object v2, p0, Ldf/c0;->c:LXe/o;

    iget-boolean v3, p0, Ldf/c0;->e:Z

    iget v4, p0, Ldf/c0;->d:I

    invoke-direct {v1, p1, v2, v3, v4}, Ldf/c0$a;-><init>(LTe/f;LXe/o;ZI)V

    invoke-virtual {v0, v1}, LTe/l;->l6(LTe/q;)V

    return-void
.end method

.method public f()LTe/l;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ldf/b0;

    iget-object v1, p0, Ldf/c0;->b:LTe/l;

    iget-object v2, p0, Ldf/c0;->c:LXe/o;

    iget-boolean v3, p0, Ldf/c0;->e:Z

    iget v4, p0, Ldf/c0;->d:I

    invoke-direct {v0, v1, v2, v3, v4}, Ldf/b0;-><init>(LTe/l;LXe/o;ZI)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object v0

    return-object v0
.end method
