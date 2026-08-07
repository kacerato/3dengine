.class public LOc/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;


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
    invoke-static {p1}, LNc/a;->r(I)Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    move-result-object p1

    iput-object p1, p0, LOc/m;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)V
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
    iput-object p1, p0, LOc/m;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, LOc/m;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->h()I

    move-result v0

    return v0
.end method

.method public b()LOc/m;
    .locals 4

    new-instance v0, LOc/m;

    iget-object v1, p0, LOc/m;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->h()I

    move-result v1

    invoke-direct {v0, v1}, LOc/m;-><init>(I)V

    iget-object v1, v0, LOc/m;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->h0(I)V

    iget-object v1, v0, LOc/m;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    iget-object v3, p0, LOc/m;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->q0(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)V

    iget-object v1, v0, LOc/m;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->h0(I)V

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

    invoke-virtual {p0}, LOc/m;->a()I

    move-result v0

    sub-int/2addr v0, p1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, LOc/m;->m(IZ)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, LOc/m;->b()LOc/m;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, LOc/m;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, LOc/m;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    :cond_0
    return-void
.end method

.method public e(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, LOc/m;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->X(I)S

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method public f()Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;
    .locals 1

    iget-object v0, p0, LOc/m;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    return-object v0
.end method

.method public g()[S
    .locals 1

    iget-object v0, p0, LOc/m;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->S0()[S

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

    invoke-virtual {p0}, LOc/m;->a()I

    move-result v0

    add-int/2addr v0, p1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, LOc/m;->m(IZ)V

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

    iget-object v0, p0, LOc/m;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->h0(I)V

    return-void
.end method

.method public j(S)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LOc/m;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->t0(S)V

    return-void
.end method

.method public k([S)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LOc/m;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->w0([S)V

    return-void
.end method

.method public l(I)V
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

    invoke-virtual {p0, p1, v0}, LOc/m;->m(IZ)V

    return-void
.end method

.method public m(IZ)V
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

    iget-object v0, p0, LOc/m;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->h()I

    move-result v0

    if-eq p1, v0, :cond_2

    invoke-static {p1}, LNc/a;->r(I)Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    move-result-object v0

    if-eqz p2, :cond_1

    iget-object p2, p0, LOc/m;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->h()I

    move-result p2

    const/4 v1, 0x0

    if-le p1, p2, :cond_0

    :goto_0
    iget-object p1, p0, LOc/m;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->h()I

    move-result p1

    if-ge v1, p1, :cond_1

    iget-object p1, p0, LOc/m;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->X(I)S

    move-result p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->t0(S)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, LOc/m;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->h()I

    move-result p2

    if-ge p1, p2, :cond_1

    :goto_1
    if-ge v1, p1, :cond_1

    iget-object p2, p0, LOc/m;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {p2, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->X(I)S

    move-result p2

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->t0(S)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, LOc/m;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->destroy()V

    iput-object v0, p0, LOc/m;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    :cond_2
    return-void
.end method

.method public n(IS)V
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

    iget-object v0, p0, LOc/m;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->h0(I)V

    iget-object p1, p0, LOc/m;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->t0(S)V

    return-void
.end method

.method public o(S)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LOc/m;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->h()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->h0(I)V

    iget-object v0, p0, LOc/m;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->t0(S)V

    return-void
.end method

.method public p()I
    .locals 1

    iget-object v0, p0, LOc/m;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->h()I

    move-result v0

    return v0
.end method
