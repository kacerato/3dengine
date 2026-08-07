.class public abstract Lkotlin/jvm/internal/a0;
.super Lkotlin/jvm/internal/c0;
.source "SourceFile"

# interfaces
.implements Log/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/jvm/internal/c0;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .annotation build LFf/l0;
        version = "1.4"
    .end annotation

    .line 2
    sget-object v1, Lkotlin/jvm/internal/r;->NO_RECEIVER:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/c0;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public Q(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build LFf/l0;
        version = "1.1"
    .end annotation

    invoke-virtual {p0}, Lkotlin/jvm/internal/l0;->d()Log/n;

    move-result-object v0

    check-cast v0, Log/l;

    invoke-interface {v0, p1, p2}, Log/q;->Q(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a()Log/n$c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/a0;->a()Log/q$a;

    move-result-object v0

    return-object v0
.end method

.method public a()Log/q$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lkotlin/jvm/internal/l0;->d()Log/n;

    move-result-object v0

    check-cast v0, Log/l;

    invoke-interface {v0}, Log/q;->a()Log/q$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b()Log/i$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/a0;->b()Log/l$a;

    move-result-object v0

    return-object v0
.end method

.method public b()Log/l$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lkotlin/jvm/internal/l0;->d()Log/n;

    move-result-object v0

    check-cast v0, Log/l;

    invoke-interface {v0}, Log/l;->b()Log/l$a;

    move-result-object v0

    return-object v0
.end method

.method public computeReflected()Log/c;
    .locals 1

    invoke-static {p0}, Lkotlin/jvm/internal/n0;->l(Lkotlin/jvm/internal/a0;)Log/l;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1, p2}, Log/q;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
