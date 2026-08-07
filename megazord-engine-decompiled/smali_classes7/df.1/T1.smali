.class public final Ldf/T1;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/T1$b;,
        Ldf/T1$c;,
        Ldf/T1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ldf/a<",
        "TT;",
        "LTe/l<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final d:J

.field public final e:J

.field public final f:I


# direct methods
.method public constructor <init>(LTe/l;JJI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;JJI)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    iput-wide p2, p0, Ldf/T1;->d:J

    iput-wide p4, p0, Ldf/T1;->e:J

    iput p6, p0, Ldf/T1;->f:I

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-",
            "LTe/l<",
            "TT;>;>;)V"
        }
    .end annotation

    iget-wide v0, p0, Ldf/T1;->e:J

    iget-wide v2, p0, Ldf/T1;->d:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Ldf/a;->c:LTe/l;

    new-instance v1, Ldf/T1$a;

    iget-wide v2, p0, Ldf/T1;->d:J

    iget v4, p0, Ldf/T1;->f:I

    invoke-direct {v1, p1, v2, v3, v4}, Ldf/T1$a;-><init>(LCi/c;JI)V

    invoke-virtual {v0, v1}, LTe/l;->l6(LTe/q;)V

    goto :goto_0

    :cond_0
    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Ldf/a;->c:LTe/l;

    new-instance v8, Ldf/T1$c;

    iget-wide v3, p0, Ldf/T1;->d:J

    iget-wide v5, p0, Ldf/T1;->e:J

    iget v7, p0, Ldf/T1;->f:I

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Ldf/T1$c;-><init>(LCi/c;JJI)V

    invoke-virtual {v0, v8}, LTe/l;->l6(LTe/q;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ldf/a;->c:LTe/l;

    new-instance v8, Ldf/T1$b;

    iget-wide v3, p0, Ldf/T1;->d:J

    iget-wide v5, p0, Ldf/T1;->e:J

    iget v7, p0, Ldf/T1;->f:I

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Ldf/T1$b;-><init>(LCi/c;JJI)V

    invoke-virtual {v0, v8}, LTe/l;->l6(LTe/q;)V

    :goto_0
    return-void
.end method
