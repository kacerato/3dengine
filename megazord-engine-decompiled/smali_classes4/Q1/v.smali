.class public final LQ1/v;
.super LQ1/a;
.source "SourceFile"


# instance fields
.field public final a:LQ1/Q;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LQ1/a;-><init>()V

    new-instance v0, LQ1/Q;

    invoke-direct {v0}, LQ1/Q;-><init>()V

    iput-object v0, p0, LQ1/v;->a:LQ1/Q;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, LQ1/v;->a:LQ1/Q;

    invoke-virtual {v0}, LQ1/Q;->u()Z

    move-result v0

    return v0
.end method

.method public final b(LQ1/h;)LQ1/a;
    .locals 2
    .param p1    # LQ1/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, LQ1/o;

    invoke-direct {v0, p0, p1}, LQ1/o;-><init>(LQ1/v;LQ1/h;)V

    iget-object p1, p0, LQ1/v;->a:LQ1/Q;

    sget-object v1, LQ1/m;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v1, v0}, LQ1/Q;->l(Ljava/util/concurrent/Executor;LQ1/g;)LQ1/k;

    return-object p0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, LQ1/v;->a:LQ1/Q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LQ1/Q;->C(Ljava/lang/Object;)Z

    return-void
.end method
