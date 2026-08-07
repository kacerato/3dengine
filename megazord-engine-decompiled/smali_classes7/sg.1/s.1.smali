.class public final Lsg/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsg/r;


# instance fields
.field public final a:Ljava/util/regex/Matcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/lang/CharSequence;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lsg/p;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/util/regex/Matcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "matcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsg/s;->a:Ljava/util/regex/Matcher;

    iput-object p2, p0, Lsg/s;->b:Ljava/lang/CharSequence;

    new-instance p1, Lsg/s$b;

    invoke-direct {p1, p0}, Lsg/s$b;-><init>(Lsg/s;)V

    iput-object p1, p0, Lsg/s;->c:Lsg/p;

    return-void
.end method

.method public static final synthetic d(Lsg/s;)Ljava/util/regex/MatchResult;
    .locals 0

    invoke-virtual {p0}, Lsg/s;->e()Ljava/util/regex/MatchResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge a()Lsg/r$b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lsg/r$a;->a(Lsg/r;)Lsg/r$b;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lsg/s;->d:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Lsg/s$a;

    invoke-direct {v0, p0}, Lsg/s$a;-><init>(Lsg/s;)V

    iput-object v0, p0, Lsg/s;->d:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lsg/s;->d:Ljava/util/List;

    invoke-static {v0}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    return-object v0
.end method

.method public c()Lsg/p;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lsg/s;->c:Lsg/p;

    return-object v0
.end method

.method public final e()Ljava/util/regex/MatchResult;
    .locals 1

    iget-object v0, p0, Lsg/s;->a:Ljava/util/regex/Matcher;

    return-object v0
.end method

.method public getRange()Lng/l;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lsg/s;->e()Ljava/util/regex/MatchResult;

    move-result-object v0

    invoke-static {v0}, Lsg/w;->c(Ljava/util/regex/MatchResult;)Lng/l;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lsg/s;->e()Ljava/util/regex/MatchResult;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/regex/MatchResult;->group()Ljava/lang/String;

    move-result-object v0

    const-string v1, "group(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public next()Lsg/r;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lsg/s;->e()Ljava/util/regex/MatchResult;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/regex/MatchResult;->end()I

    move-result v0

    invoke-virtual {p0}, Lsg/s;->e()Ljava/util/regex/MatchResult;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/regex/MatchResult;->end()I

    move-result v1

    invoke-virtual {p0}, Lsg/s;->e()Ljava/util/regex/MatchResult;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/regex/MatchResult;->start()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lsg/s;->b:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Lsg/s;->a:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->pattern()Ljava/util/regex/Pattern;

    move-result-object v1

    iget-object v2, p0, Lsg/s;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "matcher(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lsg/s;->b:Ljava/lang/CharSequence;

    invoke-static {v1, v0, v2}, Lsg/w;->a(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lsg/r;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method
