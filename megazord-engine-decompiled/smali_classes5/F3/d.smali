.class public abstract LF3/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LF3/d$a;
    }
.end annotation


# static fields
.field public static a:LF3/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, LF3/d;->a()LF3/d$a;

    move-result-object v0

    invoke-virtual {v0}, LF3/d$a;->a()LF3/d;

    move-result-object v0

    sput-object v0, LF3/d;->a:LF3/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()LF3/d$a;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LF3/a$b;

    invoke-direct {v0}, LF3/a$b;-><init>()V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, LF3/a$b;->h(J)LF3/d$a;

    move-result-object v0

    sget-object v3, LF3/c$a;->ATTEMPT_MIGRATION:LF3/c$a;

    invoke-virtual {v0, v3}, LF3/d$a;->g(LF3/c$a;)LF3/d$a;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, LF3/d$a;->c(J)LF3/d$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract c()J
.end method

.method public abstract d()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract e()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract f()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract g()LF3/c$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract h()J
.end method

.method public i()Z
    .locals 2

    invoke-virtual {p0}, LF3/d;->g()LF3/c$a;

    move-result-object v0

    sget-object v1, LF3/c$a;->REGISTER_ERROR:LF3/c$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Z
    .locals 2

    invoke-virtual {p0}, LF3/d;->g()LF3/c$a;

    move-result-object v0

    sget-object v1, LF3/c$a;->NOT_GENERATED:LF3/c$a;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, LF3/d;->g()LF3/c$a;

    move-result-object v0

    sget-object v1, LF3/c$a;->ATTEMPT_MIGRATION:LF3/c$a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public k()Z
    .locals 2

    invoke-virtual {p0}, LF3/d;->g()LF3/c$a;

    move-result-object v0

    sget-object v1, LF3/c$a;->REGISTERED:LF3/c$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()Z
    .locals 2

    invoke-virtual {p0}, LF3/d;->g()LF3/c$a;

    move-result-object v0

    sget-object v1, LF3/c$a;->UNREGISTERED:LF3/c$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()Z
    .locals 2

    invoke-virtual {p0}, LF3/d;->g()LF3/c$a;

    move-result-object v0

    sget-object v1, LF3/c$a;->ATTEMPT_MIGRATION:LF3/c$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract n()LF3/d$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public o(Ljava/lang/String;JJ)LF3/d;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, LF3/d;->n()LF3/d$a;

    move-result-object v0

    invoke-virtual {v0, p1}, LF3/d$a;->b(Ljava/lang/String;)LF3/d$a;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, LF3/d$a;->c(J)LF3/d$a;

    move-result-object p1

    invoke-virtual {p1, p4, p5}, LF3/d$a;->h(J)LF3/d$a;

    move-result-object p1

    invoke-virtual {p1}, LF3/d$a;->a()LF3/d;

    move-result-object p1

    return-object p1
.end method

.method public p()LF3/d;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, LF3/d;->n()LF3/d$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LF3/d$a;->b(Ljava/lang/String;)LF3/d$a;

    move-result-object v0

    invoke-virtual {v0}, LF3/d$a;->a()LF3/d;

    move-result-object v0

    return-object v0
.end method

.method public q(Ljava/lang/String;)LF3/d;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, LF3/d;->n()LF3/d$a;

    move-result-object v0

    invoke-virtual {v0, p1}, LF3/d$a;->e(Ljava/lang/String;)LF3/d$a;

    move-result-object p1

    sget-object v0, LF3/c$a;->REGISTER_ERROR:LF3/c$a;

    invoke-virtual {p1, v0}, LF3/d$a;->g(LF3/c$a;)LF3/d$a;

    move-result-object p1

    invoke-virtual {p1}, LF3/d$a;->a()LF3/d;

    move-result-object p1

    return-object p1
.end method

.method public r()LF3/d;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, LF3/d;->n()LF3/d$a;

    move-result-object v0

    sget-object v1, LF3/c$a;->NOT_GENERATED:LF3/c$a;

    invoke-virtual {v0, v1}, LF3/d$a;->g(LF3/c$a;)LF3/d$a;

    move-result-object v0

    invoke-virtual {v0}, LF3/d$a;->a()LF3/d;

    move-result-object v0

    return-object v0
.end method

.method public s(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)LF3/d;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, LF3/d;->n()LF3/d$a;

    move-result-object v0

    invoke-virtual {v0, p1}, LF3/d$a;->d(Ljava/lang/String;)LF3/d$a;

    move-result-object p1

    sget-object v0, LF3/c$a;->REGISTERED:LF3/c$a;

    invoke-virtual {p1, v0}, LF3/d$a;->g(LF3/c$a;)LF3/d$a;

    move-result-object p1

    invoke-virtual {p1, p5}, LF3/d$a;->b(Ljava/lang/String;)LF3/d$a;

    move-result-object p1

    invoke-virtual {p1, p2}, LF3/d$a;->f(Ljava/lang/String;)LF3/d$a;

    move-result-object p1

    invoke-virtual {p1, p6, p7}, LF3/d$a;->c(J)LF3/d$a;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, LF3/d$a;->h(J)LF3/d$a;

    move-result-object p1

    invoke-virtual {p1}, LF3/d$a;->a()LF3/d;

    move-result-object p1

    return-object p1
.end method

.method public t(Ljava/lang/String;)LF3/d;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, LF3/d;->n()LF3/d$a;

    move-result-object v0

    invoke-virtual {v0, p1}, LF3/d$a;->d(Ljava/lang/String;)LF3/d$a;

    move-result-object p1

    sget-object v0, LF3/c$a;->UNREGISTERED:LF3/c$a;

    invoke-virtual {p1, v0}, LF3/d$a;->g(LF3/c$a;)LF3/d$a;

    move-result-object p1

    invoke-virtual {p1}, LF3/d$a;->a()LF3/d;

    move-result-object p1

    return-object p1
.end method
