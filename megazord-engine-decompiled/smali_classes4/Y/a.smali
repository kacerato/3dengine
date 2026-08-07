.class public final LY/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LY/a$e;,
        LY/a$f;,
        LY/a$g;,
        LY/a$d;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "FactoryPools"

.field public static final b:I = 0x14

.field public static final c:LY/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LY/a$g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LY/a$a;

    invoke-direct {v0}, LY/a$a;-><init>()V

    sput-object v0, LY/a;->c:LY/a$g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroidx/core/util/Pools$Pool;LY/a$d;)Landroidx/core/util/Pools$Pool;
    .locals 1
    .param p0    # Landroidx/core/util/Pools$Pool;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # LY/a$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "LY/a$f;",
            ">(",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;",
            "LY/a$d<",
            "TT;>;)",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LY/a;->c()LY/a$g;

    move-result-object v0

    invoke-static {p0, p1, v0}, LY/a;->b(Landroidx/core/util/Pools$Pool;LY/a$d;LY/a$g;)Landroidx/core/util/Pools$Pool;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroidx/core/util/Pools$Pool;LY/a$d;LY/a$g;)Landroidx/core/util/Pools$Pool;
    .locals 1
    .param p0    # Landroidx/core/util/Pools$Pool;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # LY/a$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LY/a$g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;",
            "LY/a$d<",
            "TT;>;",
            "LY/a$g<",
            "TT;>;)",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LY/a$e;

    invoke-direct {v0, p0, p1, p2}, LY/a$e;-><init>(Landroidx/core/util/Pools$Pool;LY/a$d;LY/a$g;)V

    return-object v0
.end method

.method public static c()LY/a$g;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LY/a$g<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, LY/a;->c:LY/a$g;

    return-object v0
.end method

.method public static d(ILY/a$d;)Landroidx/core/util/Pools$Pool;
    .locals 1
    .param p1    # LY/a$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "LY/a$f;",
            ">(I",
            "LY/a$d<",
            "TT;>;)",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Landroidx/core/util/Pools$SimplePool;

    invoke-direct {v0, p0}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    invoke-static {v0, p1}, LY/a;->a(Landroidx/core/util/Pools$Pool;LY/a$d;)Landroidx/core/util/Pools$Pool;

    move-result-object p0

    return-object p0
.end method

.method public static e(ILY/a$d;)Landroidx/core/util/Pools$Pool;
    .locals 1
    .param p1    # LY/a$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "LY/a$f;",
            ">(I",
            "LY/a$d<",
            "TT;>;)",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    invoke-direct {v0, p0}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    invoke-static {v0, p1}, LY/a;->a(Landroidx/core/util/Pools$Pool;LY/a$d;)Landroidx/core/util/Pools$Pool;

    move-result-object p0

    return-object p0
.end method

.method public static f()Landroidx/core/util/Pools$Pool;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const/16 v0, 0x14

    invoke-static {v0}, LY/a;->g(I)Landroidx/core/util/Pools$Pool;

    move-result-object v0

    return-object v0
.end method

.method public static g(I)Landroidx/core/util/Pools$Pool;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    invoke-direct {v0, p0}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    new-instance p0, LY/a$b;

    invoke-direct {p0}, LY/a$b;-><init>()V

    new-instance v1, LY/a$c;

    invoke-direct {v1}, LY/a$c;-><init>()V

    invoke-static {v0, p0, v1}, LY/a;->b(Landroidx/core/util/Pools$Pool;LY/a$d;LY/a$g;)Landroidx/core/util/Pools$Pool;

    move-result-object p0

    return-object p0
.end method
