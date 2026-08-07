.class public abstract Lhf/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laf/a;
.implements LCi/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhf/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Laf/a<",
        "TT;>;",
        "LCi/d;"
    }
.end annotation


# instance fields
.field public final b:LXe/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/r<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:LXe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/c<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lpf/a;",
            ">;"
        }
    .end annotation
.end field

.field public d:LCi/d;

.field public e:Z


# direct methods
.method public constructor <init>(LXe/r;LXe/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/r<",
            "-TT;>;",
            "LXe/c<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lpf/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhf/e$b;->b:LXe/r;

    iput-object p2, p0, Lhf/e$b;->c:LXe/c;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    iget-object v0, p0, Lhf/e$b;->d:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-interface {p0, p1}, Laf/a;->p(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lhf/e$b;->e:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lhf/e$b;->d:LCi/d;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, LCi/d;->i(J)V

    :cond_0
    return-void
.end method

.method public final i(J)V
    .locals 1

    iget-object v0, p0, Lhf/e$b;->d:LCi/d;

    invoke-interface {v0, p1, p2}, LCi/d;->i(J)V

    return-void
.end method
