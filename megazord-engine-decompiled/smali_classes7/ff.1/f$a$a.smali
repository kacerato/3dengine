.class public final Lff/f$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lff/f$a;
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
.field public static final c:J = -0x6f11cdf3dd210edfL


# instance fields
.field public final b:Lff/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lff/f$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lff/f$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lff/f$a<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lff/f$a$a;->b:Lff/f$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lff/f$a$a;->b:Lff/f$a;

    invoke-virtual {v0, p0}, Lff/f$a;->c(Lff/f$a$a;)V

    return-void
.end method

.method public b()V
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

    iget-object v0, p0, Lff/f$a$a;->b:Lff/f$a;

    invoke-virtual {v0, p0, p1}, Lff/f$a;->e(Lff/f$a$a;Ljava/lang/Throwable;)V

    return-void
.end method
