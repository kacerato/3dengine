.class public final Lwg/X0;
.super LQf/a;
.source "SourceFile"

# interfaces
.implements Lwg/K0;


# static fields
.field public static final b:Lwg/X0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Ljava/lang/String; = "NonCancellable can be used only as an argument for \'withContext\', direct usages of its API are prohibited"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwg/X0;

    invoke-direct {v0}, Lwg/X0;-><init>()V

    sput-object v0, Lwg/X0;->b:Lwg/X0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lwg/K0;->O0:Lwg/K0$b;

    invoke-direct {p0, v0}, LQf/a;-><init>(LQf/j$c;)V

    return-void
.end method

.method public static synthetic A()V
    .locals 0
    .annotation runtime LFf/o;
        level = .enum LFf/q;->WARNING:LFf/q;
        message = "NonCancellable can be used only as an argument for \'withContext\', direct usages of its API are prohibited"
    .end annotation

    return-void
.end method

.method public static synthetic c0()V
    .locals 0
    .annotation runtime LFf/o;
        level = .enum LFf/q;->WARNING:LFf/q;
        message = "NonCancellable can be used only as an argument for \'withContext\', direct usages of its API are prohibited"
    .end annotation

    return-void
.end method

.method public static synthetic e0()V
    .locals 0
    .annotation runtime LFf/o;
        level = .enum LFf/q;->WARNING:LFf/q;
        message = "NonCancellable can be used only as an argument for \'withContext\', direct usages of its API are prohibited"
    .end annotation

    return-void
.end method

.method public static synthetic v()V
    .locals 0
    .annotation runtime LFf/o;
        level = .enum LFf/q;->WARNING:LFf/q;
        message = "NonCancellable can be used only as an argument for \'withContext\', direct usages of its API are prohibited"
    .end annotation

    return-void
.end method

.method public static synthetic y()V
    .locals 0
    .annotation runtime LFf/o;
        level = .enum LFf/q;->WARNING:LFf/q;
        message = "NonCancellable can be used only as an argument for \'withContext\', direct usages of its API are prohibited"
    .end annotation

    return-void
.end method

.method public static synthetic z()V
    .locals 0
    .annotation runtime LFf/o;
        level = .enum LFf/q;->WARNING:LFf/q;
        message = "NonCancellable can be used only as an argument for \'withContext\', direct usages of its API are prohibited"
    .end annotation

    return-void
.end method


# virtual methods
.method public Q(Leg/l;)Lwg/m0;
    .locals 0
    .param p1    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime LFf/o;
        level = .enum LFf/q;->WARNING:LFf/q;
        message = "NonCancellable can be used only as an argument for \'withContext\', direct usages of its API are prohibited"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/l<",
            "-",
            "Ljava/lang/Throwable;",
            "LFf/P0;",
            ">;)",
            "Lwg/m0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p1, Lwg/Y0;->b:Lwg/Y0;

    return-object p1
.end method

.method public S()LHg/e;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This job is always active"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public X(Lwg/K0;)Lwg/K0;
    .locals 0
    .param p1    # Lwg/K0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime LFf/o;
        level = .enum LFf/q;->ERROR:LFf/q;
        message = "Operator \'+\' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`."
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lwg/K0$a;->j(Lwg/K0;Lwg/K0;)Lwg/K0;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/concurrent/CancellationException;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime LFf/o;
        level = .enum LFf/q;->WARNING:LFf/q;
        message = "NonCancellable can be used only as an argument for \'withContext\', direct usages of its API are prohibited"
    .end annotation

    return-void
.end method

.method public b0(LQf/f;)Ljava/lang/Object;
    .locals 1
    .param p1    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime LFf/o;
        level = .enum LFf/q;->WARNING:LFf/q;
        message = "NonCancellable can be used only as an argument for \'withContext\', direct usages of its API are prohibited"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This job is always active"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic c(Ljava/lang/Throwable;)Z
    .locals 0
    .annotation runtime LFf/o;
        level = .enum LFf/q;->HIDDEN:LFf/q;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public synthetic cancel()V
    .locals 0
    .annotation runtime LFf/o;
        level = .enum LFf/q;->HIDDEN:LFf/q;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    invoke-static {p0}, Lwg/K0$a;->a(Lwg/K0;)V

    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChildren()Lpg/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lpg/m<",
            "Lwg/K0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lpg/x;->l()Lpg/m;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lwg/K0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l()Ljava/util/concurrent/CancellationException;
    .locals 2
    .annotation runtime LFf/o;
        level = .enum LFf/q;->WARNING:LFf/q;
        message = "NonCancellable can be used only as an argument for \'withContext\', direct usages of its API are prohibited"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This job is always active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public o(ZZLeg/l;)Lwg/m0;
    .locals 0
    .param p3    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime LFf/o;
        level = .enum LFf/q;->WARNING:LFf/q;
        message = "NonCancellable can be used only as an argument for \'withContext\', direct usages of its API are prohibited"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Leg/l<",
            "-",
            "Ljava/lang/Throwable;",
            "LFf/P0;",
            ">;)",
            "Lwg/m0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p1, Lwg/Y0;->b:Lwg/Y0;

    return-object p1
.end method

.method public s(Lwg/x;)Lwg/v;
    .locals 0
    .param p1    # Lwg/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime LFf/o;
        level = .enum LFf/q;->WARNING:LFf/q;
        message = "NonCancellable can be used only as an argument for \'withContext\', direct usages of its API are prohibited"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p1, Lwg/Y0;->b:Lwg/Y0;

    return-object p1
.end method

.method public start()Z
    .locals 1
    .annotation runtime LFf/o;
        level = .enum LFf/q;->WARNING:LFf/q;
        message = "NonCancellable can be used only as an argument for \'withContext\', direct usages of its API are prohibited"
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "NonCancellable"

    return-object v0
.end method
