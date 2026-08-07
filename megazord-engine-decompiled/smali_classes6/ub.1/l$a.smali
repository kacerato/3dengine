.class public Lub/l$a;
.super Lub/l$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lub/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lub/l$d<",
        "TK;TV;",
        "Lub/l$b<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public g:Lub/l$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lub/l$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field


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
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lub/l$d;-><init>(Lub/l;)V

    new-instance p1, Lub/l$b;

    invoke-direct {p1}, Lub/l$b;-><init>()V

    iput-object p1, p0, Lub/l$a;->g:Lub/l$b;

    return-void
.end method


# virtual methods
.method public bridge synthetic b()V
    .locals 0

    invoke-super {p0}, Lub/l$d;->b()V

    return-void
.end method

.method public d()Lub/l$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lub/l$a<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public g()Lub/l$b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lub/l$b<",
            "TK;TV;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lub/l$d;->b:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lub/l$d;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lub/l$d;->c:Lub/l;

    iget-object v1, v0, Lub/l;->c:[Ljava/lang/Object;

    iget-object v2, p0, Lub/l$a;->g:Lub/l$b;

    iget v3, p0, Lub/l$d;->d:I

    aget-object v1, v1, v3

    iput-object v1, v2, Lub/l$b;->a:Ljava/lang/Object;

    iget-object v0, v0, Lub/l;->d:[Ljava/lang/Object;

    aget-object v0, v0, v3

    iput-object v0, v2, Lub/l$b;->b:Ljava/lang/Object;

    iput v3, p0, Lub/l$d;->e:I

    invoke-virtual {p0}, Lub/l$d;->a()V

    iget-object v0, p0, Lub/l$a;->g:Lub/l$b;

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

    invoke-virtual {p0}, Lub/l$a;->d()Lub/l$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lub/l$a;->g()Lub/l$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    invoke-super {p0}, Lub/l$d;->remove()V

    return-void
.end method
