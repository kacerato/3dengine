.class public final Lsg/s$b;
.super LHf/b;
.source "SourceFile"

# interfaces
.implements Lsg/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/s;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LHf/b<",
        "Lsg/o;",
        ">;",
        "Lsg/q;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lsg/s;


# direct methods
.method public constructor <init>(Lsg/s;)V
    .locals 0

    iput-object p1, p0, Lsg/s$b;->b:Lsg/s;

    invoke-direct {p0}, LHf/b;-><init>()V

    return-void
.end method

.method public static synthetic d(Lsg/s$b;I)Lsg/o;
    .locals 0

    invoke-static {p0, p1}, Lsg/s$b;->f(Lsg/s$b;I)Lsg/o;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Lsg/s$b;I)Lsg/o;
    .locals 0

    invoke-virtual {p0, p1}, Lsg/s$b;->get(I)Lsg/o;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()I
    .locals 1

    iget-object v0, p0, Lsg/s$b;->b:Lsg/s;

    invoke-static {v0}, Lsg/s;->d(Lsg/s;)Ljava/util/regex/MatchResult;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lsg/o;

    :goto_0
    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lsg/o;

    invoke-virtual {p0, p1}, Lsg/s$b;->e(Lsg/o;)Z

    move-result p1

    return p1
.end method

.method public bridge e(Lsg/o;)Z
    .locals 0

    invoke-super {p0, p1}, LHf/b;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)Lsg/o;
    .locals 3

    .line 1
    iget-object v0, p0, Lsg/s$b;->b:Lsg/s;

    invoke-static {v0}, Lsg/s;->d(Lsg/s;)Ljava/util/regex/MatchResult;

    move-result-object v0

    invoke-static {v0, p1}, Lsg/w;->d(Ljava/util/regex/MatchResult;I)Lng/l;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lng/l;->n()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    .line 3
    new-instance v1, Lsg/o;

    iget-object v2, p0, Lsg/s$b;->b:Lsg/s;

    invoke-static {v2}, Lsg/s;->d(Lsg/s;)Ljava/util/regex/MatchResult;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "group(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1, v0}, Lsg/o;-><init>(Ljava/lang/String;Lng/l;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public get(Ljava/lang/String;)Lsg/o;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v0, LWf/n;->a:LWf/m;

    iget-object v1, p0, Lsg/s$b;->b:Lsg/s;

    invoke-static {v1}, Lsg/s;->d(Lsg/s;)Ljava/util/regex/MatchResult;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, LWf/m;->c(Ljava/util/regex/MatchResult;Ljava/lang/String;)Lsg/o;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lsg/o;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, LHf/H;->K(Ljava/util/Collection;)Lng/l;

    move-result-object v0

    invoke-static {v0}, LHf/S;->E1(Ljava/lang/Iterable;)Lpg/m;

    move-result-object v0

    new-instance v1, Lsg/t;

    invoke-direct {v1, p0}, Lsg/t;-><init>(Lsg/s$b;)V

    invoke-static {v0, v1}, Lpg/K;->N1(Lpg/m;Leg/l;)Lpg/m;

    move-result-object v0

    invoke-interface {v0}, Lpg/m;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
