.class public final Lff/l;
.super LTe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lff/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/c;"
    }
.end annotation


# instance fields
.field public final b:LTe/B;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/B<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+",
            "LTe/i;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lio/reactivex/internal/util/j;

.field public final e:I


# direct methods
.method public constructor <init>(LTe/B;LXe/o;Lio/reactivex/internal/util/j;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/B<",
            "TT;>;",
            "LXe/o<",
            "-TT;+",
            "LTe/i;",
            ">;",
            "Lio/reactivex/internal/util/j;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/c;-><init>()V

    iput-object p1, p0, Lff/l;->b:LTe/B;

    iput-object p2, p0, Lff/l;->c:LXe/o;

    iput-object p3, p0, Lff/l;->d:Lio/reactivex/internal/util/j;

    iput p4, p0, Lff/l;->e:I

    return-void
.end method


# virtual methods
.method public K0(LTe/f;)V
    .locals 5

    iget-object v0, p0, Lff/l;->b:LTe/B;

    iget-object v1, p0, Lff/l;->c:LXe/o;

    invoke-static {v0, v1, p1}, Lff/r;->a(Ljava/lang/Object;LXe/o;LTe/f;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lff/l;->b:LTe/B;

    new-instance v1, Lff/l$a;

    iget-object v2, p0, Lff/l;->c:LXe/o;

    iget-object v3, p0, Lff/l;->d:Lio/reactivex/internal/util/j;

    iget v4, p0, Lff/l;->e:I

    invoke-direct {v1, p1, v2, v3, v4}, Lff/l$a;-><init>(LTe/f;LXe/o;Lio/reactivex/internal/util/j;I)V

    invoke-virtual {v0, v1}, LTe/B;->b(LTe/I;)V

    :cond_0
    return-void
.end method
