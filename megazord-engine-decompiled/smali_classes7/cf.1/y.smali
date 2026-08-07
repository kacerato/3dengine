.class public final Lcf/y;
.super LTe/c;
.source "SourceFile"


# instance fields
.field public final b:LTe/i;

.field public final c:LTe/h;


# direct methods
.method public constructor <init>(LTe/i;LTe/h;)V
    .locals 0

    invoke-direct {p0}, LTe/c;-><init>()V

    iput-object p1, p0, Lcf/y;->b:LTe/i;

    iput-object p2, p0, Lcf/y;->c:LTe/h;

    return-void
.end method


# virtual methods
.method public K0(LTe/f;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcf/y;->c:LTe/h;

    invoke-interface {v0, p1}, LTe/h;->a(LTe/f;)LTe/f;

    move-result-object p1

    iget-object v0, p0, Lcf/y;->b:LTe/i;

    invoke-interface {v0, p1}, LTe/i;->b(LTe/f;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :goto_0
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :goto_2
    throw p1
.end method
