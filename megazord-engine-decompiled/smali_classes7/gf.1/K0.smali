.class public final Lgf/K0;
.super LTe/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/K0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LTe/B<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:J

.field public final c:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, LTe/B;-><init>()V

    iput-wide p1, p0, Lgf/K0;->b:J

    iput-wide p3, p0, Lgf/K0;->c:J

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance v6, Lgf/K0$a;

    iget-wide v2, p0, Lgf/K0;->b:J

    iget-wide v0, p0, Lgf/K0;->c:J

    add-long v4, v2, v0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lgf/K0$a;-><init>(LTe/I;JJ)V

    invoke-interface {p1, v6}, LTe/I;->e(LVe/c;)V

    invoke-virtual {v6}, Lgf/K0$a;->run()V

    return-void
.end method
