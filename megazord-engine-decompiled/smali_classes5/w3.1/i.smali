.class public Lw3/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls3/g;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ls3/c;

.field public final d:Lw3/f;


# direct methods
.method public constructor <init>(Lw3/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lw3/i;->a:Z

    iput-boolean v0, p0, Lw3/i;->b:Z

    iput-object p1, p0, Lw3/i;->d:Lw3/f;

    return-void
.end method


# virtual methods
.method public J0(J)Ls3/g;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lw3/i;->a()V

    iget-object v0, p0, Lw3/i;->d:Lw3/f;

    iget-object v1, p0, Lw3/i;->c:Ls3/c;

    iget-boolean v2, p0, Lw3/i;->b:Z

    invoke-virtual {v0, v1, p1, p2, v2}, Lw3/f;->v(Ls3/c;JZ)Lw3/f;

    return-object p0
.end method

.method public P0(F)Ls3/g;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lw3/i;->a()V

    iget-object v0, p0, Lw3/i;->d:Lw3/f;

    iget-object v1, p0, Lw3/i;->c:Ls3/c;

    iget-boolean v2, p0, Lw3/i;->b:Z

    invoke-virtual {v0, v1, p1, v2}, Lw3/f;->q(Ls3/c;FZ)Ls3/e;

    return-object p0
.end method

.method public final a()V
    .locals 2

    iget-boolean v0, p0, Lw3/i;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lw3/i;->a:Z

    return-void

    :cond_0
    new-instance v0, Lcom/google/firebase/encoders/EncodingException;

    const-string v1, "Cannot encode a second value in the ValueEncoderContext"

    invoke-direct {v0, v1}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(D)Ls3/g;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lw3/i;->a()V

    .line 4
    iget-object v0, p0, Lw3/i;->d:Lw3/f;

    iget-object v1, p0, Lw3/i;->c:Ls3/c;

    iget-boolean v2, p0, Lw3/i;->b:Z

    invoke-virtual {v0, v1, p1, p2, v2}, Lw3/f;->p(Ls3/c;DZ)Ls3/e;

    return-object p0
.end method

.method public add(I)Ls3/g;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lw3/i;->a()V

    .line 6
    iget-object v0, p0, Lw3/i;->d:Lw3/f;

    iget-object v1, p0, Lw3/i;->c:Ls3/c;

    iget-boolean v2, p0, Lw3/i;->b:Z

    invoke-virtual {v0, v1, p1, v2}, Lw3/f;->t(Ls3/c;IZ)Lw3/f;

    return-object p0
.end method

.method public add(Ljava/lang/String;)Ls3/g;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lw3/i;->a()V

    .line 2
    iget-object v0, p0, Lw3/i;->d:Lw3/f;

    iget-object v1, p0, Lw3/i;->c:Ls3/c;

    iget-boolean v2, p0, Lw3/i;->b:Z

    invoke-virtual {v0, v1, p1, v2}, Lw3/f;->r(Ls3/c;Ljava/lang/Object;Z)Ls3/e;

    return-object p0
.end method

.method public b(Ls3/c;Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lw3/i;->a:Z

    iput-object p1, p0, Lw3/i;->c:Ls3/c;

    iput-boolean p2, p0, Lw3/i;->b:Z

    return-void
.end method

.method public i1([B)Ls3/g;
    .locals 3
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lw3/i;->a()V

    iget-object v0, p0, Lw3/i;->d:Lw3/f;

    iget-object v1, p0, Lw3/i;->c:Ls3/c;

    iget-boolean v2, p0, Lw3/i;->b:Z

    invoke-virtual {v0, v1, p1, v2}, Lw3/f;->r(Ls3/c;Ljava/lang/Object;Z)Ls3/e;

    return-object p0
.end method

.method public j1(Z)Ls3/g;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lw3/i;->a()V

    iget-object v0, p0, Lw3/i;->d:Lw3/f;

    iget-object v1, p0, Lw3/i;->c:Ls3/c;

    iget-boolean v2, p0, Lw3/i;->b:Z

    invoke-virtual {v0, v1, p1, v2}, Lw3/f;->x(Ls3/c;ZZ)Lw3/f;

    return-object p0
.end method
