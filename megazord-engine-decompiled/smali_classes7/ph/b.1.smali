.class public Lph/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lph/D;


# instance fields
.field public a:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "-",
            "Lph/i;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "-",
            "Lph/i;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "-",
            "Lph/i;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "-",
            "Lph/q;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public f:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


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

    invoke-virtual {p0, p1}, Lph/b;->h(Lph/i;)V

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

    invoke-virtual {p0, p1, v0, v0}, Lph/b;->s([I[I[I)V

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

    invoke-virtual {p0, p1}, Lph/b;->h(Lph/i;)V

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

    invoke-virtual {p0, p1}, Lph/b;->h(Lph/i;)V

    return-void
.end method

.method public final G(Lph/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "normal"
        }
    .end annotation

    iget-object v0, p0, Lph/b;->c:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "faceConsumer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Lph/q;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lph/b;->d:Ljava/util/function/Consumer;

    return-void
.end method

.method public b(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupNamesConsumer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lph/b;->e:Ljava/util/function/Consumer;

    return-void
.end method

.method public final c(Ljava/util/Collection;)V
    .locals 1
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

    iget-object v0, p0, Lph/b;->g:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public d(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "materialGroupNameConsumer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lph/b;->f:Ljava/util/function/Consumer;

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

    invoke-virtual {p0, p1, p1, p1}, Lph/b;->s([I[I[I)V

    return-void
.end method

.method public f(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mtlFileNamesConsumer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lph/b;->g:Ljava/util/function/Consumer;

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

    invoke-virtual {p0, p1, p1, v0}, Lph/b;->s([I[I[I)V

    return-void
.end method

.method public final h(Lph/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texCoord"
        }
    .end annotation

    iget-object v0, p0, Lph/b;->b:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final i(Lph/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "face"
        }
    .end annotation

    iget-object v0, p0, Lph/b;->d:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public j(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "normalConsumer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Lph/i;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lph/b;->c:Ljava/util/function/Consumer;

    return-void
.end method

.method public final k(Lph/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    iget-object v0, p0, Lph/b;->a:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
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

    invoke-virtual {p0, p1}, Lph/b;->G(Lph/i;)V

    return-void
.end method

.method public m(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texCoordConsumer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Lph/i;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lph/b;->b:Ljava/util/function/Consumer;

    return-void
.end method

.method public n(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertexConsumer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Lph/i;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lph/b;->a:Ljava/util/function/Consumer;

    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "materialGroupName"
        }
    .end annotation

    iget-object v0, p0, Lph/b;->f:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
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

    invoke-virtual {p0, p1, v0, p1}, Lph/b;->s([I[I[I)V

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

    iget-object v0, p0, Lph/b;->d:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lph/s;->c([I[I[I)Lph/q;

    move-result-object p1

    invoke-virtual {p0, p1}, Lph/b;->i(Lph/q;)V

    :cond_0
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

    invoke-virtual {p0, p1}, Lph/b;->k(Lph/i;)V

    return-void
.end method

.method public final w(Ljava/util/Collection;)V
    .locals 1
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

    iget-object v0, p0, Lph/b;->e:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
