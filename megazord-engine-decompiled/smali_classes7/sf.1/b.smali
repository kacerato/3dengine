.class public final Lsf/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsf/b$b;,
        Lsf/b$h;,
        Lsf/b$f;,
        Lsf/b$c;,
        Lsf/b$e;,
        Lsf/b$d;,
        Lsf/b$a;,
        Lsf/b$g;
    }
.end annotation


# static fields
.field public static final a:LTe/J;
    .annotation build LUe/f;
    .end annotation
.end field

.field public static final b:LTe/J;
    .annotation build LUe/f;
    .end annotation
.end field

.field public static final c:LTe/J;
    .annotation build LUe/f;
    .end annotation
.end field

.field public static final d:LTe/J;
    .annotation build LUe/f;
    .end annotation
.end field

.field public static final e:LTe/J;
    .annotation build LUe/f;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsf/b$h;

    invoke-direct {v0}, Lsf/b$h;-><init>()V

    invoke-static {v0}, Lqf/a;->J(Ljava/util/concurrent/Callable;)LTe/J;

    move-result-object v0

    sput-object v0, Lsf/b;->a:LTe/J;

    new-instance v0, Lsf/b$b;

    invoke-direct {v0}, Lsf/b$b;-><init>()V

    invoke-static {v0}, Lqf/a;->G(Ljava/util/concurrent/Callable;)LTe/J;

    move-result-object v0

    sput-object v0, Lsf/b;->b:LTe/J;

    new-instance v0, Lsf/b$c;

    invoke-direct {v0}, Lsf/b$c;-><init>()V

    invoke-static {v0}, Lqf/a;->H(Ljava/util/concurrent/Callable;)LTe/J;

    move-result-object v0

    sput-object v0, Lsf/b;->c:LTe/J;

    invoke-static {}, Lkf/s;->l()Lkf/s;

    move-result-object v0

    sput-object v0, Lsf/b;->d:LTe/J;

    new-instance v0, Lsf/b$f;

    invoke-direct {v0}, Lsf/b$f;-><init>()V

    invoke-static {v0}, Lqf/a;->I(Ljava/util/concurrent/Callable;)LTe/J;

    move-result-object v0

    sput-object v0, Lsf/b;->e:LTe/J;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a()LTe/J;
    .locals 1
    .annotation build LUe/f;
    .end annotation

    sget-object v0, Lsf/b;->b:LTe/J;

    invoke-static {v0}, Lqf/a;->X(LTe/J;)LTe/J;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/util/concurrent/Executor;)LTe/J;
    .locals 2
    .param p0    # Ljava/util/concurrent/Executor;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation build LUe/f;
    .end annotation

    new-instance v0, Lkf/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkf/d;-><init>(Ljava/util/concurrent/Executor;Z)V

    return-object v0
.end method

.method public static c(Ljava/util/concurrent/Executor;Z)LTe/J;
    .locals 1
    .param p0    # Ljava/util/concurrent/Executor;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation build LUe/e;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    new-instance v0, Lkf/d;

    invoke-direct {v0, p0, p1}, Lkf/d;-><init>(Ljava/util/concurrent/Executor;Z)V

    return-object v0
.end method

.method public static d()LTe/J;
    .locals 1
    .annotation build LUe/f;
    .end annotation

    sget-object v0, Lsf/b;->c:LTe/J;

    invoke-static {v0}, Lqf/a;->Z(LTe/J;)LTe/J;

    move-result-object v0

    return-object v0
.end method

.method public static e()LTe/J;
    .locals 1
    .annotation build LUe/f;
    .end annotation

    sget-object v0, Lsf/b;->e:LTe/J;

    invoke-static {v0}, Lqf/a;->a0(LTe/J;)LTe/J;

    move-result-object v0

    return-object v0
.end method

.method public static f()V
    .locals 1

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v0

    invoke-virtual {v0}, LTe/J;->i()V

    invoke-static {}, Lsf/b;->d()LTe/J;

    move-result-object v0

    invoke-virtual {v0}, LTe/J;->i()V

    invoke-static {}, Lsf/b;->e()LTe/J;

    move-result-object v0

    invoke-virtual {v0}, LTe/J;->i()V

    invoke-static {}, Lsf/b;->g()LTe/J;

    move-result-object v0

    invoke-virtual {v0}, LTe/J;->i()V

    invoke-static {}, Lsf/b;->i()LTe/J;

    move-result-object v0

    invoke-virtual {v0}, LTe/J;->i()V

    invoke-static {}, Lkf/p;->b()V

    return-void
.end method

.method public static g()LTe/J;
    .locals 1
    .annotation build LUe/f;
    .end annotation

    sget-object v0, Lsf/b;->a:LTe/J;

    invoke-static {v0}, Lqf/a;->c0(LTe/J;)LTe/J;

    move-result-object v0

    return-object v0
.end method

.method public static h()V
    .locals 1

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v0

    invoke-virtual {v0}, LTe/J;->j()V

    invoke-static {}, Lsf/b;->d()LTe/J;

    move-result-object v0

    invoke-virtual {v0}, LTe/J;->j()V

    invoke-static {}, Lsf/b;->e()LTe/J;

    move-result-object v0

    invoke-virtual {v0}, LTe/J;->j()V

    invoke-static {}, Lsf/b;->g()LTe/J;

    move-result-object v0

    invoke-virtual {v0}, LTe/J;->j()V

    invoke-static {}, Lsf/b;->i()LTe/J;

    move-result-object v0

    invoke-virtual {v0}, LTe/J;->j()V

    invoke-static {}, Lkf/p;->c()V

    return-void
.end method

.method public static i()LTe/J;
    .locals 1
    .annotation build LUe/f;
    .end annotation

    sget-object v0, Lsf/b;->d:LTe/J;

    return-object v0
.end method
