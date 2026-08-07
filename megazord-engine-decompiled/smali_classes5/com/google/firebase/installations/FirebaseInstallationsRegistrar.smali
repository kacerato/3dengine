.class public Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-installations"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lo3/h;)LB3/j;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;->lambda$getComponents$0(Lo3/h;)LB3/j;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(Lo3/h;)LB3/j;
    .locals 6

    new-instance v0, Lcom/google/firebase/installations/a;

    const-class v1, Lf3/g;

    invoke-interface {p0, v1}, Lo3/h;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf3/g;

    const-class v2, Lz3/j;

    invoke-interface {p0, v2}, Lo3/h;->j(Ljava/lang/Class;)LA3/b;

    move-result-object v2

    const-class v3, Ln3/a;

    const-class v4, Ljava/util/concurrent/ExecutorService;

    invoke-static {v3, v4}, Lo3/F;->a(Ljava/lang/Class;Ljava/lang/Class;)Lo3/F;

    move-result-object v3

    invoke-interface {p0, v3}, Lo3/h;->f(Lo3/F;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ExecutorService;

    const-class v4, Ln3/b;

    const-class v5, Ljava/util/concurrent/Executor;

    invoke-static {v4, v5}, Lo3/F;->a(Ljava/lang/Class;Ljava/lang/Class;)Lo3/F;

    move-result-object v4

    invoke-interface {p0, v4}, Lo3/h;->f(Lo3/F;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    invoke-static {p0}, Lp3/y;->h(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/firebase/installations/a;-><init>(Lf3/g;LA3/b;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo3/g<",
            "*>;>;"
        }
    .end annotation

    const-class v0, LB3/j;

    invoke-static {v0}, Lo3/g;->f(Ljava/lang/Class;)Lo3/g$b;

    move-result-object v0

    const-string v1, "fire-installations"

    invoke-virtual {v0, v1}, Lo3/g$b;->h(Ljava/lang/String;)Lo3/g$b;

    move-result-object v0

    const-class v2, Lf3/g;

    invoke-static {v2}, Lo3/v;->l(Ljava/lang/Class;)Lo3/v;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo3/g$b;->b(Lo3/v;)Lo3/g$b;

    move-result-object v0

    const-class v2, Lz3/j;

    invoke-static {v2}, Lo3/v;->j(Ljava/lang/Class;)Lo3/v;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo3/g$b;->b(Lo3/v;)Lo3/g$b;

    move-result-object v0

    const-class v2, Ln3/a;

    const-class v3, Ljava/util/concurrent/ExecutorService;

    invoke-static {v2, v3}, Lo3/F;->a(Ljava/lang/Class;Ljava/lang/Class;)Lo3/F;

    move-result-object v2

    invoke-static {v2}, Lo3/v;->m(Lo3/F;)Lo3/v;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo3/g$b;->b(Lo3/v;)Lo3/g$b;

    move-result-object v0

    const-class v2, Ln3/b;

    const-class v3, Ljava/util/concurrent/Executor;

    invoke-static {v2, v3}, Lo3/F;->a(Ljava/lang/Class;Ljava/lang/Class;)Lo3/F;

    move-result-object v2

    invoke-static {v2}, Lo3/v;->m(Lo3/F;)Lo3/v;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo3/g$b;->b(Lo3/v;)Lo3/g$b;

    move-result-object v0

    new-instance v2, LB3/k;

    invoke-direct {v2}, LB3/k;-><init>()V

    invoke-virtual {v0, v2}, Lo3/g$b;->f(Lo3/k;)Lo3/g$b;

    move-result-object v0

    invoke-virtual {v0}, Lo3/g$b;->d()Lo3/g;

    move-result-object v0

    invoke-static {}, Lz3/i;->a()Lo3/g;

    move-result-object v2

    const-string v3, "18.0.0"

    invoke-static {v1, v3}, LN3/h;->b(Ljava/lang/String;Ljava/lang/String;)Lo3/g;

    move-result-object v1

    filled-new-array {v0, v2, v1}, [Lo3/g;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
