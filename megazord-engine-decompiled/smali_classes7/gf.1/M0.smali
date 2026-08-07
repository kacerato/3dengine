.class public final Lgf/M0;
.super LTe/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/M0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "LTe/K<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final b:LTe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/G<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field public final d:LXe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/c<",
            "TR;-TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/G;Ljava/lang/Object;LXe/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "TT;>;TR;",
            "LXe/c<",
            "TR;-TT;TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/K;-><init>()V

    iput-object p1, p0, Lgf/M0;->b:LTe/G;

    iput-object p2, p0, Lgf/M0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lgf/M0;->d:LXe/c;

    return-void
.end method


# virtual methods
.method public d1(LTe/N;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/N<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/M0;->b:LTe/G;

    new-instance v1, Lgf/M0$a;

    iget-object v2, p0, Lgf/M0;->d:LXe/c;

    iget-object v3, p0, Lgf/M0;->c:Ljava/lang/Object;

    invoke-direct {v1, p1, v2, v3}, Lgf/M0$a;-><init>(LTe/N;LXe/c;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, LTe/G;->b(LTe/I;)V

    return-void
.end method
