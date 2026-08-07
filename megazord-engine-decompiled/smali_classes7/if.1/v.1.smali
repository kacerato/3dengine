.class public final Lif/v;
.super LTe/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lif/v$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/K<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:LTe/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/Q<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final c:LTe/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/Q<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/Q;LTe/Q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/Q<",
            "+TT;>;",
            "LTe/Q<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/K;-><init>()V

    iput-object p1, p0, Lif/v;->b:LTe/Q;

    iput-object p2, p0, Lif/v;->c:LTe/Q;

    return-void
.end method


# virtual methods
.method public d1(LTe/N;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/N<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    const/4 v0, 0x0

    filled-new-array {v0, v0}, [Ljava/lang/Object;

    move-result-object v7

    new-instance v8, LVe/b;

    invoke-direct {v8}, LVe/b;-><init>()V

    invoke-interface {p1, v8}, LTe/N;->e(LVe/c;)V

    iget-object v9, p0, Lif/v;->b:LTe/Q;

    new-instance v10, Lif/v$a;

    const/4 v1, 0x0

    move-object v0, v10

    move-object v2, v8

    move-object v3, v7

    move-object v4, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lif/v$a;-><init>(ILVe/b;[Ljava/lang/Object;LTe/N;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v9, v10}, LTe/Q;->a(LTe/N;)V

    iget-object v9, p0, Lif/v;->c:LTe/Q;

    new-instance v10, Lif/v$a;

    const/4 v1, 0x1

    move-object v0, v10

    invoke-direct/range {v0 .. v5}, Lif/v$a;-><init>(ILVe/b;[Ljava/lang/Object;LTe/N;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v9, v10}, LTe/Q;->a(LTe/N;)V

    return-void
.end method
