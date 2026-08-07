.class public abstract LEg/y$a;
.super LEg/b;
.source "SourceFile"


# annotations
.annotation build LFf/f0;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = LEg/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LEg/b<",
        "LEg/y;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:LEg/y;
    .annotation build Ldg/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:LEg/y;
    .annotation build Ldg/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(LEg/y;)V
    .locals 0
    .param p1    # LEg/y;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, LEg/b;-><init>()V

    iput-object p1, p0, LEg/y$a;->b:LEg/y;

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, LEg/y;

    invoke-virtual {p0, p1, p2}, LEg/y$a;->f(LEg/y;Ljava/lang/Object;)V

    return-void
.end method

.method public f(LEg/y;Ljava/lang/Object;)V
    .locals 2
    .param p1    # LEg/y;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    iget-object v0, p0, LEg/y$a;->b:LEg/y;

    goto :goto_1

    :cond_1
    iget-object v0, p0, LEg/y$a;->c:LEg/y;

    :goto_1
    if-eqz v0, :cond_2

    invoke-static {}, LEg/y;->i()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    invoke-static {v1, p1, p0, v0}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object p1, p0, LEg/y$a;->b:LEg/y;

    iget-object p2, p0, LEg/y$a;->c:LEg/y;

    invoke-static {p2}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-static {p1, p2}, LEg/y;->g(LEg/y;LEg/y;)V

    :cond_2
    return-void
.end method
