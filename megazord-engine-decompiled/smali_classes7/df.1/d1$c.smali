.class public abstract Ldf/d1$c;
.super Lmf/i;
.source "SourceFile"

# interfaces
.implements LTe/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lmf/i;",
        "LTe/q<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final o:J = -0x4dc79ef2e0d16b40L


# instance fields
.field public final k:LCi/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final l:Lrf/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrf/c<",
            "TU;>;"
        }
    .end annotation
.end field

.field public final m:LCi/d;

.field public n:J


# direct methods
.method public constructor <init>(LCi/c;Lrf/c;LCi/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;",
            "Lrf/c<",
            "TU;>;",
            "LCi/d;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmf/i;-><init>(Z)V

    iput-object p1, p0, Ldf/d1$c;->k:LCi/c;

    iput-object p2, p0, Ldf/d1$c;->l:Lrf/c;

    iput-object p3, p0, Ldf/d1$c;->m:LCi/d;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    invoke-super {p0}, Lmf/i;->cancel()V

    iget-object v0, p0, Ldf/d1$c;->m:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-wide v0, p0, Ldf/d1$c;->n:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ldf/d1$c;->n:J

    iget-object v0, p0, Ldf/d1$c;->k:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public final h(LCi/d;)V
    .locals 0

    invoke-virtual {p0, p1}, Lmf/i;->l(LCi/d;)V

    return-void
.end method

.method public final m(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    sget-object v0, Lmf/g;->INSTANCE:Lmf/g;

    invoke-virtual {p0, v0}, Lmf/i;->l(LCi/d;)V

    iget-wide v0, p0, Ldf/d1$c;->n:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iput-wide v2, p0, Ldf/d1$c;->n:J

    invoke-virtual {p0, v0, v1}, Lmf/i;->k(J)V

    :cond_0
    iget-object v0, p0, Ldf/d1$c;->m:LCi/d;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, LCi/d;->i(J)V

    iget-object v0, p0, Ldf/d1$c;->l:Lrf/c;

    invoke-interface {v0, p1}, LCi/c;->g(Ljava/lang/Object;)V

    return-void
.end method
