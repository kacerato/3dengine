.class public final Lcf/N;
.super LTe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcf/N$a;
    }
.end annotation


# instance fields
.field public final b:J

.field public final c:Ljava/util/concurrent/TimeUnit;

.field public final d:LTe/J;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;LTe/J;)V
    .locals 0

    invoke-direct {p0}, LTe/c;-><init>()V

    iput-wide p1, p0, Lcf/N;->b:J

    iput-object p3, p0, Lcf/N;->c:Ljava/util/concurrent/TimeUnit;

    iput-object p4, p0, Lcf/N;->d:LTe/J;

    return-void
.end method


# virtual methods
.method public K0(LTe/f;)V
    .locals 4

    new-instance v0, Lcf/N$a;

    invoke-direct {v0, p1}, Lcf/N$a;-><init>(LTe/f;)V

    invoke-interface {p1, v0}, LTe/f;->e(LVe/c;)V

    iget-object p1, p0, Lcf/N;->d:LTe/J;

    iget-wide v1, p0, Lcf/N;->b:J

    iget-object v3, p0, Lcf/N;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, v3}, LTe/J;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LVe/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcf/N$a;->a(LVe/c;)V

    return-void
.end method
