.class public final Ldf/n1;
.super LTe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/n1$c;,
        Ldf/n1$a;,
        Ldf/n1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/l<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:LCi/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/b<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final d:LCi/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/b<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final e:LXe/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/d<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field

.field public final f:I


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

    invoke-direct {p0}, LTe/l;-><init>()V

    iput-object p1, p0, Ldf/n1;->c:LCi/b;

    iput-object p2, p0, Ldf/n1;->d:LCi/b;

    iput-object p3, p0, Ldf/n1;->e:LXe/d;

    iput p4, p0, Ldf/n1;->f:I

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ldf/n1$a;

    iget v1, p0, Ldf/n1;->f:I

    iget-object v2, p0, Ldf/n1;->e:LXe/d;

    invoke-direct {v0, p1, v1, v2}, Ldf/n1$a;-><init>(LCi/c;ILXe/d;)V

    invoke-interface {p1, v0}, LCi/c;->h(LCi/d;)V

    iget-object p1, p0, Ldf/n1;->c:LCi/b;

    iget-object v1, p0, Ldf/n1;->d:LCi/b;

    invoke-virtual {v0, p1, v1}, Ldf/n1$a;->v(LCi/b;LCi/b;)V

    return-void
.end method
