.class public final Lef/l;
.super Lef/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lef/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lef/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:LTe/J;


# direct methods
.method public constructor <init>(LTe/y;JLjava/util/concurrent/TimeUnit;LTe/J;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/y<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lef/a;-><init>(LTe/y;)V

    iput-wide p2, p0, Lef/l;->c:J

    iput-object p4, p0, Lef/l;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lef/l;->e:LTe/J;

    return-void
.end method


# virtual methods
.method public t1(LTe/v;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lef/a;->b:LTe/y;

    new-instance v7, Lef/l$a;

    iget-wide v3, p0, Lef/l;->c:J

    iget-object v5, p0, Lef/l;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lef/l;->e:LTe/J;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lef/l$a;-><init>(LTe/v;JLjava/util/concurrent/TimeUnit;LTe/J;)V

    invoke-interface {v0, v7}, LTe/y;->d(LTe/v;)V

    return-void
.end method
