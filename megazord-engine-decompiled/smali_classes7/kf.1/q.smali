.class public Lkf/q;
.super LTe/J;
.source "SourceFile"

# interfaces
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkf/q$g;,
        Lkf/q$e;,
        Lkf/q$a;,
        Lkf/q$d;,
        Lkf/q$b;,
        Lkf/q$c;,
        Lkf/q$f;
    }
.end annotation


# static fields
.field public static final f:LVe/c;

.field public static final g:LVe/c;


# instance fields
.field public final c:LTe/J;

.field public final d:Lrf/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrf/c<",
            "LTe/l<",
            "LTe/c;",
            ">;>;"
        }
    .end annotation
.end field

.field public e:LVe/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkf/q$g;

    invoke-direct {v0}, Lkf/q$g;-><init>()V

    sput-object v0, Lkf/q;->f:LVe/c;

    invoke-static {}, LVe/d;->a()LVe/c;

    move-result-object v0

    sput-object v0, Lkf/q;->g:LVe/c;

    return-void
.end method

.method public constructor <init>(LXe/o;LTe/J;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/o<",
            "LTe/l<",
            "LTe/l<",
            "LTe/c;",
            ">;>;",
            "LTe/c;",
            ">;",
            "LTe/J;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, LTe/J;-><init>()V

    iput-object p2, p0, Lkf/q;->c:LTe/J;

    invoke-static {}, Lrf/h;->U8()Lrf/h;

    move-result-object p2

    invoke-virtual {p2}, Lrf/c;->S8()Lrf/c;

    move-result-object p2

    iput-object p2, p0, Lkf/q;->d:Lrf/c;

    :try_start_0
    invoke-interface {p1, p2}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LTe/c;

    invoke-virtual {p1}, LTe/c;->H0()LVe/c;

    move-result-object p1

    iput-object p1, p0, Lkf/q;->e:LVe/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/internal/util/ExceptionHelper;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public c()LTe/J$c;
    .locals 4
    .annotation build LUe/f;
    .end annotation

    iget-object v0, p0, Lkf/q;->c:LTe/J;

    invoke-virtual {v0}, LTe/J;->c()LTe/J$c;

    move-result-object v0

    invoke-static {}, Lrf/h;->U8()Lrf/h;

    move-result-object v1

    invoke-virtual {v1}, Lrf/c;->S8()Lrf/c;

    move-result-object v1

    new-instance v2, Lkf/q$a;

    invoke-direct {v2, v0}, Lkf/q$a;-><init>(LTe/J$c;)V

    invoke-virtual {v1, v2}, LTe/l;->M3(LXe/o;)LTe/l;

    move-result-object v2

    new-instance v3, Lkf/q$e;

    invoke-direct {v3, v1, v0}, Lkf/q$e;-><init>(Lrf/c;LTe/J$c;)V

    iget-object v0, p0, Lkf/q;->d:Lrf/c;

    invoke-interface {v0, v2}, LCi/c;->g(Ljava/lang/Object;)V

    return-object v3
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lkf/q;->e:LVe/c;

    invoke-interface {v0}, LVe/c;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lkf/q;->e:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    return-void
.end method
