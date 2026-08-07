.class public final Ldf/s1;
.super LTe/K;
.source "SourceFile"

# interfaces
.implements Laf/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/s1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/K<",
        "TT;>;",
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

.field public final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/l;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/K;-><init>()V

    iput-object p1, p0, Ldf/s1;->b:LTe/l;

    iput-object p2, p0, Ldf/s1;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public d1(LTe/N;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/N<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/s1;->b:LTe/l;

    new-instance v1, Ldf/s1$a;

    iget-object v2, p0, Ldf/s1;->c:Ljava/lang/Object;

    invoke-direct {v1, p1, v2}, Ldf/s1$a;-><init>(LTe/N;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, LTe/l;->l6(LTe/q;)V

    return-void
.end method

.method public f()LTe/l;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ldf/q1;

    iget-object v1, p0, Ldf/s1;->b:LTe/l;

    iget-object v2, p0, Ldf/s1;->c:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ldf/q1;-><init>(LTe/l;Ljava/lang/Object;Z)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object v0

    return-object v0
.end method
