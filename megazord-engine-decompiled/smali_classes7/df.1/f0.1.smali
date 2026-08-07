.class public final Ldf/f0;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/f0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ldf/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final d:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+",
            "LTe/Q<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final e:Z

.field public final f:I


# direct methods
.method public constructor <init>(LTe/l;LXe/o;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;",
            "LXe/o<",
            "-TT;+",
            "LTe/Q<",
            "+TR;>;>;ZI)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    iput-object p2, p0, Ldf/f0;->d:LXe/o;

    iput-boolean p3, p0, Ldf/f0;->e:Z

    iput p4, p0, Ldf/f0;->f:I

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/a;->c:LTe/l;

    new-instance v1, Ldf/f0$a;

    iget-object v2, p0, Ldf/f0;->d:LXe/o;

    iget-boolean v3, p0, Ldf/f0;->e:Z

    iget v4, p0, Ldf/f0;->f:I

    invoke-direct {v1, p1, v2, v3, v4}, Ldf/f0$a;-><init>(LCi/c;LXe/o;ZI)V

    invoke-virtual {v0, v1}, LTe/l;->l6(LTe/q;)V

    return-void
.end method
