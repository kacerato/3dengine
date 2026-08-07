.class public abstract LW2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW2/q;


# annotations
.annotation runtime LW2/k;
.end annotation

.annotation runtime Ld3/j;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)LW2/p;
    .locals 1

    invoke-interface {p0}, LW2/q;->g()LW2/r;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LW2/r;->g(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)LW2/r;

    move-result-object p1

    invoke-interface {p1}, LW2/r;->i()LW2/p;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/CharSequence;)LW2/p;
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, LW2/c;->d(I)LW2/r;

    move-result-object v0

    invoke-interface {v0, p1}, LW2/r;->d(Ljava/lang/CharSequence;)LW2/r;

    move-result-object p1

    invoke-interface {p1}, LW2/r;->i()LW2/p;

    move-result-object p1

    return-object p1
.end method

.method public d(I)LW2/r;
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "expectedInputSize must be >= 0 but was %s"

    invoke-static {v0, v1, p1}, LR2/H;->k(ZLjava/lang/String;I)V

    invoke-interface {p0}, LW2/q;->g()LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/Object;LW2/n;)LW2/p;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime LW2/F;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "LW2/n<",
            "-TT;>;)",
            "LW2/p;"
        }
    .end annotation

    invoke-interface {p0}, LW2/q;->g()LW2/r;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LW2/r;->h(Ljava/lang/Object;LW2/n;)LW2/r;

    move-result-object p1

    invoke-interface {p1}, LW2/r;->i()LW2/p;

    move-result-object p1

    return-object p1
.end method

.method public f([B)LW2/p;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, LW2/c;->k([BII)LW2/p;

    move-result-object p1

    return-object p1
.end method

.method public h(I)LW2/p;
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, LW2/c;->d(I)LW2/r;

    move-result-object v0

    invoke-interface {v0, p1}, LW2/r;->putInt(I)LW2/r;

    move-result-object p1

    invoke-interface {p1}, LW2/r;->i()LW2/p;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/nio/ByteBuffer;)LW2/p;
    .locals 1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, LW2/c;->d(I)LW2/r;

    move-result-object v0

    invoke-interface {v0, p1}, LW2/r;->f(Ljava/nio/ByteBuffer;)LW2/r;

    move-result-object p1

    invoke-interface {p1}, LW2/r;->i()LW2/p;

    move-result-object p1

    return-object p1
.end method

.method public j(J)LW2/p;
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, LW2/c;->d(I)LW2/r;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LW2/r;->putLong(J)LW2/r;

    move-result-object p1

    invoke-interface {p1}, LW2/r;->i()LW2/p;

    move-result-object p1

    return-object p1
.end method

.method public k([BII)LW2/p;
    .locals 2

    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {p2, v0, v1}, LR2/H;->f0(III)V

    invoke-virtual {p0, p3}, LW2/c;->d(I)LW2/r;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, LW2/r;->e([BII)LW2/r;

    move-result-object p1

    invoke-interface {p1}, LW2/r;->i()LW2/p;

    move-result-object p1

    return-object p1
.end method
