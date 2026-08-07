.class public final Lcf/i;
.super LTe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcf/i$a;
    }
.end annotation


# instance fields
.field public final b:LTe/i;

.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:LTe/J;

.field public final f:Z


# direct methods
.method public constructor <init>(LTe/i;JLjava/util/concurrent/TimeUnit;LTe/J;Z)V
    .locals 0

    invoke-direct {p0}, LTe/c;-><init>()V

    iput-object p1, p0, Lcf/i;->b:LTe/i;

    iput-wide p2, p0, Lcf/i;->c:J

    iput-object p4, p0, Lcf/i;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lcf/i;->e:LTe/J;

    iput-boolean p6, p0, Lcf/i;->f:Z

    return-void
.end method


# virtual methods
.method public K0(LTe/f;)V
    .locals 9

    iget-object v0, p0, Lcf/i;->b:LTe/i;

    new-instance v8, Lcf/i$a;

    iget-wide v3, p0, Lcf/i;->c:J

    iget-object v5, p0, Lcf/i;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcf/i;->e:LTe/J;

    iget-boolean v7, p0, Lcf/i;->f:Z

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcf/i$a;-><init>(LTe/f;JLjava/util/concurrent/TimeUnit;LTe/J;Z)V

    invoke-interface {v0, v8}, LTe/i;->b(LTe/f;)V

    return-void
.end method
