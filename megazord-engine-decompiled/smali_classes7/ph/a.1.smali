.class public Lph/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lph/D;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final B(FFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lph/j;->d(FFF)Lph/i;

    move-result-object p1

    invoke-virtual {p0, p1}, Lph/a;->h(Lph/i;)V

    return-void
.end method

.method public final varargs C([I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lph/a;->s([I[I[I)V

    return-void
.end method

.method public final E(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    invoke-static {p1}, Lph/j;->b(F)Lph/i;

    move-result-object p1

    invoke-virtual {p0, p1}, Lph/a;->h(Lph/i;)V

    return-void
.end method

.method public final F(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    invoke-static {p1, p2}, Lph/j;->c(FF)Lph/i;

    move-result-object p1

    invoke-virtual {p0, p1}, Lph/a;->h(Lph/i;)V

    return-void
.end method

.method public G(Lph/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "normal"
        }
    .end annotation

    return-void
.end method

.method public c(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mtlFileNames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final varargs e([I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-virtual {p0, p1, p1, p1}, Lph/a;->s([I[I[I)V

    return-void
.end method

.method public final varargs g([I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p1, v0}, Lph/a;->s([I[I[I)V

    return-void
.end method

.method public h(Lph/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texCoord"
        }
    .end annotation

    return-void
.end method

.method public i(Lph/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "face"
        }
    .end annotation

    return-void
.end method

.method public k(Lph/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    return-void
.end method

.method public final l(FFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lph/j;->d(FFF)Lph/i;

    move-result-object p1

    invoke-virtual {p0, p1}, Lph/a;->G(Lph/i;)V

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "materialGroupName"
        }
    .end annotation

    return-void
.end method

.method public final varargs q([I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p1}, Lph/a;->s([I[I[I)V

    return-void
.end method

.method public final s([I[I[I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "vt",
            "vn"
        }
    .end annotation

    const-string v0, "The vertex indices are null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lph/s;->c([I[I[I)Lph/q;

    move-result-object p1

    invoke-virtual {p0, p1}, Lph/a;->i(Lph/q;)V

    return-void
.end method

.method public final v(FFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lph/j;->d(FFF)Lph/i;

    move-result-object p1

    invoke-virtual {p0, p1}, Lph/a;->k(Lph/i;)V

    return-void
.end method

.method public w(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupNames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
