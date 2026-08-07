.class public final Lkf/e;
.super LTe/J;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkf/e$a;
    }
.end annotation


# static fields
.field public static final c:LTe/J;

.field public static final d:LTe/J$c;

.field public static final e:LVe/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkf/e;

    invoke-direct {v0}, Lkf/e;-><init>()V

    sput-object v0, Lkf/e;->c:LTe/J;

    new-instance v0, Lkf/e$a;

    invoke-direct {v0}, Lkf/e$a;-><init>()V

    sput-object v0, Lkf/e;->d:LTe/J$c;

    invoke-static {}, LVe/d;->b()LVe/c;

    move-result-object v0

    sput-object v0, Lkf/e;->e:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LTe/J;-><init>()V

    return-void
.end method


# virtual methods
.method public c()LTe/J$c;
    .locals 1
    .annotation build LUe/f;
    .end annotation

    sget-object v0, Lkf/e;->d:LTe/J$c;

    return-object v0
.end method

.method public f(Ljava/lang/Runnable;)LVe/c;
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation build LUe/f;
    .end annotation

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    sget-object p1, Lkf/e;->e:LVe/c;

    return-object p1
.end method

.method public g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LVe/c;
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation build LUe/f;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This scheduler doesn\'t support delayed execution"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LVe/c;
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation build LUe/f;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This scheduler doesn\'t support periodic execution"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
