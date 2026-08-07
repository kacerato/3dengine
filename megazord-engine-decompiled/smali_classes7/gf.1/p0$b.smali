.class public final Lgf/p0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/p0;
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
        "Lnf/a<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final b:LTe/B;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/B<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:J

.field public final e:Ljava/util/concurrent/TimeUnit;

.field public final f:LTe/J;


# direct methods
.method public constructor <init>(LTe/B;IJLjava/util/concurrent/TimeUnit;LTe/J;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/B<",
            "TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgf/p0$b;->b:LTe/B;

    iput p2, p0, Lgf/p0$b;->c:I

    iput-wide p3, p0, Lgf/p0$b;->d:J

    iput-object p5, p0, Lgf/p0$b;->e:Ljava/util/concurrent/TimeUnit;

    iput-object p6, p0, Lgf/p0$b;->f:LTe/J;

    return-void
.end method


# virtual methods
.method public a()Lnf/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnf/a<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lgf/p0$b;->b:LTe/B;

    iget v1, p0, Lgf/p0$b;->c:I

    iget-wide v2, p0, Lgf/p0$b;->d:J

    iget-object v4, p0, Lgf/p0$b;->e:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lgf/p0$b;->f:LTe/J;

    invoke-virtual/range {v0 .. v5}, LTe/B;->I4(IJLjava/util/concurrent/TimeUnit;LTe/J;)Lnf/a;

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

    invoke-virtual {p0}, Lgf/p0$b;->a()Lnf/a;

    move-result-object v0

    return-object v0
.end method
