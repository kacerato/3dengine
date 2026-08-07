.class public final LGg/p;
.super Lwg/M;
.source "SourceFile"


# static fields
.field public static final b:LGg/p;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LGg/p;

    invoke-direct {v0}, LGg/p;-><init>()V

    sput-object v0, LGg/p;->b:LGg/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lwg/M;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(LQf/j;Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    sget-object p1, LGg/d;->h:LGg/d;

    sget-object v0, LGg/o;->j:LGg/l;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, LGg/i;->z(Ljava/lang/Runnable;LGg/l;Z)V

    return-void
.end method

.method public dispatchYield(LQf/j;Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lwg/F0;
    .end annotation

    sget-object p1, LGg/d;->h:LGg/d;

    sget-object v0, LGg/o;->j:LGg/l;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, LGg/i;->z(Ljava/lang/Runnable;LGg/l;Z)V

    return-void
.end method

.method public limitedParallelism(I)Lwg/M;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation build Lwg/z0;
    .end annotation

    invoke-static {p1}, LEg/t;->a(I)V

    sget v0, LGg/o;->d:I

    if-lt p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lwg/M;->limitedParallelism(I)Lwg/M;

    move-result-object p1

    return-object p1
.end method
