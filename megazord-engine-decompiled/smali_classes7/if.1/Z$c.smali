.class public final Lif/Z$c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/N;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lif/Z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LVe/c;",
        ">;",
        "LTe/N<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final d:J = 0x2e204f2d0e121106L


# instance fields
.field public final b:Lif/Z$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lif/Z$b<",
            "TT;*>;"
        }
    .end annotation
.end field

.field public final c:I


# direct methods
.method public constructor <init>(Lif/Z$b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lif/Z$b<",
            "TT;*>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lif/Z$c;->b:Lif/Z$b;

    iput p2, p0, Lif/Z$c;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-static {p0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lif/Z$c;->b:Lif/Z$b;

    iget v1, p0, Lif/Z$c;->c:I

    invoke-virtual {v0, p1, v1}, Lif/Z$b;->c(Ljava/lang/Object;I)V

    return-void
.end method

.method public e(LVe/c;)V
    .locals 0

    invoke-static {p0, p1}, LYe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lif/Z$c;->b:Lif/Z$b;

    iget v1, p0, Lif/Z$c;->c:I

    invoke-virtual {v0, p1, v1}, Lif/Z$b;->b(Ljava/lang/Throwable;I)V

    return-void
.end method
