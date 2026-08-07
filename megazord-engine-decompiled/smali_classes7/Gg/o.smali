.class public final LGg/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;
    .annotation build Ldg/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:J
    .annotation build Ldg/g;
    .end annotation
.end field

.field public static final c:I
    .annotation build Ldg/g;
    .end annotation
.end field

.field public static final d:I
    .annotation build Ldg/g;
    .end annotation
.end field

.field public static final e:J
    .annotation build Ldg/g;
    .end annotation
.end field

.field public static f:LGg/j; = null
    .annotation build Ldg/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g:I = 0x0

.field public static final h:I = 0x1

.field public static final i:LGg/l;
    .annotation build Ldg/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final j:LGg/l;
    .annotation build Ldg/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "kotlinx.coroutines.scheduler.default.name"

    const-string v1, "DefaultDispatcher"

    invoke-static {v0, v1}, LEg/W;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LGg/o;->a:Ljava/lang/String;

    const/16 v8, 0xc

    const/4 v9, 0x0

    const-string v1, "kotlinx.coroutines.scheduler.resolution.ns"

    const-wide/32 v2, 0x186a0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-static/range {v1 .. v9}, LEg/W;->h(Ljava/lang/String;JJJILjava/lang/Object;)J

    move-result-wide v0

    sput-wide v0, LGg/o;->b:J

    invoke-static {}, LEg/W;->a()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lng/u;->w(II)I

    move-result v3

    const/16 v6, 0x8

    const/4 v7, 0x0

    const-string v2, "kotlinx.coroutines.scheduler.core.pool.size"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, LEg/W;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, LGg/o;->c:I

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v1, "kotlinx.coroutines.scheduler.max.pool.size"

    const v2, 0x1ffffe

    const/4 v3, 0x0

    const v4, 0x1ffffe

    invoke-static/range {v1 .. v6}, LEg/W;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, LGg/o;->d:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v1, "kotlinx.coroutines.scheduler.keep.alive.sec"

    const-wide/16 v2, 0x3c

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-static/range {v1 .. v9}, LEg/W;->h(Ljava/lang/String;JJJILjava/lang/Object;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, LGg/o;->e:J

    sget-object v0, LGg/h;->a:LGg/h;

    sput-object v0, LGg/o;->f:LGg/j;

    new-instance v0, LGg/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LGg/m;-><init>(I)V

    sput-object v0, LGg/o;->i:LGg/l;

    new-instance v0, LGg/m;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LGg/m;-><init>(I)V

    sput-object v0, LGg/o;->j:LGg/l;

    return-void
.end method

.method public static final a(LGg/k;)Z
    .locals 1
    .param p0    # LGg/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object p0, p0, LGg/k;->c:LGg/l;

    invoke-interface {p0}, LGg/l;->p()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
