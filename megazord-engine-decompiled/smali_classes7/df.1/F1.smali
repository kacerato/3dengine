.class public final Ldf/F1;
.super LTe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/l<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final c:LCi/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:J


# direct methods
.method public constructor <init>(LCi/b;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/b<",
            "TT;>;J)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/l;-><init>()V

    iput-object p1, p0, Ldf/F1;->c:LCi/b;

    iput-wide p2, p0, Ldf/F1;->d:J

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/F1;->c:LCi/b;

    new-instance v1, Ldf/B1$a;

    iget-wide v2, p0, Ldf/F1;->d:J

    invoke-direct {v1, p1, v2, v3}, Ldf/B1$a;-><init>(LCi/c;J)V

    invoke-interface {v0, v1}, LCi/b;->l(LCi/c;)V

    return-void
.end method
