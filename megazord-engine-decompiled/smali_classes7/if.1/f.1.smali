.class public final Lif/f;
.super LTe/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lif/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/K<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LTe/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/Q<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:LTe/J;

.field public final f:Z


# direct methods
.method public constructor <init>(LTe/Q;JLjava/util/concurrent/TimeUnit;LTe/J;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/Q<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/K;-><init>()V

    iput-object p1, p0, Lif/f;->b:LTe/Q;

    iput-wide p2, p0, Lif/f;->c:J

    iput-object p4, p0, Lif/f;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lif/f;->e:LTe/J;

    iput-boolean p6, p0, Lif/f;->f:Z

    return-void
.end method


# virtual methods
.method public d1(LTe/N;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/N<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, LYe/h;

    invoke-direct {v0}, LYe/h;-><init>()V

    invoke-interface {p1, v0}, LTe/N;->e(LVe/c;)V

    iget-object v1, p0, Lif/f;->b:LTe/Q;

    new-instance v2, Lif/f$a;

    invoke-direct {v2, p0, v0, p1}, Lif/f$a;-><init>(Lif/f;LYe/h;LTe/N;)V

    invoke-interface {v1, v2}, LTe/Q;->a(LTe/N;)V

    return-void
.end method
