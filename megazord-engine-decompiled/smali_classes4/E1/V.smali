.class public LE1/V;
.super LB1/i;
.source "SourceFile"


# instance fields
.field public final e:LQ1/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQ1/l<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LQ1/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQ1/l<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, LB1/i;-><init>()V

    iput-object p1, p0, LE1/V;->e:LQ1/l;

    return-void
.end method


# virtual methods
.method public O1()V
    .locals 0

    return-void
.end method

.method public final W1(LB1/b;)V
    .locals 1

    invoke-virtual {p1}, LB1/b;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iget-object v0, p0, LE1/V;->e:LQ1/l;

    invoke-static {p1, v0}, LU0/s;->a(Lcom/google/android/gms/common/api/Status;LQ1/l;)V

    return-void
.end method
