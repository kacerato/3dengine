.class public final Lgf/Q;
.super Lgf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/Q$a;
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
.field public final c:J

.field public final d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final e:Z


# direct methods
.method public constructor <init>(LTe/G;JLjava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "TT;>;JTT;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lgf/a;-><init>(LTe/G;)V

    iput-wide p2, p0, Lgf/Q;->c:J

    iput-object p4, p0, Lgf/Q;->d:Ljava/lang/Object;

    iput-boolean p5, p0, Lgf/Q;->e:Z

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

    iget-object v0, p0, Lgf/a;->b:LTe/G;

    new-instance v7, Lgf/Q$a;

    iget-wide v3, p0, Lgf/Q;->c:J

    iget-object v5, p0, Lgf/Q;->d:Ljava/lang/Object;

    iget-boolean v6, p0, Lgf/Q;->e:Z

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lgf/Q$a;-><init>(LTe/I;JLjava/lang/Object;Z)V

    invoke-interface {v0, v7}, LTe/G;->b(LTe/I;)V

    return-void
.end method
