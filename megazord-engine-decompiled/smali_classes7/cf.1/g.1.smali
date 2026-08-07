.class public final Lcf/g;
.super LTe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcf/g$a;
    }
.end annotation


# instance fields
.field public final b:LTe/g;


# direct methods
.method public constructor <init>(LTe/g;)V
    .locals 0

    invoke-direct {p0}, LTe/c;-><init>()V

    iput-object p1, p0, Lcf/g;->b:LTe/g;

    return-void
.end method


# virtual methods
.method public K0(LTe/f;)V
    .locals 1

    new-instance v0, Lcf/g$a;

    invoke-direct {v0, p1}, Lcf/g$a;-><init>(LTe/f;)V

    invoke-interface {p1, v0}, LTe/f;->e(LVe/c;)V

    :try_start_0
    iget-object p1, p0, Lcf/g;->b:LTe/g;

    invoke-interface {p1, v0}, LTe/g;->a(LTe/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {v0, p1}, Lcf/g$a;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
