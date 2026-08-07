.class public abstract Lkotlin/jvm/internal/W;
.super Lkotlin/jvm/internal/c0;
.source "SourceFile"

# interfaces
.implements Log/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/jvm/internal/c0;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation build LFf/l0;
        version = "1.1"
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/c0;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation build LFf/l0;
        version = "1.4"
    .end annotation

    .line 3
    invoke-direct/range {p0 .. p5}, Lkotlin/jvm/internal/c0;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Log/n$c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/W;->a()Log/o$a;

    move-result-object v0

    return-object v0
.end method

.method public a()Log/o$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lkotlin/jvm/internal/l0;->d()Log/n;

    move-result-object v0

    check-cast v0, Log/j;

    invoke-interface {v0}, Log/o;->a()Log/o$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b()Log/i$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/W;->b()Log/j$a;

    move-result-object v0

    return-object v0
.end method

.method public b()Log/j$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lkotlin/jvm/internal/l0;->d()Log/n;

    move-result-object v0

    check-cast v0, Log/j;

    invoke-interface {v0}, Log/j;->b()Log/j$a;

    move-result-object v0

    return-object v0
.end method

.method public computeReflected()Log/c;
    .locals 1

    invoke-static {p0}, Lkotlin/jvm/internal/n0;->j(Lkotlin/jvm/internal/W;)Log/j;

    move-result-object v0

    return-object v0
.end method

.method public getDelegate()Ljava/lang/Object;
    .locals 1
    .annotation build LFf/l0;
        version = "1.1"
    .end annotation

    invoke-virtual {p0}, Lkotlin/jvm/internal/l0;->d()Log/n;

    move-result-object v0

    check-cast v0, Log/j;

    invoke-interface {v0}, Log/o;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke()Ljava/lang/Object;
    .locals 1

    invoke-interface {p0}, Log/o;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
