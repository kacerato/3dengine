.class public final Lgf/n1;
.super Lgf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/n1$a;,
        Lgf/n1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lgf/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final c:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+",
            "LTe/G<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final d:I

.field public final e:Z


# direct methods
.method public constructor <init>(LTe/G;LXe/o;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "TT;>;",
            "LXe/o<",
            "-TT;+",
            "LTe/G<",
            "+TR;>;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lgf/a;-><init>(LTe/G;)V

    iput-object p2, p0, Lgf/n1;->c:LXe/o;

    iput p3, p0, Lgf/n1;->d:I

    iput-boolean p4, p0, Lgf/n1;->e:Z

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/a;->b:LTe/G;

    iget-object v1, p0, Lgf/n1;->c:LXe/o;

    invoke-static {v0, p1, v1}, Lgf/Y0;->b(LTe/G;LTe/I;LXe/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lgf/a;->b:LTe/G;

    new-instance v1, Lgf/n1$b;

    iget-object v2, p0, Lgf/n1;->c:LXe/o;

    iget v3, p0, Lgf/n1;->d:I

    iget-boolean v4, p0, Lgf/n1;->e:Z

    invoke-direct {v1, p1, v2, v3, v4}, Lgf/n1$b;-><init>(LTe/I;LXe/o;IZ)V

    invoke-interface {v0, v1}, LTe/G;->b(LTe/I;)V

    return-void
.end method
