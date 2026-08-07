.class public final Ldf/U1;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/U1$a;,
        Ldf/U1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ldf/a<",
        "TT;",
        "LTe/l<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final d:LCi/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/b<",
            "TB;>;"
        }
    .end annotation
.end field

.field public final e:I


# direct methods
.method public constructor <init>(LTe/l;LCi/b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;",
            "LCi/b<",
            "TB;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    iput-object p2, p0, Ldf/U1;->d:LCi/b;

    iput p3, p0, Ldf/U1;->e:I

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-",
            "LTe/l<",
            "TT;>;>;)V"
        }
    .end annotation

    new-instance v0, Ldf/U1$b;

    iget v1, p0, Ldf/U1;->e:I

    invoke-direct {v0, p1, v1}, Ldf/U1$b;-><init>(LCi/c;I)V

    invoke-interface {p1, v0}, LCi/c;->h(LCi/d;)V

    invoke-virtual {v0}, Ldf/U1$b;->e()V

    iget-object p1, p0, Ldf/U1;->d:LCi/b;

    iget-object v1, v0, Ldf/U1$b;->d:Ldf/U1$a;

    invoke-interface {p1, v1}, LCi/b;->l(LCi/c;)V

    iget-object p1, p0, Ldf/a;->c:LTe/l;

    invoke-virtual {p1, v0}, LTe/l;->l6(LTe/q;)V

    return-void
.end method
