.class public final Lgf/F1;
.super Lgf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/F1$b;,
        Lgf/F1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lgf/a<",
        "TT;",
        "LTe/B<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final c:J

.field public final d:J

.field public final e:I


# direct methods
.method public constructor <init>(LTe/G;JJI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "TT;>;JJI)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lgf/a;-><init>(LTe/G;)V

    iput-wide p2, p0, Lgf/F1;->c:J

    iput-wide p4, p0, Lgf/F1;->d:J

    iput p6, p0, Lgf/F1;->e:I

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-",
            "LTe/B<",
            "TT;>;>;)V"
        }
    .end annotation

    iget-wide v0, p0, Lgf/F1;->c:J

    iget-wide v2, p0, Lgf/F1;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lgf/a;->b:LTe/G;

    new-instance v1, Lgf/F1$a;

    iget-wide v2, p0, Lgf/F1;->c:J

    iget v4, p0, Lgf/F1;->e:I

    invoke-direct {v1, p1, v2, v3, v4}, Lgf/F1$a;-><init>(LTe/I;JI)V

    invoke-interface {v0, v1}, LTe/G;->b(LTe/I;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgf/a;->b:LTe/G;

    new-instance v8, Lgf/F1$b;

    iget-wide v3, p0, Lgf/F1;->c:J

    iget-wide v5, p0, Lgf/F1;->d:J

    iget v7, p0, Lgf/F1;->e:I

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lgf/F1$b;-><init>(LTe/I;JJI)V

    invoke-interface {v0, v8}, LTe/G;->b(LTe/I;)V

    :goto_0
    return-void
.end method
