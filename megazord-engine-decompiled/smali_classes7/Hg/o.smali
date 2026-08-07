.class public final LHg/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Leg/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/q<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:I = 0x0

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:LEg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g:LEg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final h:LEg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final i:LEg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final j:LEg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, LHg/o$a;->b:LHg/o$a;

    sput-object v0, LHg/o;->a:Leg/q;

    new-instance v0, LEg/T;

    const-string v1, "STATE_REG"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, LHg/o;->f:LEg/T;

    new-instance v0, LEg/T;

    const-string v1, "STATE_COMPLETED"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, LHg/o;->g:LEg/T;

    new-instance v0, LEg/T;

    const-string v1, "STATE_CANCELLED"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, LHg/o;->h:LEg/T;

    new-instance v0, LEg/T;

    const-string v1, "NO_RESULT"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, LHg/o;->i:LEg/T;

    new-instance v0, LEg/T;

    const-string v1, "PARAM_CLAUSE_0"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, LHg/o;->j:LEg/T;

    return-void
.end method

.method public static synthetic a()V
    .locals 0
    .annotation build Lwg/F0;
    .end annotation

    return-void
.end method

.method public static synthetic b()V
    .locals 0
    .annotation build Lwg/F0;
    .end annotation

    return-void
.end method

.method public static synthetic c()V
    .locals 0
    .annotation build Lwg/F0;
    .end annotation

    return-void
.end method

.method public static final d(I)LHg/r;
    .locals 3

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    sget-object p0, LHg/r;->ALREADY_SELECTED:LHg/r;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected internal result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, LHg/r;->CANCELLED:LHg/r;

    goto :goto_0

    :cond_2
    sget-object p0, LHg/r;->REREGISTER:LHg/r;

    goto :goto_0

    :cond_3
    sget-object p0, LHg/r;->SUCCESSFUL:LHg/r;

    :goto_0
    return-object p0
.end method

.method public static final synthetic e(I)LHg/r;
    .locals 0

    invoke-static {p0}, LHg/o;->d(I)LHg/r;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f()Leg/q;
    .locals 1

    sget-object v0, LHg/o;->a:Leg/q;

    return-object v0
.end method

.method public static final synthetic g()LEg/T;
    .locals 1

    sget-object v0, LHg/o;->i:LEg/T;

    return-object v0
.end method

.method public static final synthetic h()LEg/T;
    .locals 1

    sget-object v0, LHg/o;->h:LEg/T;

    return-object v0
.end method

.method public static final synthetic i()LEg/T;
    .locals 1

    sget-object v0, LHg/o;->g:LEg/T;

    return-object v0
.end method

.method public static final synthetic j()LEg/T;
    .locals 1

    sget-object v0, LHg/o;->f:LEg/T;

    return-object v0
.end method

.method public static final synthetic k(Lwg/p;Leg/l;)Z
    .locals 0

    invoke-static {p0, p1}, LHg/o;->o(Lwg/p;Leg/l;)Z

    move-result p0

    return p0
.end method

.method public static final l()LEg/T;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, LHg/o;->j:LEg/T;

    return-object v0
.end method

.method public static final m(Leg/l;LQf/f;)Ljava/lang/Object;
    .locals 2
    .param p0    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/l<",
            "-",
            "LHg/c<",
            "-TR;>;",
            "LFf/P0;",
            ">;",
            "LQf/f<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, LHg/l;

    invoke-interface {p1}, LQf/f;->getContext()LQf/j;

    move-result-object v1

    invoke-direct {v0, v1}, LHg/l;-><init>(LQf/j;)V

    invoke-interface {p0, v0}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, LHg/l;->X(LQf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final n(Leg/l;LQf/f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/l<",
            "-",
            "LHg/c<",
            "-TR;>;",
            "LFf/P0;",
            ">;",
            "LQf/f<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p0, LHg/l;

    const/4 p0, 0x3

    invoke-static {p0}, Lkotlin/jvm/internal/J;->e(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final o(Lwg/p;Leg/l;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwg/p<",
            "-",
            "LFf/P0;",
            ">;",
            "Leg/l<",
            "-",
            "Ljava/lang/Throwable;",
            "LFf/P0;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, LFf/P0;->a:LFf/P0;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, p1}, Lwg/p;->J(Ljava/lang/Object;Ljava/lang/Object;Leg/l;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0, p1}, Lwg/p;->V(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method
