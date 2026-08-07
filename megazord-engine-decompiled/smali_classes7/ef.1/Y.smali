.class public final Lef/Y;
.super LTe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lef/Y$a;,
        Lef/Y$c;,
        Lef/Y$d;,
        Lef/Y$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/l<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final c:[LTe/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "LTe/y<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([LTe/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "LTe/y<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/l;-><init>()V

    iput-object p1, p0, Lef/Y;->c:[LTe/y;

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lef/Y;->c:[LTe/y;

    array-length v1, v0

    invoke-static {}, LTe/l;->a0()I

    move-result v2

    if-gt v1, v2, :cond_0

    new-instance v2, Lef/Y$c;

    invoke-direct {v2, v1}, Lef/Y$c;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v2, Lef/Y$a;

    invoke-direct {v2}, Lef/Y$a;-><init>()V

    :goto_0
    new-instance v3, Lef/Y$b;

    invoke-direct {v3, p1, v1, v2}, Lef/Y$b;-><init>(LCi/c;ILef/Y$d;)V

    invoke-interface {p1, v3}, LCi/c;->h(LCi/d;)V

    iget-object p1, v3, Lef/Y$b;->g:Lio/reactivex/internal/util/c;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v4, v0, v2

    invoke-virtual {v3}, Lef/Y$b;->s()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v4, v3}, LTe/y;->d(LTe/v;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method
