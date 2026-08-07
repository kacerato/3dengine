.class public LW2/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW2/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LW2/b;->l([LW2/r;)LW2/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[LW2/r;

.field public final synthetic b:LW2/b;


# direct methods
.method public constructor <init>(LW2/b;[LW2/r;)V
    .locals 0

    iput-object p1, p0, LW2/b$a;->b:LW2/b;

    iput-object p2, p0, LW2/b$a;->a:[LW2/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a([B)LW2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LW2/b$a;->a([B)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public a([B)LW2/r;
    .locals 4

    .line 2
    iget-object v0, p0, LW2/b$a;->a:[LW2/r;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3, p1}, LW2/r;->a([B)LW2/r;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic b(C)LW2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LW2/b$a;->b(C)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public b(C)LW2/r;
    .locals 4

    .line 2
    iget-object v0, p0, LW2/b$a;->a:[LW2/r;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3, p1}, LW2/r;->b(C)LW2/r;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic c(B)LW2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LW2/b$a;->c(B)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public c(B)LW2/r;
    .locals 4

    .line 2
    iget-object v0, p0, LW2/b$a;->a:[LW2/r;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3, p1}, LW2/r;->c(B)LW2/r;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic d(Ljava/lang/CharSequence;)LW2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LW2/b$a;->d(Ljava/lang/CharSequence;)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/CharSequence;)LW2/r;
    .locals 4

    .line 2
    iget-object v0, p0, LW2/b$a;->a:[LW2/r;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3, p1}, LW2/r;->d(Ljava/lang/CharSequence;)LW2/r;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic e([BII)LW2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, LW2/b$a;->e([BII)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public e([BII)LW2/r;
    .locals 4

    .line 2
    iget-object v0, p0, LW2/b$a;->a:[LW2/r;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3, p1, p2, p3}, LW2/r;->e([BII)LW2/r;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic f(Ljava/nio/ByteBuffer;)LW2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LW2/b$a;->f(Ljava/nio/ByteBuffer;)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/nio/ByteBuffer;)LW2/r;
    .locals 5

    .line 2
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 3
    iget-object v1, p0, LW2/b$a;->a:[LW2/r;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 4
    invoke-static {p1, v0}, LW2/w;->d(Ljava/nio/Buffer;I)V

    .line 5
    invoke-interface {v4, p1}, LW2/r;->f(Ljava/nio/ByteBuffer;)LW2/r;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic g(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)LW2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LW2/b$a;->g(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)LW2/r;
    .locals 4

    .line 2
    iget-object v0, p0, LW2/b$a;->a:[LW2/r;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3, p1, p2}, LW2/r;->g(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)LW2/r;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public h(Ljava/lang/Object;LW2/n;)LW2/r;
    .locals 4
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
            "LW2/r;"
        }
    .end annotation

    iget-object v0, p0, LW2/b$a;->a:[LW2/r;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2}, LW2/r;->h(Ljava/lang/Object;LW2/n;)LW2/r;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public i()LW2/p;
    .locals 2

    iget-object v0, p0, LW2/b$a;->b:LW2/b;

    iget-object v1, p0, LW2/b$a;->a:[LW2/r;

    invoke-virtual {v0, v1}, LW2/b;->m([LW2/r;)LW2/p;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putBoolean(Z)LW2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LW2/b$a;->putBoolean(Z)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public putBoolean(Z)LW2/r;
    .locals 4

    .line 2
    iget-object v0, p0, LW2/b$a;->a:[LW2/r;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3, p1}, LW2/r;->putBoolean(Z)LW2/r;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic putDouble(D)LW2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LW2/b$a;->putDouble(D)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public putDouble(D)LW2/r;
    .locals 4

    .line 2
    iget-object v0, p0, LW2/b$a;->a:[LW2/r;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3, p1, p2}, LW2/r;->putDouble(D)LW2/r;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic putFloat(F)LW2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LW2/b$a;->putFloat(F)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public putFloat(F)LW2/r;
    .locals 4

    .line 2
    iget-object v0, p0, LW2/b$a;->a:[LW2/r;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3, p1}, LW2/r;->putFloat(F)LW2/r;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic putInt(I)LW2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LW2/b$a;->putInt(I)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public putInt(I)LW2/r;
    .locals 4

    .line 2
    iget-object v0, p0, LW2/b$a;->a:[LW2/r;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3, p1}, LW2/r;->putInt(I)LW2/r;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic putLong(J)LW2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LW2/b$a;->putLong(J)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public putLong(J)LW2/r;
    .locals 4

    .line 2
    iget-object v0, p0, LW2/b$a;->a:[LW2/r;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3, p1, p2}, LW2/r;->putLong(J)LW2/r;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic putShort(S)LW2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LW2/b$a;->putShort(S)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public putShort(S)LW2/r;
    .locals 4

    .line 2
    iget-object v0, p0, LW2/b$a;->a:[LW2/r;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3, p1}, LW2/r;->putShort(S)LW2/r;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
