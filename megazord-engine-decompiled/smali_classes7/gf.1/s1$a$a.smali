.class public final Lgf/s1$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/s1$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LVe/c;",
        ">;",
        "LTe/I<",
        "TU;>;"
    }
.end annotation


# static fields
.field public static final c:J = -0x78a53ec6852cfbbfL


# instance fields
.field public final synthetic b:Lgf/s1$a;


# direct methods
.method public constructor <init>(Lgf/s1$a;)V
    .locals 0

    iput-object p1, p0, Lgf/s1$a$a;->b:Lgf/s1$a;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lgf/s1$a$a;->b:Lgf/s1$a;

    invoke-virtual {v0}, Lgf/s1$a;->b()V

    return-void
.end method

.method public e(LVe/c;)V
    .locals 0

    invoke-static {p0, p1}, LYe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    invoke-static {p0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object p1, p0, Lgf/s1$a$a;->b:Lgf/s1$a;

    invoke-virtual {p1}, Lgf/s1$a;->b()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lgf/s1$a$a;->b:Lgf/s1$a;

    invoke-virtual {v0, p1}, Lgf/s1$a;->c(Ljava/lang/Throwable;)V

    return-void
.end method
