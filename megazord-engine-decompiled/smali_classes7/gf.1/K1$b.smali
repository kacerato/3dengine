.class public final Lgf/K1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/K1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LTe/I<",
        "TU;>;"
    }
.end annotation


# instance fields
.field public final b:Lgf/K1$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgf/K1$a<",
            "TT;TU;TR;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lgf/K1;


# direct methods
.method public constructor <init>(Lgf/K1;Lgf/K1$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgf/K1$a<",
            "TT;TU;TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lgf/K1$b;->c:Lgf/K1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lgf/K1$b;->b:Lgf/K1$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lgf/K1$b;->b:Lgf/K1$a;

    invoke-virtual {v0, p1}, Lgf/K1$a;->c(LVe/c;)Z

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/K1$b;->b:Lgf/K1$a;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lgf/K1$b;->b:Lgf/K1$a;

    invoke-virtual {v0, p1}, Lgf/K1$a;->b(Ljava/lang/Throwable;)V

    return-void
.end method
