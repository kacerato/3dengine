.class public LWg/k;
.super LWg/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LWg/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LWg/h<",
        "LWg/k$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:LTg/r;

.field public final e:LXg/f;


# direct methods
.method public constructor <init>(LTg/r;LWg/h$b;)V
    .locals 0

    invoke-direct {p0, p2}, LWg/h;-><init>(LWg/h$b;)V

    new-instance p2, LXg/f;

    invoke-direct {p2}, LXg/f;-><init>()V

    iput-object p2, p0, LWg/k;->e:LXg/f;

    iput-object p1, p0, LWg/k;->d:LTg/r;

    return-void
.end method


# virtual methods
.method public bridge synthetic d(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    check-cast p1, LWg/k$a;

    invoke-virtual {p0, p1}, LWg/k;->k(LWg/k$a;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic f(Ljava/lang/Object;LVg/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, LWg/k$a;

    invoke-virtual {p0, p1, p2}, LWg/k;->m(LWg/k$a;LVg/a;)V

    return-void
.end method

.method public g()LVg/a$c;
    .locals 1

    sget-object v0, LVg/a$c;->MERGE_ZIP_FILES:LVg/a$c;

    return-object v0
.end method

.method public k(LWg/k$a;)J
    .locals 4

    iget-object p1, p0, LWg/k;->d:LTg/r;

    invoke-virtual {p1}, LTg/r;->m()Z

    move-result p1

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v2, p0, LWg/k;->d:LTg/r;

    invoke-virtual {v2}, LTg/r;->e()LTg/g;

    move-result-object v2

    invoke-virtual {v2}, LTg/g;->d()I

    move-result v2

    if-gt p1, v2, :cond_1

    iget-object v2, p0, LWg/k;->d:LTg/r;

    invoke-virtual {p0, v2, p1}, LWg/k;->n(LTg/r;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public final l(LTg/r;I)Ljava/io/RandomAccessFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, LWg/k;->n(LTg/r;I)Ljava/io/File;

    move-result-object p1

    new-instance p2, Ljava/io/RandomAccessFile;

    sget-object v0, LUg/f;->READ:LUg/f;

    invoke-virtual {v0}, LUg/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p2
.end method

.method public m(LWg/k$a;LVg/a;)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    iget-object v1, v7, LWg/k;->d:LTg/r;

    invoke-virtual {v1}, LTg/r;->m()Z

    move-result v1

    if-eqz v1, :cond_7

    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-static/range {p1 .. p1}, LWg/k$a;->a(LWg/k$a;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, v7, LWg/k;->d:LTg/r;

    invoke-virtual {v1}, LTg/r;->e()LTg/g;

    move-result-object v1

    invoke-virtual {v1}, LTg/g;->d()I

    move-result v5

    if-lez v5, :cond_6

    const/16 v16, 0x0

    const-wide/16 v3, 0x0

    move-wide/from16 v17, v3

    move/from16 v1, v16

    move v2, v1

    :goto_0
    if-gt v2, v5, :cond_5

    iget-object v8, v7, LWg/k;->d:LTg/r;

    invoke-virtual {v7, v8, v2}, LWg/k;->l(LTg/r;I)Ljava/io/RandomAccessFile;

    move-result-object v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :try_start_2
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-nez v2, :cond_1

    :try_start_3
    iget-object v10, v7, LWg/k;->e:LXg/f;

    invoke-virtual {v10, v15}, LXg/f;->c(Ljava/io/RandomAccessFile;)I

    move-result v10

    int-to-long v10, v10

    sget-object v12, LQg/c;->SPLIT_ZIP:LQg/c;

    invoke-virtual {v12}, LQg/c;->a()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-nez v10, :cond_0

    const/4 v1, 0x4

    move/from16 v19, v1

    goto :goto_2

    :cond_0
    invoke-virtual {v15, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v9, v6

    move-object/from16 v24, v15

    goto/16 :goto_6

    :cond_1
    :goto_1
    move/from16 v19, v1

    move/from16 v1, v16

    :goto_2
    if-ne v2, v5, :cond_2

    iget-object v8, v7, LWg/k;->d:LTg/r;

    invoke-virtual {v8}, LTg/r;->e()LTg/g;

    move-result-object v8

    invoke-virtual {v8}, LTg/g;->g()J

    move-result-wide v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    move-wide/from16 v20, v8

    int-to-long v12, v1

    :try_start_4
    iget-object v1, v0, LWg/d;->a:LTg/m;

    invoke-virtual {v1}, LTg/m;->a()I

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object v8, v15

    move-object v9, v6

    move-wide v10, v12

    move-wide/from16 v22, v12

    move-wide/from16 v12, v20

    move-object/from16 v14, p2

    move-object/from16 v24, v15

    move v15, v1

    :try_start_5
    invoke-static/range {v8 .. v15}, LXg/c;->g(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLVg/a;I)V

    sub-long v20, v20, v22

    add-long v17, v17, v20

    iget-object v1, v7, LWg/k;->d:LTg/r;

    invoke-virtual {v1}, LTg/r;->b()LTg/d;

    move-result-object v1

    invoke-virtual {v1}, LTg/d;->b()Ljava/util/List;

    move-result-object v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-nez v2, :cond_3

    move-wide v9, v3

    goto :goto_3

    :cond_3
    move-wide/from16 v9, v17

    :goto_3
    move-object/from16 v1, p0

    move v11, v2

    move-object v2, v8

    move-wide v12, v3

    move-wide v3, v9

    move v8, v5

    move v5, v11

    move-object v9, v6

    move/from16 v6, v19

    :try_start_6
    invoke-virtual/range {v1 .. v6}, LWg/k;->o(Ljava/util/List;JII)V

    invoke-virtual/range {p0 .. p0}, LWg/h;->j()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    add-int/lit8 v2, v11, 0x1

    move v5, v8

    move-object v6, v9

    move-wide v3, v12

    move/from16 v1, v19

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :goto_4
    move-object v1, v0

    goto :goto_8

    :catchall_2
    move-exception v0

    :goto_5
    move-object v1, v0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v9, v6

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v9, v6

    move-object/from16 v24, v15

    goto :goto_5

    :goto_6
    if-eqz v24, :cond_4

    :try_start_8
    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v0

    move-object v2, v0

    :try_start_9
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_7
    throw v1

    :catchall_6
    move-exception v0

    move-object v9, v6

    goto :goto_4

    :cond_5
    move-object v9, v6

    iget-object v2, v7, LWg/k;->d:LTg/r;

    iget-object v0, v0, LWg/d;->a:LTg/m;

    invoke-virtual {v0}, LTg/m;->b()Ljava/nio/charset/Charset;

    move-result-object v6

    move-object/from16 v1, p0

    move-wide/from16 v3, v17

    move-object v5, v9

    invoke-virtual/range {v1 .. v6}, LWg/k;->p(LTg/r;JLjava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual/range {p2 .. p2}, LVg/a;->a()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_a .. :try_end_a} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_a

    :cond_6
    move-object v9, v6

    :try_start_b
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "zip archive not a split zip file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :goto_8
    :try_start_c
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    goto :goto_9

    :catchall_7
    move-exception v0

    move-object v2, v0

    :try_start_d
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    throw v1
    :try_end_d
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_d .. :try_end_d} :catch_0

    :goto_a
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_7
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "archive not a split zip file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, LVg/a;->b(Ljava/lang/Exception;)V

    throw v0
.end method

.method public final n(LTg/r;I)Ljava/io/File;
    .locals 4

    invoke-virtual {p1}, LTg/r;->e()LTg/g;

    move-result-object v0

    invoke-virtual {v0}, LTg/g;->d()I

    move-result v0

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, LTg/r;->k()Ljava/io/File;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v0, 0x9

    if-lt p2, v0, :cond_1

    const-string v0, ".z"

    goto :goto_0

    :cond_1
    const-string v0, ".z0"

    :goto_0
    invoke-virtual {p1}, LTg/r;->k()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, LTg/r;->k()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method public final o(Ljava/util/List;JII)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LTg/j;",
            ">;JII)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LTg/j;

    invoke-virtual {v0}, LTg/j;->O()I

    move-result v1

    if-ne v1, p4, :cond_0

    invoke-virtual {v0}, LTg/j;->T()J

    move-result-wide v1

    add-long/2addr v1, p2

    int-to-long v3, p5

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, LTg/j;->a0(J)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LTg/j;->V(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final p(LTg/r;JLjava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p1}, LTg/r;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LTg/r;

    invoke-virtual {p1}, LTg/r;->e()LTg/g;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, LTg/g;->o(J)V

    invoke-virtual {p0, p1, p2, p3}, LWg/k;->t(LTg/r;J)V

    new-instance p2, LQg/e;

    invoke-direct {p2}, LQg/e;-><init>()V

    invoke-virtual {p2, p1, p4, p5}, LQg/e;->e(LTg/r;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public final q(LTg/r;)V
    .locals 2

    invoke-virtual {p1}, LTg/r;->b()LTg/d;

    move-result-object v0

    invoke-virtual {v0}, LTg/d;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, LTg/r;->e()LTg/g;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, LTg/g;->l(I)V

    invoke-virtual {p1, v1}, LTg/g;->m(I)V

    invoke-virtual {p1, v0}, LTg/g;->q(I)V

    invoke-virtual {p1, v0}, LTg/g;->r(I)V

    return-void
.end method

.method public final r(LTg/r;J)V
    .locals 2

    invoke-virtual {p1}, LTg/r;->i()LTg/n;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, LTg/r;->i()LTg/n;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LTg/n;->f(I)V

    invoke-virtual {p1}, LTg/n;->d()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p1, v0, v1}, LTg/n;->g(J)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, LTg/n;->h(I)V

    return-void
.end method

.method public final s(LTg/r;J)V
    .locals 3

    invoke-virtual {p1}, LTg/r;->j()LTg/o;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, LTg/r;->j()LTg/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LTg/o;->n(I)V

    invoke-virtual {v0, v1}, LTg/o;->o(I)V

    invoke-virtual {p1}, LTg/r;->e()LTg/g;

    move-result-object p1

    invoke-virtual {p1}, LTg/g;->i()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, LTg/o;->t(J)V

    invoke-virtual {v0}, LTg/o;->f()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-virtual {v0, v1, v2}, LTg/o;->p(J)V

    return-void
.end method

.method public final t(LTg/r;J)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LTg/r;->v(Z)V

    invoke-virtual {p0, p1}, LWg/k;->q(LTg/r;)V

    invoke-virtual {p1}, LTg/r;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, LWg/k;->r(LTg/r;J)V

    invoke-virtual {p0, p1, p2, p3}, LWg/k;->s(LTg/r;J)V

    :cond_0
    return-void
.end method
