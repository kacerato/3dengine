.class public final Ldf/U;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/U$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ldf/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final d:J

.field public final e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final f:Z


# direct methods
.method public constructor <init>(LTe/l;JLjava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;JTT;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    iput-wide p2, p0, Ldf/U;->d:J

    iput-object p4, p0, Ldf/U;->e:Ljava/lang/Object;

    iput-boolean p5, p0, Ldf/U;->f:Z

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/a;->c:LTe/l;

    new-instance v7, Ldf/U$a;

    iget-wide v3, p0, Ldf/U;->d:J

    iget-object v5, p0, Ldf/U;->e:Ljava/lang/Object;

    iget-boolean v6, p0, Ldf/U;->f:Z

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Ldf/U$a;-><init>(LCi/c;JLjava/lang/Object;Z)V

    invoke-virtual {v0, v7}, LTe/l;->l6(LTe/q;)V

    return-void
.end method
