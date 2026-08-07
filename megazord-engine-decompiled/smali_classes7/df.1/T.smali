.class public final Ldf/T;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/T$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ldf/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final d:LXe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/g<",
            "-",
            "LCi/d;",
            ">;"
        }
    .end annotation
.end field

.field public final e:LXe/q;

.field public final f:LXe/a;


# direct methods
.method public constructor <init>(LTe/l;LXe/g;LXe/q;LXe/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;",
            "LXe/g<",
            "-",
            "LCi/d;",
            ">;",
            "LXe/q;",
            "LXe/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    iput-object p2, p0, Ldf/T;->d:LXe/g;

    iput-object p3, p0, Ldf/T;->e:LXe/q;

    iput-object p4, p0, Ldf/T;->f:LXe/a;

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/a;->c:LTe/l;

    new-instance v1, Ldf/T$a;

    iget-object v2, p0, Ldf/T;->d:LXe/g;

    iget-object v3, p0, Ldf/T;->e:LXe/q;

    iget-object v4, p0, Ldf/T;->f:LXe/a;

    invoke-direct {v1, p1, v2, v3, v4}, Ldf/T$a;-><init>(LCi/c;LXe/g;LXe/q;LXe/a;)V

    invoke-virtual {v0, v1}, LTe/l;->l6(LTe/q;)V

    return-void
.end method
