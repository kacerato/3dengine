.class public final Lef/v$b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lef/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LVe/c;",
        ">;",
        "LTe/v<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final d:J = -0x2a13bcaec894a113L


# instance fields
.field public final b:Lef/v$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lef/v$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lef/v$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lef/v$a<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lef/v$b;->b:Lef/v$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lef/v$b;->b:Lef/v$a;

    invoke-virtual {v0}, Lef/v$a;->a()V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lef/v$b;->c:Ljava/lang/Object;

    iget-object p1, p0, Lef/v$b;->b:Lef/v$a;

    invoke-virtual {p1}, Lef/v$a;->a()V

    return-void
.end method

.method public c()V
    .locals 0

    invoke-static {p0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public e(LVe/c;)V
    .locals 0

    invoke-static {p0, p1}, LYe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lef/v$b;->b:Lef/v$a;

    invoke-virtual {v0, p0, p1}, Lef/v$a;->b(Lef/v$b;Ljava/lang/Throwable;)V

    return-void
.end method
