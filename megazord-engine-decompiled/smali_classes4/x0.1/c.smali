.class public Lx0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx0/e;


# static fields
.field public static final f:Ljava/util/logging/Logger;


# instance fields
.field public final a:Ly0/y;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lq0/e;

.field public final d:Lz0/d;

.field public final e:LA0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lp0/w;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lx0/c;->f:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lq0/e;Ly0/y;Lz0/d;LA0/a;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx0/c;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lx0/c;->c:Lq0/e;

    iput-object p3, p0, Lx0/c;->a:Ly0/y;

    iput-object p4, p0, Lx0/c;->d:Lz0/d;

    iput-object p5, p0, Lx0/c;->e:LA0/a;

    return-void
.end method

.method public static synthetic b(Lx0/c;Lp0/r;Lp0/j;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lx0/c;->d(Lp0/r;Lp0/j;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lx0/c;Lp0/r;Ll0/j;Lp0/j;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lx0/c;->e(Lp0/r;Ll0/j;Lp0/j;)V

    return-void
.end method


# virtual methods
.method public a(Lp0/r;Lp0/j;Ll0/j;)V
    .locals 2

    iget-object v0, p0, Lx0/c;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lx0/a;

    invoke-direct {v1, p0, p1, p3, p2}, Lx0/a;-><init>(Lx0/c;Lp0/r;Ll0/j;Lp0/j;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic d(Lp0/r;Lp0/j;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lx0/c;->d:Lz0/d;

    invoke-interface {v0, p1, p2}, Lz0/d;->Y(Lp0/r;Lp0/j;)Lz0/k;

    iget-object p2, p0, Lx0/c;->a:Ly0/y;

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Ly0/y;->a(Lp0/r;I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic e(Lp0/r;Ll0/j;Lp0/j;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lx0/c;->c:Lq0/e;

    invoke-virtual {p1}, Lp0/r;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lq0/e;->get(Ljava/lang/String;)Lq0/n;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p3, "Transport backend \'%s\' is not registered"

    invoke-virtual {p1}, Lp0/r;->b()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lx0/c;->f:Ljava/util/logging/Logger;

    invoke-virtual {p3, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/IllegalArgumentException;

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p3}, Ll0/j;->a(Ljava/lang/Exception;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-interface {v0, p3}, Lq0/n;->b(Lp0/j;)Lp0/j;

    move-result-object p3

    iget-object v0, p0, Lx0/c;->e:LA0/a;

    new-instance v1, Lx0/b;

    invoke-direct {v1, p0, p1, p3}, Lx0/b;-><init>(Lx0/c;Lp0/r;Lp0/j;)V

    invoke-interface {v0, v1}, LA0/a;->a(LA0/a$a;)Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ll0/j;->a(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p3, Lx0/c;->f:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error scheduling event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Ll0/j;->a(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method
