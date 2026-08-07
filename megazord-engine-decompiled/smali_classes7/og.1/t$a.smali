.class public final Log/t$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Log/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Log/t$a;-><init>()V

    return-void
.end method

.method public static synthetic d()V
    .locals 0
    .annotation build LFf/f0;
    .end annotation

    return-void
.end method


# virtual methods
.method public final a(Log/r;)Log/t;
    .locals 2
    .param p1    # Log/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ldg/o;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Log/t;

    sget-object v1, Log/u;->IN:Log/u;

    invoke-direct {v0, v1, p1}, Log/t;-><init>(Log/u;Log/r;)V

    return-object v0
.end method

.method public final b(Log/r;)Log/t;
    .locals 2
    .param p1    # Log/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ldg/o;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Log/t;

    sget-object v1, Log/u;->OUT:Log/u;

    invoke-direct {v0, v1, p1}, Log/t;-><init>(Log/u;Log/r;)V

    return-object v0
.end method

.method public final c()Log/t;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Log/t;->d:Log/t;

    return-object v0
.end method

.method public final e(Log/r;)Log/t;
    .locals 2
    .param p1    # Log/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ldg/o;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Log/t;

    sget-object v1, Log/u;->INVARIANT:Log/u;

    invoke-direct {v0, v1, p1}, Log/t;-><init>(Log/u;Log/r;)V

    return-object v0
.end method
