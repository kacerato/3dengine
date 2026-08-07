.class public final Lrf/f$c;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LCi/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrf/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LCi/d;"
    }
.end annotation


# static fields
.field public static final h:J = 0x679849349531b12L


# instance fields
.field public final b:LCi/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:Lrf/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrf/f<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/Object;

.field public final e:Ljava/util/concurrent/atomic/AtomicLong;

.field public volatile f:Z

.field public g:J


# direct methods
.method public constructor <init>(LCi/c;Lrf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;",
            "Lrf/f<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lrf/f$c;->b:LCi/c;

    iput-object p2, p0, Lrf/f$c;->c:Lrf/f;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lrf/f$c;->e:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-boolean v0, p0, Lrf/f$c;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lrf/f$c;->f:Z

    iget-object v0, p0, Lrf/f$c;->c:Lrf/f;

    invoke-virtual {v0, p0}, Lrf/f;->f9(Lrf/f$c;)V

    :cond_0
    return-void
.end method

.method public i(J)V
    .locals 1

    invoke-static {p1, p2}, Lmf/j;->m(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrf/f$c;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    iget-object p1, p0, Lrf/f$c;->c:Lrf/f;

    iget-object p1, p1, Lrf/f;->c:Lrf/f$b;

    invoke-interface {p1, p0}, Lrf/f$b;->e(Lrf/f$c;)V

    :cond_0
    return-void
.end method
