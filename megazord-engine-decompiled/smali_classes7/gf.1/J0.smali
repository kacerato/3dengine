.class public final Lgf/J0;
.super LTe/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/J0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LTe/B<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:I

.field public final c:J


# direct methods
.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, LTe/B;-><init>()V

    iput p1, p0, Lgf/J0;->b:I

    int-to-long v0, p1

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lgf/J0;->c:J

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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v6, Lgf/J0$a;

    iget v0, p0, Lgf/J0;->b:I

    int-to-long v2, v0

    iget-wide v4, p0, Lgf/J0;->c:J

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lgf/J0$a;-><init>(LTe/I;JJ)V

    invoke-interface {p1, v6}, LTe/I;->e(LVe/c;)V

    invoke-virtual {v6}, Lgf/J0$a;->run()V

    return-void
.end method
