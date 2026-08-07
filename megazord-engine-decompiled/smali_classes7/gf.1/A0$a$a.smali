.class public final Lgf/A0$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/A0$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LVe/c;",
        ">;",
        "LTe/f;"
    }
.end annotation


# static fields
.field public static final c:J = -0x28bcbbd2bea3b5e9L


# instance fields
.field public final b:Lgf/A0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgf/A0$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgf/A0$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgf/A0$a<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lgf/A0$a$a;->b:Lgf/A0$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lgf/A0$a$a;->b:Lgf/A0$a;

    invoke-virtual {v0}, Lgf/A0$a;->b()V

    return-void
.end method

.method public e(LVe/c;)V
    .locals 0

    invoke-static {p0, p1}, LYe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lgf/A0$a$a;->b:Lgf/A0$a;

    invoke-virtual {v0, p1}, Lgf/A0$a;->c(Ljava/lang/Throwable;)V

    return-void
.end method
