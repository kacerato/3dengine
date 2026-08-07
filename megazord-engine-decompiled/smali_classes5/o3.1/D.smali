.class public Lo3/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA3/b;
.implements LA3/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LA3/b<",
        "TT;>;",
        "LA3/a<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final c:LA3/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LA3/a$a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:LA3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LA3/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:LA3/a$a;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LA3/a$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile b:LA3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LA3/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo3/A;

    invoke-direct {v0}, Lo3/A;-><init>()V

    sput-object v0, Lo3/D;->c:LA3/a$a;

    new-instance v0, Lo3/B;

    invoke-direct {v0}, Lo3/B;-><init>()V

    sput-object v0, Lo3/D;->d:LA3/b;

    return-void
.end method

.method public constructor <init>(LA3/a$a;LA3/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA3/a$a<",
            "TT;>;",
            "LA3/b<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/D;->a:LA3/a$a;

    iput-object p2, p0, Lo3/D;->b:LA3/b;

    return-void
.end method

.method public static synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lo3/D;->g()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(LA3/a$a;LA3/a$a;LA3/b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lo3/D;->h(LA3/a$a;LA3/a$a;LA3/b;)V

    return-void
.end method

.method public static synthetic d(LA3/b;)V
    .locals 0

    invoke-static {p0}, Lo3/D;->f(LA3/b;)V

    return-void
.end method

.method public static e()Lo3/D;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lo3/D<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lo3/D;

    sget-object v1, Lo3/D;->c:LA3/a$a;

    sget-object v2, Lo3/D;->d:LA3/b;

    invoke-direct {v0, v1, v2}, Lo3/D;-><init>(LA3/a$a;LA3/b;)V

    return-object v0
.end method

.method public static synthetic f(LA3/b;)V
    .locals 0

    return-void
.end method

.method public static synthetic g()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic h(LA3/a$a;LA3/a$a;LA3/b;)V
    .locals 0

    invoke-interface {p0, p2}, LA3/a$a;->a(LA3/b;)V

    invoke-interface {p1, p2}, LA3/a$a;->a(LA3/b;)V

    return-void
.end method

.method public static i(LA3/b;)Lo3/D;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LA3/b<",
            "TT;>;)",
            "Lo3/D<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lo3/D;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lo3/D;-><init>(LA3/a$a;LA3/b;)V

    return-object v0
.end method


# virtual methods
.method public a(LA3/a$a;)V
    .locals 3
    .param p1    # LA3/a$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA3/a$a<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lo3/D;->b:LA3/b;

    sget-object v1, Lo3/D;->d:LA3/b;

    if-eq v0, v1, :cond_0

    invoke-interface {p1, v0}, LA3/a$a;->a(LA3/b;)V

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo3/D;->b:LA3/b;

    if-eq v0, v1, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lo3/D;->a:LA3/a$a;

    new-instance v2, Lo3/C;

    invoke-direct {v2, v1, p1}, Lo3/C;-><init>(LA3/a$a;LA3/a$a;)V

    iput-object v2, p0, Lo3/D;->a:LA3/a$a;

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    invoke-interface {p1, v0}, LA3/a$a;->a(LA3/b;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lo3/D;->b:LA3/b;

    invoke-interface {v0}, LA3/b;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public j(LA3/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA3/b<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lo3/D;->b:LA3/b;

    sget-object v1, Lo3/D;->d:LA3/b;

    if-ne v0, v1, :cond_0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo3/D;->a:LA3/a$a;

    const/4 v1, 0x0

    iput-object v1, p0, Lo3/D;->a:LA3/a$a;

    iput-object p1, p0, Lo3/D;->b:LA3/b;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0, p1}, LA3/a$a;->a(LA3/b;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "provide() can be called only once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
