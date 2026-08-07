.class public final Ldf/t0$o;
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
    name = "o"
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

.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:LTe/J;


# direct methods
.method public constructor <init>(LTe/l;JLjava/util/concurrent/TimeUnit;LTe/J;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldf/t0$o;->b:LTe/l;

    iput-wide p2, p0, Ldf/t0$o;->c:J

    iput-object p4, p0, Ldf/t0$o;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Ldf/t0$o;->e:LTe/J;

    return-void
.end method


# virtual methods
.method public a()LWe/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LWe/a<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Ldf/t0$o;->b:LTe/l;

    iget-wide v1, p0, Ldf/t0$o;->c:J

    iget-object v3, p0, Ldf/t0$o;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Ldf/t0$o;->e:LTe/J;

    invoke-virtual {v0, v1, v2, v3, v4}, LTe/l;->n5(JLjava/util/concurrent/TimeUnit;LTe/J;)LWe/a;

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

    invoke-virtual {p0}, Ldf/t0$o;->a()LWe/a;

    move-result-object v0

    return-object v0
.end method
