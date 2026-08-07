.class public final Lgf/d0;
.super LTe/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/d0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/B<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/B;-><init>()V

    iput-object p1, p0, Lgf/d0;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lgf/d0$a;

    iget-object v1, p0, Lgf/d0;->b:[Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lgf/d0$a;-><init>(LTe/I;[Ljava/lang/Object;)V

    invoke-interface {p1, v0}, LTe/I;->e(LVe/c;)V

    iget-boolean p1, v0, Lgf/d0$a;->e:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lgf/d0$a;->c()V

    return-void
.end method
