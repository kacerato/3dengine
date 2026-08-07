.class public final Lgf/k0;
.super Lgf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/k0$c;,
        Lgf/k0$b;,
        Lgf/k0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lgf/a<",
        "TT;",
        "Lnf/b<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final c:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+TK;>;"
        }
    .end annotation
.end field

.field public final d:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+TV;>;"
        }
    .end annotation
.end field

.field public final e:I

.field public final f:Z


# direct methods
.method public constructor <init>(LTe/G;LXe/o;LXe/o;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "TT;>;",
            "LXe/o<",
            "-TT;+TK;>;",
            "LXe/o<",
            "-TT;+TV;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lgf/a;-><init>(LTe/G;)V

    iput-object p2, p0, Lgf/k0;->c:LXe/o;

    iput-object p3, p0, Lgf/k0;->d:LXe/o;

    iput p4, p0, Lgf/k0;->e:I

    iput-boolean p5, p0, Lgf/k0;->f:Z

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-",
            "Lnf/b<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/a;->b:LTe/G;

    new-instance v7, Lgf/k0$a;

    iget-object v3, p0, Lgf/k0;->c:LXe/o;

    iget-object v4, p0, Lgf/k0;->d:LXe/o;

    iget v5, p0, Lgf/k0;->e:I

    iget-boolean v6, p0, Lgf/k0;->f:Z

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lgf/k0$a;-><init>(LTe/I;LXe/o;LXe/o;IZ)V

    invoke-interface {v0, v7}, LTe/G;->b(LTe/I;)V

    return-void
.end method
