.class public final Lcf/B;
.super LTe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcf/B$a;
    }
.end annotation


# instance fields
.field public final b:[LTe/i;


# direct methods
.method public constructor <init>([LTe/i;)V
    .locals 0

    invoke-direct {p0}, LTe/c;-><init>()V

    iput-object p1, p0, Lcf/B;->b:[LTe/i;

    return-void
.end method


# virtual methods
.method public K0(LTe/f;)V
    .locals 6

    new-instance v0, LVe/b;

    invoke-direct {v0}, LVe/b;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    new-instance v2, Lcf/B$a;

    iget-object v3, p0, Lcf/B;->b:[LTe/i;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, p1, v1, v0, v3}, Lcf/B$a;-><init>(LTe/f;Ljava/util/concurrent/atomic/AtomicBoolean;LVe/b;I)V

    invoke-interface {p1, v0}, LTe/f;->e(LVe/c;)V

    iget-object p1, p0, Lcf/B;->b:[LTe/i;

    array-length v1, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    invoke-virtual {v0}, LVe/b;->d()Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    :cond_0
    if-nez v4, :cond_1

    invoke-virtual {v0}, LVe/b;->dispose()V

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "A completable source is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcf/B$a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    invoke-interface {v4, v2}, LTe/i;->b(LTe/f;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcf/B$a;->a()V

    return-void
.end method
