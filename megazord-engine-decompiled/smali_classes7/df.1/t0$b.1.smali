.class public final Ldf/t0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "LWe/a<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final b:LTe/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/l<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:J

.field public final e:Ljava/util/concurrent/TimeUnit;

.field public final f:LTe/J;


# direct methods
.method public constructor <init>(LTe/l;IJLjava/util/concurrent/TimeUnit;LTe/J;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldf/t0$b;->b:LTe/l;

    iput p2, p0, Ldf/t0$b;->c:I

    iput-wide p3, p0, Ldf/t0$b;->d:J

    iput-object p5, p0, Ldf/t0$b;->e:Ljava/util/concurrent/TimeUnit;

    iput-object p6, p0, Ldf/t0$b;->f:LTe/J;

    return-void
.end method


# virtual methods
.method public a()LWe/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LWe/a<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Ldf/t0$b;->b:LTe/l;

    iget v1, p0, Ldf/t0$b;->c:I

    iget-wide v2, p0, Ldf/t0$b;->d:J

    iget-object v4, p0, Ldf/t0$b;->e:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Ldf/t0$b;->f:LTe/J;

    invoke-virtual/range {v0 .. v5}, LTe/l;->k5(IJLjava/util/concurrent/TimeUnit;LTe/J;)LWe/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Ldf/t0$b;->a()LWe/a;

    move-result-object v0

    return-object v0
.end method
