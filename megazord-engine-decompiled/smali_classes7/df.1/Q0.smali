.class public final Ldf/Q0;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/Q0$a;
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
.field public final d:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "LCi/b<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field public final e:Z


# direct methods
.method public constructor <init>(LTe/l;LXe/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;",
            "LXe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "LCi/b<",
            "+TT;>;>;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    iput-object p2, p0, Ldf/Q0;->d:LXe/o;

    iput-boolean p3, p0, Ldf/Q0;->e:Z

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Ldf/Q0$a;

    iget-object v1, p0, Ldf/Q0;->d:LXe/o;

    iget-boolean v2, p0, Ldf/Q0;->e:Z

    invoke-direct {v0, p1, v1, v2}, Ldf/Q0$a;-><init>(LCi/c;LXe/o;Z)V

    invoke-interface {p1, v0}, LCi/c;->h(LCi/d;)V

    iget-object p1, p0, Ldf/a;->c:LTe/l;

    invoke-virtual {p1, v0}, LTe/l;->l6(LTe/q;)V

    return-void
.end method
