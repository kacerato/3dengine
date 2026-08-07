.class public final synthetic Lp3/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/p$c;


# instance fields
.field public final synthetic a:Lp3/o;

.field public final synthetic b:Ljava/util/concurrent/Callable;

.field public final synthetic c:J

.field public final synthetic d:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public synthetic constructor <init>(Lp3/o;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp3/k;->a:Lp3/o;

    iput-object p2, p0, Lp3/k;->b:Ljava/util/concurrent/Callable;

    iput-wide p3, p0, Lp3/k;->c:J

    iput-object p5, p0, Lp3/k;->d:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public final a(Lp3/p$b;)Ljava/util/concurrent/ScheduledFuture;
    .locals 6

    iget-object v0, p0, Lp3/k;->a:Lp3/o;

    iget-object v1, p0, Lp3/k;->b:Ljava/util/concurrent/Callable;

    iget-wide v2, p0, Lp3/k;->c:J

    iget-object v4, p0, Lp3/k;->d:Ljava/util/concurrent/TimeUnit;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lp3/o;->a(Lp3/o;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;Lp3/p$b;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method
