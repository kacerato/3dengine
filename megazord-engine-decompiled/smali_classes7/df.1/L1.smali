.class public final Ldf/L1;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/L1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ldf/a<",
        "TT;",
        "Lsf/d<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final d:LTe/J;

.field public final e:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(LTe/l;Ljava/util/concurrent/TimeUnit;LTe/J;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    iput-object p3, p0, Ldf/L1;->d:LTe/J;

    iput-object p2, p0, Ldf/L1;->e:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-",
            "Lsf/d<",
            "TT;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/a;->c:LTe/l;

    new-instance v1, Ldf/L1$a;

    iget-object v2, p0, Ldf/L1;->e:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Ldf/L1;->d:LTe/J;

    invoke-direct {v1, p1, v2, v3}, Ldf/L1$a;-><init>(LCi/c;Ljava/util/concurrent/TimeUnit;LTe/J;)V

    invoke-virtual {v0, v1}, LTe/l;->l6(LTe/q;)V

    return-void
.end method
