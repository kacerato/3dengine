.class public Lub/l$c;
.super Lub/l$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lub/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lub/l$d<",
        "TK;",
        "Ljava/lang/Object;",
        "TK;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lub/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lub/l<",
            "TK;*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lub/l$d;-><init>(Lub/l;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b()V
    .locals 0

    invoke-super {p0}, Lub/l$d;->b()V

    return-void
.end method

.method public d()Lub/l$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lub/l$c<",
            "TK;>;"
        }
    .end annotation

    return-object p0
.end method

.method public g()Lub/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lub/b<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lub/b;

    iget-object v1, p0, Lub/l$d;->c:Lub/l;

    iget v1, v1, Lub/l;->b:I

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lub/b;-><init>(ZI)V

    invoke-virtual {p0, v0}, Lub/l$c;->h(Lub/b;)Lub/b;

    move-result-object v0

    return-object v0
.end method

.method public h(Lub/b;)Lub/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lub/b<",
            "TK;>;)",
            "Lub/b<",
            "TK;>;"
        }
    .end annotation

    :goto_0
    iget-boolean v0, p0, Lub/l$d;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lub/l$c;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lub/b;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public hasNext()Z
    .locals 2

    iget-boolean v0, p0, Lub/l$d;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lub/l$d;->b:Z

    return v0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lub/l$c;->d()Lub/l$c;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-boolean v0, p0, Lub/l$d;->b:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lub/l$d;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lub/l$d;->c:Lub/l;

    iget-object v0, v0, Lub/l;->c:[Ljava/lang/Object;

    iget v1, p0, Lub/l$d;->d:I

    aget-object v0, v0, v1

    iput v1, p0, Lub/l$d;->e:I

    invoke-virtual {p0}, Lub/l$d;->a()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    invoke-super {p0}, Lub/l$d;->remove()V

    return-void
.end method
