.class public Lph/u;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "count"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    aget v1, p0, v0

    if-gez v1, :cond_1

    add-int/2addr v1, p1

    aput v1, p0, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    aput v1, p0, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static b(Ljava/io/InputStream;)Lph/o;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lph/z;->a()Lph/o;

    move-result-object v0

    invoke-static {p0, v0}, Lph/u;->d(Ljava/io/InputStream;Lph/D;)Lph/D;

    move-result-object p0

    check-cast p0, Lph/o;

    return-object p0
.end method

.method public static c(Ljava/io/Reader;)Lph/o;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lph/z;->a()Lph/o;

    move-result-object v0

    invoke-static {p0, v0}, Lph/u;->e(Ljava/io/Reader;Lph/D;)Lph/D;

    move-result-object p0

    check-cast p0, Lph/o;

    return-object p0
.end method

.method public static d(Ljava/io/InputStream;Lph/D;)Lph/D;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputStream",
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lph/D;",
            ">(",
            "Ljava/io/InputStream;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v0, p1}, Lph/u;->f(Ljava/io/BufferedReader;Lph/D;)Lph/D;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/io/Reader;Lph/D;)Lph/D;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reader",
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lph/D;",
            ">(",
            "Ljava/io/Reader;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/BufferedReader;

    invoke-static {p0, p1}, Lph/u;->f(Ljava/io/BufferedReader;Lph/D;)Lph/D;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v0, p1}, Lph/u;->f(Ljava/io/BufferedReader;Lph/D;)Lph/D;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/io/BufferedReader;Lph/D;)Lph/D;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reader",
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lph/D;",
            ">(",
            "Ljava/io/BufferedReader;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lph/r;

    invoke-direct {v0}, Lph/r;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    :goto_1
    const-string v6, "\\"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    move v6, v7

    goto :goto_2

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    move v6, v1

    :goto_2
    if-eqz v6, :cond_4

    :goto_3
    return-object p1

    :cond_4
    new-instance v6, Ljava/util/StringTokenizer;

    invoke-direct {v6, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "v"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {v6}, Lph/C;->h(Ljava/util/StringTokenizer;)Lph/i;

    move-result-object v5

    invoke-interface {p1, v5}, Lph/D;->k(Lph/i;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    const-string v9, "vt"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {v6}, Lph/C;->h(Ljava/util/StringTokenizer;)Lph/i;

    move-result-object v5

    invoke-interface {p1, v5}, Lph/D;->h(Lph/i;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    const-string v9, "vn"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-static {v6}, Lph/C;->h(Ljava/util/StringTokenizer;)Lph/i;

    move-result-object v5

    invoke-interface {p1, v5}, Lph/D;->G(Lph/i;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_8
    const-string v6, "mtllib"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v9, 0x6

    if-eqz v6, :cond_9

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {p1, v5}, Lph/D;->c(Ljava/util/Collection;)V

    goto/16 :goto_0

    :cond_9
    const-string v6, "usemtl"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lph/D;->p(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string v6, "g"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lph/u;->g(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {p1, v5}, Lph/D;->w(Ljava/util/Collection;)V

    goto/16 :goto_0

    :cond_b
    const-string v6, "f"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0, v5}, Lph/r;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Lph/r;->d()[I

    move-result-object v5

    invoke-virtual {v0}, Lph/r;->c()[I

    move-result-object v6

    invoke-virtual {v0}, Lph/r;->b()[I

    move-result-object v7

    invoke-static {v5, v2}, Lph/u;->a([II)V

    invoke-static {v6, v3}, Lph/u;->a([II)V

    invoke-static {v7, v4}, Lph/u;->a([II)V

    invoke-static {v5, v6, v7}, Lph/s;->c([I[I[I)Lph/q;

    move-result-object v5

    invoke-interface {p1, v5}, Lph/D;->i(Lph/q;)V

    goto/16 :goto_0
.end method

.method public static g(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method
