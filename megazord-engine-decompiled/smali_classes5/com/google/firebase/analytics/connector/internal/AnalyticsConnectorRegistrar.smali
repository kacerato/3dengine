.class public Lcom/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build LT0/a;
.end annotation

.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$getComponents$0(Lo3/h;)Lh3/a;
    .locals 3

    const-class v0, Lf3/g;

    invoke-interface {p0, v0}, Lo3/h;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf3/g;

    const-class v1, Landroid/content/Context;

    invoke-interface {p0, v1}, Lo3/h;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lx3/d;

    invoke-interface {p0, v2}, Lo3/h;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx3/d;

    invoke-static {v0, v1, p0}, Lh3/b;->j(Lf3/g;Landroid/content/Context;Lx3/d;)Lh3/a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic zza(Lo3/h;)Lh3/a;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar;->lambda$getComponents$0(Lo3/h;)Lh3/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 3
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo3/g<",
            "*>;>;"
        }
    .end annotation

    const-class v0, Lh3/a;

    invoke-static {v0}, Lo3/g;->f(Ljava/lang/Class;)Lo3/g$b;

    move-result-object v0

    const-class v1, Lf3/g;

    invoke-static {v1}, Lo3/v;->l(Ljava/lang/Class;)Lo3/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo3/g$b;->b(Lo3/v;)Lo3/g$b;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo3/v;->l(Ljava/lang/Class;)Lo3/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo3/g$b;->b(Lo3/v;)Lo3/g$b;

    move-result-object v0

    const-class v1, Lx3/d;

    invoke-static {v1}, Lo3/v;->l(Ljava/lang/Class;)Lo3/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo3/g$b;->b(Lo3/v;)Lo3/g$b;

    move-result-object v0

    sget-object v1, Li3/b;->a:Li3/b;

    invoke-virtual {v0, v1}, Lo3/g$b;->f(Lo3/k;)Lo3/g$b;

    move-result-object v0

    invoke-virtual {v0}, Lo3/g$b;->e()Lo3/g$b;

    move-result-object v0

    invoke-virtual {v0}, Lo3/g$b;->d()Lo3/g;

    move-result-object v0

    const-string v1, "fire-analytics"

    const-string v2, "22.5.0"

    invoke-static {v1, v2}, LN3/h;->b(Ljava/lang/String;Ljava/lang/String;)Lo3/g;

    move-result-object v1

    filled-new-array {v0, v1}, [Lo3/g;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
