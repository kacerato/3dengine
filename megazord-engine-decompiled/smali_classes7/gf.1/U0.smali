.class public final Lgf/U0;
.super Lgf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/U0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lgf/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final c:LXe/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final d:J


# direct methods
.method public constructor <init>(LTe/B;JLXe/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/B<",
            "TT;>;J",
            "LXe/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lgf/a;-><init>(LTe/G;)V

    iput-object p4, p0, Lgf/U0;->c:LXe/r;

    iput-wide p2, p0, Lgf/U0;->d:J

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v5, LYe/h;

    invoke-direct {v5}, LYe/h;-><init>()V

    invoke-interface {p1, v5}, LTe/I;->e(LVe/c;)V

    new-instance v7, Lgf/U0$a;

    iget-wide v2, p0, Lgf/U0;->d:J

    iget-object v4, p0, Lgf/U0;->c:LXe/r;

    iget-object v6, p0, Lgf/a;->b:LTe/G;

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lgf/U0$a;-><init>(LTe/I;JLXe/r;LYe/h;LTe/G;)V

    invoke-virtual {v7}, Lgf/U0$a;->b()V

    return-void
.end method
