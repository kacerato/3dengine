.class public Lub/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lub/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TK;>;",
        "Ljava/util/Iterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public b:Z

.field public final c:Lub/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lub/m<",
            "TK;>;"
        }
    .end annotation
.end field

.field public d:I

.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>(Lub/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "set"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lub/m<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lub/m$a;->f:Z

    iput-object p1, p0, Lub/m$a;->c:Lub/m;

    invoke-virtual {p0}, Lub/m$a;->d()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lub/m$a;->c:Lub/m;

    iget-object v0, v0, Lub/m;->c:[Ljava/lang/Object;

    array-length v1, v0

    :cond_0
    iget v2, p0, Lub/m$a;->d:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lub/m$a;->d:I

    if-ge v2, v1, :cond_1

    aget-object v2, v0, v2

    if-eqz v2, :cond_0

    iput-boolean v3, p0, Lub/m$a;->b:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lub/m$a;->b:Z

    return-void
.end method

.method public b()Lub/m$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lub/m$a<",
            "TK;>;"
        }
    .end annotation

    return-object p0
.end method

.method public d()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lub/m$a;->e:I

    iput v0, p0, Lub/m$a;->d:I

    invoke-virtual {p0}, Lub/m$a;->a()V

    return-void
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

    iget-object v1, p0, Lub/m$a;->c:Lub/m;

    iget v1, v1, Lub/m;->b:I

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lub/b;-><init>(ZI)V

    invoke-virtual {p0, v0}, Lub/m$a;->h(Lub/b;)Lub/b;

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
    iget-boolean v0, p0, Lub/m$a;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lub/m$a;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lub/b;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public hasNext()Z
    .locals 2

    iget-boolean v0, p0, Lub/m$a;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lub/m$a;->b:Z

    return v0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lub/m$a;->b()Lub/m$a;

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

    iget-boolean v0, p0, Lub/m$a;->b:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lub/m$a;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lub/m$a;->c:Lub/m;

    iget-object v0, v0, Lub/m;->c:[Ljava/lang/Object;

    iget v1, p0, Lub/m$a;->d:I

    aget-object v0, v0, v1

    iput v1, p0, Lub/m$a;->e:I

    invoke-virtual {p0}, Lub/m$a;->a()V

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

.method public remove()V
    .locals 7

    iget v0, p0, Lub/m$a;->e:I

    if-ltz v0, :cond_3

    iget-object v1, p0, Lub/m$a;->c:Lub/m;

    iget-object v2, v1, Lub/m;->c:[Ljava/lang/Object;

    iget v1, v1, Lub/m;->g:I

    add-int/lit8 v3, v0, 0x1

    :goto_0
    and-int/2addr v3, v1

    aget-object v4, v2, v3

    if-eqz v4, :cond_1

    iget-object v5, p0, Lub/m$a;->c:Lub/m;

    invoke-virtual {v5, v4}, Lub/m;->p(Ljava/lang/Object;)I

    move-result v5

    sub-int v6, v3, v5

    and-int/2addr v6, v1

    sub-int v5, v0, v5

    and-int/2addr v5, v1

    if-le v6, v5, :cond_0

    aput-object v4, v2, v0

    move v0, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    aput-object v1, v2, v0

    iget-object v1, p0, Lub/m$a;->c:Lub/m;

    iget v2, v1, Lub/m;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lub/m;->b:I

    iget v1, p0, Lub/m$a;->e:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lub/m$a;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lub/m$a;->d:I

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lub/m$a;->e:I

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
