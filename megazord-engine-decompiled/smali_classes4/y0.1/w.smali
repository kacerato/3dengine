.class public Ly0/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lz0/d;

.field public final c:Ly0/y;

.field public final d:LA0/a;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lz0/d;Ly0/y;LA0/a;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly0/w;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Ly0/w;->b:Lz0/d;

    iput-object p3, p0, Ly0/w;->c:Ly0/y;

    iput-object p4, p0, Ly0/w;->d:LA0/a;

    return-void
.end method

.method public static synthetic a(Ly0/w;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ly0/w;->d()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ly0/w;)V
    .locals 0

    invoke-virtual {p0}, Ly0/w;->e()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    iget-object v0, p0, Ly0/w;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Ly0/u;

    invoke-direct {v1, p0}, Ly0/u;-><init>(Ly0/w;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic d()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Ly0/w;->b:Lz0/d;

    invoke-interface {v0}, Lz0/d;->G()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp0/r;

    iget-object v2, p0, Ly0/w;->c:Ly0/y;

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Ly0/y;->a(Lp0/r;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic e()V
    .locals 2

    iget-object v0, p0, Ly0/w;->d:LA0/a;

    new-instance v1, Ly0/v;

    invoke-direct {v1, p0}, Ly0/v;-><init>(Ly0/w;)V

    invoke-interface {v0, v1}, LA0/a;->a(LA0/a$a;)Ljava/lang/Object;

    return-void
.end method
