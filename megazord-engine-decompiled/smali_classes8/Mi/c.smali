.class public LMi/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LKi/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LKi/h;

    invoke-direct {v0}, LKi/h;-><init>()V

    iput-object v0, p0, LMi/c;->a:LKi/h;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;ILLi/n;)LLi/g;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "is",
            "maxVertPerPoly",
            "meshProcessor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, LKi/b;->b(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, LMi/c;->b(Ljava/nio/ByteBuffer;ILLi/n;)LLi/g;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/nio/ByteBuffer;ILLi/n;)LLi/g;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bb",
            "maxVertPerPoly",
            "meshProcessor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, LMi/d;

    invoke-direct {v0}, LMi/d;-><init>()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, LMi/d;->a:I

    const v2, 0x54534554

    if-eq v1, v2, :cond_2

    invoke-static {v1}, LKi/b;->a(I)I

    move-result v1

    iput v1, v0, LMi/d;->a:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_0

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :cond_0
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid magic"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, LMi/d;->b:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const v3, 0x8801

    if-ne v1, v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid version"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    const/4 v3, 0x0

    if-ne v1, v2, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    :goto_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, LMi/d;->c:I

    iget-object v1, p0, LMi/c;->a:LKi/h;

    invoke-virtual {v1, p1}, LKi/h;->a(Ljava/nio/ByteBuffer;)LEi/y;

    move-result-object v1

    iput-object v1, v0, LMi/d;->d:LEi/y;

    invoke-virtual {p0, p1, v2}, LMi/c;->c(Ljava/nio/ByteBuffer;Z)LLi/p;

    move-result-object v1

    iput-object v1, v0, LMi/d;->e:LLi/p;

    new-instance v7, LEi/v;

    iget-object v1, v0, LMi/d;->d:LEi/y;

    invoke-direct {v7, v1, p2}, LEi/v;-><init>(LEi/y;I)V

    invoke-static {v2}, LNi/d;->a(Z)LLi/i;

    move-result-object v8

    new-instance p2, LLi/g;

    iget-object v5, v0, LMi/d;->e:LLi/p;

    new-instance v6, LLi/r;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-direct {v6, v1, v2}, LLi/r;-><init>(Ljava/nio/ByteOrder;Z)V

    move-object v4, p2

    move-object v9, p3

    invoke-direct/range {v4 .. v9}, LLi/g;-><init>(LLi/p;LLi/r;LEi/v;LLi/i;LLi/n;)V

    move p3, v3

    :goto_3
    iget v1, v0, LMi/d;->c:I

    if-ge p3, v1, :cond_8

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-eqz v1, :cond_8

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    new-array v1, v4, [B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v1, v3}, LLi/g;->e([BI)J

    move-result-wide v1

    cmp-long v4, v1, v5

    if-eqz v4, :cond_7

    invoke-virtual {p2, v1, v2}, LLi/g;->h(J)V

    :cond_7
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    return-object p2
.end method

.method public final c(Ljava/nio/ByteBuffer;Z)LLi/p;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bb",
            "cCompatibility"
        }
    .end annotation

    new-instance p2, LLi/p;

    invoke-direct {p2}, LLi/p;-><init>()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p2, LLi/p;->a:[F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    iput v0, p2, LLi/p;->b:F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    iput v0, p2, LLi/p;->c:F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p2, LLi/p;->d:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p2, LLi/p;->e:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    iput v0, p2, LLi/p;->f:F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    iput v0, p2, LLi/p;->g:F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    iput v0, p2, LLi/p;->h:F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    iput v0, p2, LLi/p;->i:F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p2, LLi/p;->j:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p2, LLi/p;->k:I

    return-object p2
.end method
