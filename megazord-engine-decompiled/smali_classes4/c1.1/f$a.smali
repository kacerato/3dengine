.class public Lc1/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc1/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/List;

.field public b:Lc1/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public c:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc1/f$a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/n;)Lc1/f$a;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Ld3/a;
    .end annotation

    iget-object v0, p0, Lc1/f$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b()Lc1/f;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v6, Lc1/f;

    iget-object v1, p0, Lc1/f$a;->a:Ljava/util/List;

    iget-object v2, p0, Lc1/f$a;->b:Lc1/a;

    iget-object v3, p0, Lc1/f$a;->c:Ljava/util/concurrent/Executor;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lc1/f;-><init>(Ljava/util/List;Lc1/a;Ljava/util/concurrent/Executor;ZLc1/l;)V

    return-object v6
.end method

.method public c(Lc1/a;)Lc1/f$a;
    .locals 1
    .param p1    # Lc1/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Ld3/a;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc1/f$a;->d(Lc1/a;Ljava/util/concurrent/Executor;)Lc1/f$a;

    move-result-object p1

    return-object p1
.end method

.method public d(Lc1/a;Ljava/util/concurrent/Executor;)Lc1/f$a;
    .locals 0
    .param p1    # Lc1/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Ld3/a;
    .end annotation

    iput-object p1, p0, Lc1/f$a;->b:Lc1/a;

    iput-object p2, p0, Lc1/f$a;->c:Ljava/util/concurrent/Executor;

    return-object p0
.end method
