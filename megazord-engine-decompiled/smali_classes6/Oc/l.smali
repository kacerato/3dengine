.class public LOc/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

.field public b:LJAVARuntime/OHIntDataBase;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, LNc/a;->o(I)Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object p1

    iput-object p1, p0, LOc/l;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, LOc/l;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, LOc/l;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->h()I

    move-result v0

    return v0
.end method

.method public b()LOc/l;
    .locals 3

    new-instance v0, LOc/l;

    iget-object v1, p0, LOc/l;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->h()I

    move-result v1

    invoke-direct {v0, v1}, LOc/l;-><init>(I)V

    iget-object v1, v0, LOc/l;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->c0(I)V

    iget-object v1, v0, LOc/l;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    iget-object v2, p0, LOc/l;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->e0(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    return-object v0
.end method

.method public c(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    invoke-virtual {p0}, LOc/l;->a()I

    move-result v0

    sub-int/2addr v0, p1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, LOc/l;->n(IZ)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, LOc/l;->b()LOc/l;

    move-result-object v0

    return-object v0
.end method

.method public d(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LOc/l;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->R(I)V

    return-void
.end method

.method public e(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, LOc/l;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->V(I)I

    move-result p1

    return p1
.end method

.method public f()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;
    .locals 1

    iget-object v0, p0, LOc/l;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    return-object v0
.end method

.method public g()[I
    .locals 1

    iget-object v0, p0, LOc/l;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->r0()[I

    move-result-object v0

    return-object v0
.end method

.method public h(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    invoke-virtual {p0}, LOc/l;->a()I

    move-result v0

    add-int/2addr v0, p1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, LOc/l;->n(IZ)V

    return-void
.end method

.method public i(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object v0, p0, LOc/l;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->c0(I)V

    return-void
.end method

.method public j(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LOc/l;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->d0(I)V

    return-void
.end method

.method public k([I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LOc/l;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->g0([I)V

    return-void
.end method

.method public l(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    :goto_0
    invoke-virtual {p0}, LOc/l;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, LOc/l;->e(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, LOc/l;->o(II)V

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, LOc/l;->h(I)V

    return-void
.end method

.method public m(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newCapacity"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, LOc/l;->n(IZ)V

    return-void
.end method

.method public n(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "newCapacity",
            "copyData"
        }
    .end annotation

    iget-object v0, p0, LOc/l;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->h()I

    move-result v0

    if-eq p1, v0, :cond_2

    invoke-static {p1}, LNc/a;->o(I)Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v0

    if-eqz p2, :cond_1

    iget-object p2, p0, LOc/l;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->h()I

    move-result p2

    const/4 v1, 0x0

    if-le p1, p2, :cond_0

    :goto_0
    iget-object p1, p0, LOc/l;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->h()I

    move-result p1

    if-ge v1, p1, :cond_1

    iget-object p1, p0, LOc/l;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->V(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->d0(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, LOc/l;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->h()I

    move-result p2

    if-ge p1, p2, :cond_1

    :goto_1
    if-ge v1, p1, :cond_1

    iget-object p2, p0, LOc/l;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {p2, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->V(I)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->d0(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, LOc/l;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->destroy()V

    iput-object v0, p0, LOc/l;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    :cond_2
    return-void
.end method

.method public o(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "value"
        }
    .end annotation

    iget-object v0, p0, LOc/l;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->c0(I)V

    iget-object p1, p0, LOc/l;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->d0(I)V

    return-void
.end method

.method public p(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LOc/l;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->h()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->c0(I)V

    iget-object v0, p0, LOc/l;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->d0(I)V

    return-void
.end method

.method public q(LJAVARuntime/OHIntDataBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, LOc/l;->b:LJAVARuntime/OHIntDataBase;

    return-void
.end method

.method public r()I
    .locals 1

    iget-object v0, p0, LOc/l;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->h()I

    move-result v0

    return v0
.end method

.method public s()LJAVARuntime/OHIntDataBase;
    .locals 1

    iget-object v0, p0, LOc/l;->b:LJAVARuntime/OHIntDataBase;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/OHIntDataBase;

    invoke-direct {v0, p0}, LJAVARuntime/OHIntDataBase;-><init>(LOc/l;)V

    iput-object v0, p0, LOc/l;->b:LJAVARuntime/OHIntDataBase;

    :cond_0
    return-object v0
.end method
