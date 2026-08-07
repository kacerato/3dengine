.class public final Lif/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/N;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lif/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lif/f$a$a;,
        Lif/f$a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LTe/N<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LYe/h;

.field public final c:LTe/N;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/N<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final synthetic d:Lif/f;


# direct methods
.method public constructor <init>(Lif/f;LYe/h;LTe/N;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LYe/h;",
            "LTe/N<",
            "-TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lif/f$a;->d:Lif/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lif/f$a;->b:LYe/h;

    iput-object p3, p0, Lif/f$a;->c:LTe/N;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lif/f$a;->b:LYe/h;

    iget-object v1, p0, Lif/f$a;->d:Lif/f;

    iget-object v1, v1, Lif/f;->e:LTe/J;

    new-instance v2, Lif/f$a$b;

    invoke-direct {v2, p0, p1}, Lif/f$a$b;-><init>(Lif/f$a;Ljava/lang/Object;)V

    iget-object p1, p0, Lif/f$a;->d:Lif/f;

    iget-wide v3, p1, Lif/f;->c:J

    iget-object p1, p1, Lif/f;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4, p1}, LTe/J;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LVe/c;

    move-result-object p1

    invoke-virtual {v0, p1}, LYe/h;->a(LVe/c;)Z

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lif/f$a;->b:LYe/h;

    invoke-virtual {v0, p1}, LYe/h;->a(LVe/c;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    iget-object v0, p0, Lif/f$a;->b:LYe/h;

    iget-object v1, p0, Lif/f$a;->d:Lif/f;

    iget-object v1, v1, Lif/f;->e:LTe/J;

    new-instance v2, Lif/f$a$a;

    invoke-direct {v2, p0, p1}, Lif/f$a$a;-><init>(Lif/f$a;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lif/f$a;->d:Lif/f;

    iget-boolean v3, p1, Lif/f;->f:Z

    if-eqz v3, :cond_0

    iget-wide v3, p1, Lif/f;->c:J

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    iget-object p1, p1, Lif/f;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4, p1}, LTe/J;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LVe/c;

    move-result-object p1

    invoke-virtual {v0, p1}, LYe/h;->a(LVe/c;)Z

    return-void
.end method
