.class public Lkf/q$b;
.super Lkf/q$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkf/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final b:Ljava/lang/Runnable;

.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    invoke-direct {p0}, Lkf/q$f;-><init>()V

    iput-object p1, p0, Lkf/q$b;->b:Ljava/lang/Runnable;

    iput-wide p2, p0, Lkf/q$b;->c:J

    iput-object p4, p0, Lkf/q$b;->d:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public b(LTe/J$c;LTe/f;)LVe/c;
    .locals 3

    new-instance v0, Lkf/q$d;

    iget-object v1, p0, Lkf/q$b;->b:Ljava/lang/Runnable;

    invoke-direct {v0, v1, p2}, Lkf/q$d;-><init>(Ljava/lang/Runnable;LTe/f;)V

    iget-wide v1, p0, Lkf/q$b;->c:J

    iget-object p2, p0, Lkf/q$b;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, p2}, LTe/J$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LVe/c;

    move-result-object p1

    return-object p1
.end method
