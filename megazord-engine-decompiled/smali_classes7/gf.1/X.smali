.class public final Lgf/X;
.super Lgf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/X$a;,
        Lgf/X$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lgf/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field public final c:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+",
            "LTe/G<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field public final d:Z

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(LTe/G;LXe/o;ZII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "TT;>;",
            "LXe/o<",
            "-TT;+",
            "LTe/G<",
            "+TU;>;>;ZII)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lgf/a;-><init>(LTe/G;)V

    iput-object p2, p0, Lgf/X;->c:LXe/o;

    iput-boolean p3, p0, Lgf/X;->d:Z

    iput p4, p0, Lgf/X;->e:I

    iput p5, p0, Lgf/X;->f:I

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TU;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/a;->b:LTe/G;

    iget-object v1, p0, Lgf/X;->c:LXe/o;

    invoke-static {v0, p1, v1}, Lgf/Y0;->b(LTe/G;LTe/I;LXe/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lgf/a;->b:LTe/G;

    new-instance v7, Lgf/X$b;

    iget-object v3, p0, Lgf/X;->c:LXe/o;

    iget-boolean v4, p0, Lgf/X;->d:Z

    iget v5, p0, Lgf/X;->e:I

    iget v6, p0, Lgf/X;->f:I

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lgf/X$b;-><init>(LTe/I;LXe/o;ZII)V

    invoke-interface {v0, v7}, LTe/G;->b(LTe/I;)V

    return-void
.end method
