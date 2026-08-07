.class public final LR2/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LQ2/b;
.end annotation

.annotation runtime LR2/k;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LR2/v$h;,
        LR2/v$b;,
        LR2/v$g;,
        LR2/v$d;,
        LR2/v$c;,
        LR2/v$e;,
        LR2/v$f;,
        LR2/v$i;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LR2/t;LR2/t;)LR2/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "LR2/t<",
            "TB;TC;>;",
            "LR2/t<",
            "TA;+TB;>;)",
            "LR2/t<",
            "TA;TC;>;"
        }
    .end annotation

    new-instance v0, LR2/v$d;

    invoke-direct {v0, p0, p1}, LR2/v$d;-><init>(LR2/t;LR2/t;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Object;)LR2/t;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime LR2/E;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "LR2/t<",
            "Ljava/lang/Object;",
            "TE;>;"
        }
    .end annotation

    new-instance v0, LR2/v$b;

    invoke-direct {v0, p0}, LR2/v$b;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static c(Ljava/util/Map;)LR2/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "LR2/t<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, LR2/v$e;

    invoke-direct {v0, p0}, LR2/v$e;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static d(Ljava/util/Map;Ljava/lang/Object;)LR2/t;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime LR2/E;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;+TV;>;TV;)",
            "LR2/t<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, LR2/v$c;

    invoke-direct {v0, p0, p1}, LR2/v$c;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static e(LR2/I;)LR2/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LR2/I<",
            "TT;>;)",
            "LR2/t<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, LR2/v$g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LR2/v$g;-><init>(LR2/I;LR2/v$a;)V

    return-object v0
.end method

.method public static f(LR2/Q;)LR2/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "LR2/Q<",
            "TT;>;)",
            "LR2/t<",
            "TF;TT;>;"
        }
    .end annotation

    new-instance v0, LR2/v$h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LR2/v$h;-><init>(LR2/Q;LR2/v$a;)V

    return-object v0
.end method

.method public static g()LR2/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "LR2/t<",
            "TE;TE;>;"
        }
    .end annotation

    sget-object v0, LR2/v$f;->INSTANCE:LR2/v$f;

    return-object v0
.end method

.method public static h()LR2/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LR2/t<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, LR2/v$i;->INSTANCE:LR2/v$i;

    return-object v0
.end method
