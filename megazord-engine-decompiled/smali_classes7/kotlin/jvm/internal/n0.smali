.class public Lkotlin/jvm/internal/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlin/jvm/internal/o0;

.field public static final b:Ljava/lang/String; = " (Kotlin reflection is not available)"

.field public static final c:[Lkotlin/reflect/KClass;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "kotlin.reflect.jvm.internal.ReflectionFactoryImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/internal/o0;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/jvm/internal/o0;

    invoke-direct {v0}, Lkotlin/jvm/internal/o0;-><init>()V

    :goto_0
    sput-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/reflect/KClass;

    sput-object v0, Lkotlin/jvm/internal/n0;->c:[Lkotlin/reflect/KClass;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Ljava/lang/Class;)Log/r;
    .locals 3
    .annotation build LFf/l0;
        version = "1.4"
    .end annotation

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-static {p0}, Lkotlin/jvm/internal/n0;->d(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lkotlin/jvm/internal/o0;->s(Log/f;Ljava/util/List;Z)Log/r;

    move-result-object p0

    return-object p0
.end method

.method public static B(Ljava/lang/Class;Log/t;)Log/r;
    .locals 2
    .annotation build LFf/l0;
        version = "1.4"
    .end annotation

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-static {p0}, Lkotlin/jvm/internal/n0;->d(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lkotlin/jvm/internal/o0;->s(Log/f;Ljava/util/List;Z)Log/r;

    move-result-object p0

    return-object p0
.end method

.method public static C(Ljava/lang/Class;Log/t;Log/t;)Log/r;
    .locals 1
    .annotation build LFf/l0;
        version = "1.4"
    .end annotation

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-static {p0}, Lkotlin/jvm/internal/n0;->d(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    filled-new-array {p1, p2}, [Log/t;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p0, p1, p2}, Lkotlin/jvm/internal/o0;->s(Log/f;Ljava/util/List;Z)Log/r;

    move-result-object p0

    return-object p0
.end method

.method public static varargs D(Ljava/lang/Class;[Log/t;)Log/r;
    .locals 2
    .annotation build LFf/l0;
        version = "1.4"
    .end annotation

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-static {p0}, Lkotlin/jvm/internal/n0;->d(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-static {p1}, LHf/A;->cz([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lkotlin/jvm/internal/o0;->s(Log/f;Ljava/util/List;Z)Log/r;

    move-result-object p0

    return-object p0
.end method

.method public static E(Log/f;)Log/r;
    .locals 3
    .annotation build LFf/l0;
        version = "1.4"
    .end annotation

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lkotlin/jvm/internal/o0;->s(Log/f;Ljava/util/List;Z)Log/r;

    move-result-object p0

    return-object p0
.end method

.method public static F(Ljava/lang/Object;Ljava/lang/String;Log/u;Z)Log/s;
    .locals 1
    .annotation build LFf/l0;
        version = "1.4"
    .end annotation

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-virtual {v0, p0, p1, p2, p3}, Lkotlin/jvm/internal/o0;->t(Ljava/lang/Object;Ljava/lang/String;Log/u;Z)Log/s;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Class;)Lkotlin/reflect/KClass;
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/o0;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KClass;
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-virtual {v0, p0, p1}, Lkotlin/jvm/internal/o0;->b(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KClass;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lkotlin/jvm/internal/H;)Log/h;
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/o0;->c(Lkotlin/jvm/internal/H;)Log/h;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/Class;)Lkotlin/reflect/KClass;
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/o0;->d(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KClass;
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-virtual {v0, p0, p1}, Lkotlin/jvm/internal/o0;->e(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KClass;

    move-result-object p0

    return-object p0
.end method

.method public static f([Ljava/lang/Class;)[Lkotlin/reflect/KClass;
    .locals 4

    array-length v0, p0

    if-nez v0, :cond_0

    sget-object p0, Lkotlin/jvm/internal/n0;->c:[Lkotlin/reflect/KClass;

    return-object p0

    :cond_0
    new-array v1, v0, [Lkotlin/reflect/KClass;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-static {v3}, Lkotlin/jvm/internal/n0;->d(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static g(Ljava/lang/Class;)Log/g;
    .locals 2
    .annotation build LFf/l0;
        version = "1.4"
    .end annotation

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Lkotlin/jvm/internal/o0;->f(Ljava/lang/Class;Ljava/lang/String;)Log/g;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/lang/Class;Ljava/lang/String;)Log/g;
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-virtual {v0, p0, p1}, Lkotlin/jvm/internal/o0;->f(Ljava/lang/Class;Ljava/lang/String;)Log/g;

    move-result-object p0

    return-object p0
.end method

.method public static i(Log/r;)Log/r;
    .locals 1
    .annotation build LFf/l0;
        version = "1.6"
    .end annotation

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/o0;->g(Log/r;)Log/r;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lkotlin/jvm/internal/W;)Log/j;
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/o0;->h(Lkotlin/jvm/internal/W;)Log/j;

    move-result-object p0

    return-object p0
.end method

.method public static k(Lkotlin/jvm/internal/Y;)Log/k;
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/o0;->i(Lkotlin/jvm/internal/Y;)Log/k;

    move-result-object p0

    return-object p0
.end method

.method public static l(Lkotlin/jvm/internal/a0;)Log/l;
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/o0;->j(Lkotlin/jvm/internal/a0;)Log/l;

    move-result-object p0

    return-object p0
.end method

.method public static m(Log/r;)Log/r;
    .locals 1
    .annotation build LFf/l0;
        version = "1.6"
    .end annotation

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/o0;->k(Log/r;)Log/r;

    move-result-object p0

    return-object p0
.end method

.method public static n(Ljava/lang/Class;)Log/r;
    .locals 3
    .annotation build LFf/l0;
        version = "1.4"
    .end annotation

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-static {p0}, Lkotlin/jvm/internal/n0;->d(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lkotlin/jvm/internal/o0;->s(Log/f;Ljava/util/List;Z)Log/r;

    move-result-object p0

    return-object p0
.end method

.method public static o(Ljava/lang/Class;Log/t;)Log/r;
    .locals 2
    .annotation build LFf/l0;
        version = "1.4"
    .end annotation

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-static {p0}, Lkotlin/jvm/internal/n0;->d(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lkotlin/jvm/internal/o0;->s(Log/f;Ljava/util/List;Z)Log/r;

    move-result-object p0

    return-object p0
.end method

.method public static p(Ljava/lang/Class;Log/t;Log/t;)Log/r;
    .locals 1
    .annotation build LFf/l0;
        version = "1.4"
    .end annotation

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-static {p0}, Lkotlin/jvm/internal/n0;->d(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    filled-new-array {p1, p2}, [Log/t;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {v0, p0, p1, p2}, Lkotlin/jvm/internal/o0;->s(Log/f;Ljava/util/List;Z)Log/r;

    move-result-object p0

    return-object p0
.end method

.method public static varargs q(Ljava/lang/Class;[Log/t;)Log/r;
    .locals 2
    .annotation build LFf/l0;
        version = "1.4"
    .end annotation

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-static {p0}, Lkotlin/jvm/internal/n0;->d(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-static {p1}, LHf/A;->cz([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lkotlin/jvm/internal/o0;->s(Log/f;Ljava/util/List;Z)Log/r;

    move-result-object p0

    return-object p0
.end method

.method public static r(Log/f;)Log/r;
    .locals 3
    .annotation build LFf/l0;
        version = "1.4"
    .end annotation

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lkotlin/jvm/internal/o0;->s(Log/f;Ljava/util/List;Z)Log/r;

    move-result-object p0

    return-object p0
.end method

.method public static s(Log/r;Log/r;)Log/r;
    .locals 1
    .annotation build LFf/l0;
        version = "1.6"
    .end annotation

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-virtual {v0, p0, p1}, Lkotlin/jvm/internal/o0;->l(Log/r;Log/r;)Log/r;

    move-result-object p0

    return-object p0
.end method

.method public static t(Lkotlin/jvm/internal/f0;)Log/o;
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/o0;->m(Lkotlin/jvm/internal/f0;)Log/o;

    move-result-object p0

    return-object p0
.end method

.method public static u(Lkotlin/jvm/internal/h0;)Log/p;
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/o0;->n(Lkotlin/jvm/internal/h0;)Log/p;

    move-result-object p0

    return-object p0
.end method

.method public static v(Lkotlin/jvm/internal/j0;)Log/q;
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/o0;->o(Lkotlin/jvm/internal/j0;)Log/q;

    move-result-object p0

    return-object p0
.end method

.method public static w(Lkotlin/jvm/internal/F;)Ljava/lang/String;
    .locals 1
    .annotation build LFf/l0;
        version = "1.3"
    .end annotation

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/o0;->p(Lkotlin/jvm/internal/F;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static x(Lkotlin/jvm/internal/O;)Ljava/lang/String;
    .locals 1
    .annotation build LFf/l0;
        version = "1.1"
    .end annotation

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/o0;->q(Lkotlin/jvm/internal/O;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static y(Log/s;Log/r;)V
    .locals 1
    .annotation build LFf/l0;
        version = "1.4"
    .end annotation

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lkotlin/jvm/internal/o0;->r(Log/s;Ljava/util/List;)V

    return-void
.end method

.method public static varargs z(Log/s;[Log/r;)V
    .locals 1
    .annotation build LFf/l0;
        version = "1.4"
    .end annotation

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-static {p1}, LHf/A;->cz([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lkotlin/jvm/internal/o0;->r(Log/s;Ljava/util/List;)V

    return-void
.end method
