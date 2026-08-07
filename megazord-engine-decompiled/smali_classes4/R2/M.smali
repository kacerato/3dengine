.class public final LR2/M;
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
        LR2/M$g;,
        LR2/M$h;,
        LR2/M$f;
    }
.end annotation


# instance fields
.field public final a:LR2/e;

.field public final b:Z

.field public final c:LR2/M$h;

.field public final d:I


# direct methods
.method public constructor <init>(LR2/M$h;)V
    .locals 3

    .line 1
    invoke-static {}, LR2/e;->G()LR2/e;

    move-result-object v0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, LR2/M;-><init>(LR2/M$h;ZLR2/e;I)V

    return-void
.end method

.method public constructor <init>(LR2/M$h;ZLR2/e;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LR2/M;->c:LR2/M$h;

    .line 4
    iput-boolean p2, p0, LR2/M;->b:Z

    .line 5
    iput-object p3, p0, LR2/M;->a:LR2/e;

    .line 6
    iput p4, p0, LR2/M;->d:I

    return-void
.end method

.method public static synthetic a(LR2/M;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p1}, LR2/M;->p(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(LR2/M;)LR2/e;
    .locals 0

    iget-object p0, p0, LR2/M;->a:LR2/e;

    return-object p0
.end method

.method public static synthetic c(LR2/M;)Z
    .locals 0

    iget-boolean p0, p0, LR2/M;->b:Z

    return p0
.end method

.method public static synthetic d(LR2/M;)I
    .locals 0

    iget p0, p0, LR2/M;->d:I

    return p0
.end method

.method public static e(I)LR2/M;
    .locals 2

    if-lez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "The length may not be less than 1"

    invoke-static {v0, v1}, LR2/H;->e(ZLjava/lang/Object;)V

    new-instance v0, LR2/M;

    new-instance v1, LR2/M$d;

    invoke-direct {v1, p0}, LR2/M$d;-><init>(I)V

    invoke-direct {v0, v1}, LR2/M;-><init>(LR2/M$h;)V

    return-object v0
.end method

.method public static h(C)LR2/M;
    .locals 0

    invoke-static {p0}, LR2/e;->q(C)LR2/e;

    move-result-object p0

    invoke-static {p0}, LR2/M;->i(LR2/e;)LR2/M;

    move-result-object p0

    return-object p0
.end method

.method public static i(LR2/e;)LR2/M;
    .locals 2

    invoke-static {p0}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, LR2/M;

    new-instance v1, LR2/M$a;

    invoke-direct {v1, p0}, LR2/M$a;-><init>(LR2/e;)V

    invoke-direct {v0, v1}, LR2/M;-><init>(LR2/M$h;)V

    return-object v0
.end method

.method public static j(LR2/h;)LR2/M;
    .locals 2

    const-string v0, ""

    invoke-virtual {p0, v0}, LR2/h;->d(Ljava/lang/CharSequence;)LR2/g;

    move-result-object v0

    invoke-virtual {v0}, LR2/g;->d()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "The pattern may not match the empty string: %s"

    invoke-static {v0, v1, p0}, LR2/H;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    new-instance v0, LR2/M;

    new-instance v1, LR2/M$c;

    invoke-direct {v1, p0}, LR2/M$c;-><init>(LR2/h;)V

    invoke-direct {v0, v1}, LR2/M;-><init>(LR2/M$h;)V

    return-object v0
.end method

.method public static k(Ljava/lang/String;)LR2/M;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "The separator may not be the empty string."

    invoke-static {v0, v3}, LR2/H;->e(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, LR2/M;->h(C)LR2/M;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, LR2/M;

    new-instance v1, LR2/M$b;

    invoke-direct {v1, p0}, LR2/M$b;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, LR2/M;-><init>(LR2/M$h;)V

    return-object v0
.end method

.method public static l(Ljava/util/regex/Pattern;)LR2/M;
    .locals 1
    .annotation build LQ2/c;
    .end annotation

    new-instance v0, LR2/x;

    invoke-direct {v0, p0}, LR2/x;-><init>(Ljava/util/regex/Pattern;)V

    invoke-static {v0}, LR2/M;->j(LR2/h;)LR2/M;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/lang/String;)LR2/M;
    .locals 0
    .annotation build LQ2/c;
    .end annotation

    invoke-static {p0}, LR2/G;->b(Ljava/lang/String;)LR2/h;

    move-result-object p0

    invoke-static {p0}, LR2/M;->j(LR2/h;)LR2/M;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public f(I)LR2/M;
    .locals 4

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "must be greater than zero: %s"

    invoke-static {v0, v1, p1}, LR2/H;->k(ZLjava/lang/String;I)V

    new-instance v0, LR2/M;

    iget-object v1, p0, LR2/M;->c:LR2/M$h;

    iget-boolean v2, p0, LR2/M;->b:Z

    iget-object v3, p0, LR2/M;->a:LR2/e;

    invoke-direct {v0, v1, v2, v3, p1}, LR2/M;-><init>(LR2/M$h;ZLR2/e;I)V

    return-object v0
.end method

.method public g()LR2/M;
    .locals 5

    new-instance v0, LR2/M;

    iget-object v1, p0, LR2/M;->c:LR2/M$h;

    iget-object v2, p0, LR2/M;->a:LR2/e;

    iget v3, p0, LR2/M;->d:I

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v3}, LR2/M;-><init>(LR2/M$h;ZLR2/e;I)V

    return-object v0
.end method

.method public n(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, LR2/M$e;

    invoke-direct {v0, p0, p1}, LR2/M$e;-><init>(LR2/M;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public o(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, LR2/M;->p(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final p(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LR2/M;->c:LR2/M$h;

    invoke-interface {v0, p0, p1}, LR2/M$h;->a(LR2/M;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public q()LR2/M;
    .locals 1

    invoke-static {}, LR2/e;->X()LR2/e;

    move-result-object v0

    invoke-virtual {p0, v0}, LR2/M;->r(LR2/e;)LR2/M;

    move-result-object v0

    return-object v0
.end method

.method public r(LR2/e;)LR2/M;
    .locals 4

    invoke-static {p1}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, LR2/M;

    iget-object v1, p0, LR2/M;->c:LR2/M$h;

    iget-boolean v2, p0, LR2/M;->b:Z

    iget v3, p0, LR2/M;->d:I

    invoke-direct {v0, v1, v2, p1, v3}, LR2/M;-><init>(LR2/M$h;ZLR2/e;I)V

    return-object v0
.end method

.method public s(C)LR2/M$f;
    .locals 0
    .annotation build LQ2/a;
    .end annotation

    invoke-static {p1}, LR2/M;->h(C)LR2/M;

    move-result-object p1

    invoke-virtual {p0, p1}, LR2/M;->t(LR2/M;)LR2/M$f;

    move-result-object p1

    return-object p1
.end method

.method public t(LR2/M;)LR2/M$f;
    .locals 2
    .annotation build LQ2/a;
    .end annotation

    new-instance v0, LR2/M$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LR2/M$f;-><init>(LR2/M;LR2/M;LR2/M$a;)V

    return-object v0
.end method

.method public u(Ljava/lang/String;)LR2/M$f;
    .locals 0
    .annotation build LQ2/a;
    .end annotation

    invoke-static {p1}, LR2/M;->k(Ljava/lang/String;)LR2/M;

    move-result-object p1

    invoke-virtual {p0, p1}, LR2/M;->t(LR2/M;)LR2/M$f;

    move-result-object p1

    return-object p1
.end method
