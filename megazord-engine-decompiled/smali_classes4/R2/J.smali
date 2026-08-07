.class public final LR2/J;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LQ2/b;
    emulated = true
.end annotation

.annotation runtime LR2/k;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LR2/J$d;,
        LR2/J$e;,
        LR2/J$c;,
        LR2/J$f;,
        LR2/J$l;,
        LR2/J$g;,
        LR2/J$h;,
        LR2/J$k;,
        LR2/J$b;,
        LR2/J$i;,
        LR2/J$j;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, LR2/J;->w(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b()LR2/I;
    .locals 1
    .annotation build LQ2/b;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LR2/I<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, LR2/J$j;->ALWAYS_FALSE:LR2/J$j;

    invoke-virtual {v0}, LR2/J$j;->b()LR2/I;

    move-result-object v0

    return-object v0
.end method

.method public static c()LR2/I;
    .locals 1
    .annotation build LQ2/b;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LR2/I<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, LR2/J$j;->ALWAYS_TRUE:LR2/J$j;

    invoke-virtual {v0}, LR2/J$j;->b()LR2/I;

    move-result-object v0

    return-object v0
.end method

.method public static d(LR2/I;LR2/I;)LR2/I;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LR2/I<",
            "-TT;>;",
            "LR2/I<",
            "-TT;>;)",
            "LR2/I<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LR2/J$b;

    invoke-static {p0}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LR2/I;

    invoke-static {p1}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LR2/I;

    invoke-static {p0, p1}, LR2/J;->g(LR2/I;LR2/I;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, LR2/J$b;-><init>(Ljava/util/List;LR2/J$a;)V

    return-object v0
.end method

.method public static e(Ljava/lang/Iterable;)LR2/I;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LR2/I<",
            "-TT;>;>;)",
            "LR2/I<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LR2/J$b;

    invoke-static {p0}, LR2/J;->k(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LR2/J$b;-><init>(Ljava/util/List;LR2/J$a;)V

    return-object v0
.end method

.method public static varargs f([LR2/I;)LR2/I;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "LR2/I<",
            "-TT;>;)",
            "LR2/I<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v0, LR2/J$b;

    invoke-static {p0}, LR2/J;->l([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LR2/J$b;-><init>(Ljava/util/List;LR2/J$a;)V

    return-object v0
.end method

.method public static g(LR2/I;LR2/I;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LR2/I<",
            "-TT;>;",
            "LR2/I<",
            "-TT;>;)",
            "Ljava/util/List<",
            "LR2/I<",
            "-TT;>;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [LR2/I;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static h(LR2/I;LR2/t;)LR2/I;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "LR2/I<",
            "TB;>;",
            "LR2/t<",
            "TA;+TB;>;)",
            "LR2/I<",
            "TA;>;"
        }
    .end annotation

    new-instance v0, LR2/J$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LR2/J$c;-><init>(LR2/I;LR2/t;LR2/J$a;)V

    return-object v0
.end method

.method public static i(Ljava/util/regex/Pattern;)LR2/I;
    .locals 2
    .annotation build LQ2/c;
        value = "java.util.regex.Pattern"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            ")",
            "LR2/I<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    new-instance v0, LR2/J$e;

    new-instance v1, LR2/x;

    invoke-direct {v1, p0}, LR2/x;-><init>(Ljava/util/regex/Pattern;)V

    invoke-direct {v0, v1}, LR2/J$e;-><init>(LR2/h;)V

    return-object v0
.end method

.method public static j(Ljava/lang/String;)LR2/I;
    .locals 1
    .annotation build LQ2/c;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "LR2/I<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    new-instance v0, LR2/J$d;

    invoke-direct {v0, p0}, LR2/J$d;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static k(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static varargs l([Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, LR2/J;->k(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/lang/Object;)LR2/I;
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation runtime LR2/E;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "LR2/I<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, LR2/J;->p()LR2/I;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, LR2/J$h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LR2/J$h;-><init>(Ljava/lang/Object;LR2/J$a;)V

    invoke-virtual {v0}, LR2/J$h;->a()LR2/I;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static n(Ljava/util/Collection;)LR2/I;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;)",
            "LR2/I<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LR2/J$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LR2/J$f;-><init>(Ljava/util/Collection;LR2/J$a;)V

    return-object v0
.end method

.method public static o(Ljava/lang/Class;)LR2/I;
    .locals 2
    .annotation build LQ2/c;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)",
            "LR2/I<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LR2/J$g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LR2/J$g;-><init>(Ljava/lang/Class;LR2/J$a;)V

    return-object v0
.end method

.method public static p()LR2/I;
    .locals 1
    .annotation build LQ2/b;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LR2/I<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, LR2/J$j;->IS_NULL:LR2/J$j;

    invoke-virtual {v0}, LR2/J$j;->b()LR2/I;

    move-result-object v0

    return-object v0
.end method

.method public static q(LR2/I;)LR2/I;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LR2/I<",
            "TT;>;)",
            "LR2/I<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LR2/J$i;

    invoke-direct {v0, p0}, LR2/J$i;-><init>(LR2/I;)V

    return-object v0
.end method

.method public static r()LR2/I;
    .locals 1
    .annotation build LQ2/b;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LR2/I<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, LR2/J$j;->NOT_NULL:LR2/J$j;

    invoke-virtual {v0}, LR2/J$j;->b()LR2/I;

    move-result-object v0

    return-object v0
.end method

.method public static s(LR2/I;LR2/I;)LR2/I;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LR2/I<",
            "-TT;>;",
            "LR2/I<",
            "-TT;>;)",
            "LR2/I<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LR2/J$k;

    invoke-static {p0}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LR2/I;

    invoke-static {p1}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LR2/I;

    invoke-static {p0, p1}, LR2/J;->g(LR2/I;LR2/I;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, LR2/J$k;-><init>(Ljava/util/List;LR2/J$a;)V

    return-object v0
.end method

.method public static t(Ljava/lang/Iterable;)LR2/I;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LR2/I<",
            "-TT;>;>;)",
            "LR2/I<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LR2/J$k;

    invoke-static {p0}, LR2/J;->k(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LR2/J$k;-><init>(Ljava/util/List;LR2/J$a;)V

    return-object v0
.end method

.method public static varargs u([LR2/I;)LR2/I;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "LR2/I<",
            "-TT;>;)",
            "LR2/I<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v0, LR2/J$k;

    invoke-static {p0}, LR2/J;->l([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LR2/J$k;-><init>(Ljava/util/List;LR2/J$a;)V

    return-object v0
.end method

.method public static v(Ljava/lang/Class;)LR2/I;
    .locals 2
    .annotation build LQ2/a;
    .end annotation

    .annotation build LQ2/c;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "LR2/I<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, LR2/J$l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LR2/J$l;-><init>(Ljava/lang/Class;LR2/J$a;)V

    return-object v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Predicates."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x28

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez p1, :cond_0

    const/16 p1, 0x2c

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
