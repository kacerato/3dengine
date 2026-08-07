.class public abstract LR2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR2/t;


# annotations
.annotation build LQ2/b;
.end annotation

.annotation runtime LR2/k;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LR2/i$d;,
        LR2/i$c;,
        LR2/i$b;,
        LR2/i$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LR2/t<",
        "TA;TB;>;"
    }
.end annotation


# instance fields
.field public final b:Z

.field public transient c:LR2/i;
    .annotation build LQ3/h;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LR2/i<",
            "TB;TA;>;"
        }
    .end annotation

    .annotation runtime Le3/b;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, LR2/i;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, LR2/i;->b:Z

    return-void
.end method

.method public static j(LR2/t;LR2/t;)LR2/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "LR2/t<",
            "-TA;+TB;>;",
            "LR2/t<",
            "-TB;+TA;>;)",
            "LR2/i<",
            "TA;TB;>;"
        }
    .end annotation

    new-instance v0, LR2/i$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LR2/i$c;-><init>(LR2/t;LR2/t;LR2/i$a;)V

    return-object v0
.end method

.method public static l()LR2/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LR2/i<",
            "TT;TT;>;"
        }
    .end annotation

    sget-object v0, LR2/i$d;->d:LR2/i$d;

    return-object v0
.end method


# virtual methods
.method public final a(LR2/i;)LR2/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "LR2/i<",
            "TB;TC;>;)",
            "LR2/i<",
            "TA;TC;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LR2/i;->f(LR2/i;)LR2/i;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation build Ld3/a;
    .end annotation

    .annotation build Ld3/l;
        replacement = "this.convert(a)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0, p1}, LR2/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation build Ld3/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0, p1}, LR2/i;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation build Ld3/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TA;>;)",
            "Ljava/lang/Iterable<",
            "TB;>;"
        }
    .end annotation

    const-string v0, "fromIterable"

    invoke-static {p1, v0}, LR2/H;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, LR2/i$a;

    invoke-direct {v0, p0, p1}, LR2/i$a;-><init>(LR2/i;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TA;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-boolean v0, p0, LR2/i;->b:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, LR2/i;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p0, p1}, LR2/i;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-boolean v0, p0, LR2/i;->b:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, LR2/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p0, p1}, LR2/i;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(LR2/i;)LR2/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "LR2/i<",
            "TB;TC;>;)",
            "LR2/i<",
            "TA;TC;>;"
        }
    .end annotation

    new-instance v0, LR2/i$b;

    invoke-static {p1}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LR2/i;

    invoke-direct {v0, p0, p1}, LR2/i$b;-><init>(LR2/i;LR2/i;)V

    return-object v0
.end method

.method public abstract g(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation build Ld3/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TA;"
        }
    .end annotation
.end method

.method public abstract i(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation build Ld3/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation
.end method

.method public m()LR2/i;
    .locals 1
    .annotation runtime Ld3/b;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LR2/i<",
            "TB;TA;>;"
        }
    .end annotation

    iget-object v0, p0, LR2/i;->c:LR2/i;

    if-nez v0, :cond_0

    new-instance v0, LR2/i$e;

    invoke-direct {v0, p0}, LR2/i$e;-><init>(LR2/i;)V

    iput-object v0, p0, LR2/i;->c:LR2/i;

    :cond_0
    return-object v0
.end method

.method public final n(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TA;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-static {p1}, LR2/A;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, LR2/i;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-static {p1}, LR2/A;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, LR2/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
