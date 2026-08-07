.class public final Ldf/g1;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/g1$a;
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
.field public final d:LXe/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final e:J


# direct methods
.method public constructor <init>(LTe/l;JLXe/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;J",
            "LXe/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    iput-object p4, p0, Ldf/g1;->d:LXe/r;

    iput-wide p2, p0, Ldf/g1;->e:J

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v5, Lmf/i;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lmf/i;-><init>(Z)V

    invoke-interface {p1, v5}, LCi/c;->h(LCi/d;)V

    new-instance v7, Ldf/g1$a;

    iget-wide v2, p0, Ldf/g1;->e:J

    iget-object v4, p0, Ldf/g1;->d:LXe/r;

    iget-object v6, p0, Ldf/a;->c:LTe/l;

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ldf/g1$a;-><init>(LCi/c;JLXe/r;Lmf/i;LCi/b;)V

    invoke-virtual {v7}, Ldf/g1$a;->b()V

    return-void
.end method
