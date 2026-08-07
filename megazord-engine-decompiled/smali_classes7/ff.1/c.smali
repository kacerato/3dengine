.class public final Lff/c;
.super LTe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lff/c$a;
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
.field public final b:LTe/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/l<",
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
.method public constructor <init>(LTe/l;LXe/o;Lio/reactivex/internal/util/j;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
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

    iput-object p1, p0, Lff/c;->b:LTe/l;

    iput-object p2, p0, Lff/c;->c:LXe/o;

    iput-object p3, p0, Lff/c;->d:Lio/reactivex/internal/util/j;

    iput p4, p0, Lff/c;->e:I

    return-void
.end method


# virtual methods
.method public K0(LTe/f;)V
    .locals 5

    iget-object v0, p0, Lff/c;->b:LTe/l;

    new-instance v1, Lff/c$a;

    iget-object v2, p0, Lff/c;->c:LXe/o;

    iget-object v3, p0, Lff/c;->d:Lio/reactivex/internal/util/j;

    iget v4, p0, Lff/c;->e:I

    invoke-direct {v1, p1, v2, v3, v4}, Lff/c$a;-><init>(LTe/f;LXe/o;Lio/reactivex/internal/util/j;I)V

    invoke-virtual {v0, v1}, LTe/l;->l6(LTe/q;)V

    return-void
.end method
