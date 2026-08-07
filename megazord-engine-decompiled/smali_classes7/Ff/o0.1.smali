.class public LFf/o0;
.super LFf/n0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LFf/n0;-><init>()V

    return-void
.end method

.method public static final l(Ljava/lang/Object;Leg/a;)Ljava/lang/Object;
    .locals 1
    .annotation runtime LFf/D;
    .end annotation

    .annotation build LWf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Leg/a<",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "lock"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p1}, Leg/a;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lkotlin/jvm/internal/J;->d(I)V

    monitor-exit p0

    invoke-static {v0}, Lkotlin/jvm/internal/J;->c(I)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lkotlin/jvm/internal/J;->d(I)V

    monitor-exit p0

    invoke-static {v0}, Lkotlin/jvm/internal/J;->c(I)V

    throw p1
.end method
