.class public final Lgf/p0$o;
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
    name = "o"
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

.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:LTe/J;


# direct methods
.method public constructor <init>(LTe/B;JLjava/util/concurrent/TimeUnit;LTe/J;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/B<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgf/p0$o;->b:LTe/B;

    iput-wide p2, p0, Lgf/p0$o;->c:J

    iput-object p4, p0, Lgf/p0$o;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lgf/p0$o;->e:LTe/J;

    return-void
.end method


# virtual methods
.method public a()Lnf/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnf/a<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lgf/p0$o;->b:LTe/B;

    iget-wide v1, p0, Lgf/p0$o;->c:J

    iget-object v3, p0, Lgf/p0$o;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lgf/p0$o;->e:LTe/J;

    invoke-virtual {v0, v1, v2, v3, v4}, LTe/B;->L4(JLjava/util/concurrent/TimeUnit;LTe/J;)Lnf/a;

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

    invoke-virtual {p0}, Lgf/p0$o;->a()Lnf/a;

    move-result-object v0

    return-object v0
.end method
