.class public final Lch/c;
.super Lfh/f$h;
.source "SourceFile"

# interfaces
.implements Lokhttp3/j;


# static fields
.field public static final p:Ljava/lang/String; = "throw with null exception"

.field public static final q:I = 0x15


# instance fields
.field public final b:Lokhttp3/k;

.field public final c:Lokhttp3/G;

.field public d:Ljava/net/Socket;

.field public e:Ljava/net/Socket;

.field public f:Lokhttp3/t;

.field public g:Lokhttp3/A;

.field public h:Lfh/f;

.field public i:Llh/e;

.field public j:Llh/d;

.field public k:Z

.field public l:I

.field public m:I

.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Lch/f;",
            ">;>;"
        }
    .end annotation
.end field

.field public o:J


# direct methods
.method public constructor <init>(Lokhttp3/k;Lokhttp3/G;)V
    .locals 2

    invoke-direct {p0}, Lfh/f$h;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lch/c;->m:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/c;->n:Ljava/util/List;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lch/c;->o:J

    iput-object p1, p0, Lch/c;->b:Lokhttp3/k;

    iput-object p2, p0, Lch/c;->c:Lokhttp3/G;

    return-void
.end method

.method public static v(Lokhttp3/k;Lokhttp3/G;Ljava/net/Socket;J)Lch/c;
    .locals 1

    new-instance v0, Lch/c;

    invoke-direct {v0, p0, p1}, Lch/c;-><init>(Lokhttp3/k;Lokhttp3/G;)V

    iput-object p2, v0, Lch/c;->e:Ljava/net/Socket;

    iput-wide p3, v0, Lch/c;->o:J

    return-object v0
.end method


# virtual methods
.method public a()Lokhttp3/A;
    .locals 1

    iget-object v0, p0, Lch/c;->g:Lokhttp3/A;

    return-object v0
.end method

.method public b()Lokhttp3/G;
    .locals 1

    iget-object v0, p0, Lch/c;->c:Lokhttp3/G;

    return-object v0
.end method

.method public c()Lokhttp3/t;
    .locals 1

    iget-object v0, p0, Lch/c;->f:Lokhttp3/t;

    return-object v0
.end method

.method public d()Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lch/c;->e:Ljava/net/Socket;

    return-object v0
.end method

.method public e(Lfh/f;)V
    .locals 1

    iget-object v0, p0, Lch/c;->b:Lokhttp3/k;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lfh/f;->l()I

    move-result p1

    iput p1, p0, Lch/c;->m:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f(Lfh/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lfh/a;->REFUSED_STREAM:Lfh/a;

    invoke-virtual {p1, v0}, Lfh/h;->f(Lfh/a;)V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lch/c;->d:Ljava/net/Socket;

    invoke-static {v0}, LYg/c;->i(Ljava/net/Socket;)V

    return-void
.end method

.method public h(IIIIZLokhttp3/e;Lokhttp3/r;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    iget-object v0, v7, Lch/c;->g:Lokhttp3/A;

    if-nez v0, :cond_b

    iget-object v0, v7, Lch/c;->c:Lokhttp3/G;

    invoke-virtual {v0}, Lokhttp3/G;->a()Lokhttp3/a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/a;->b()Ljava/util/List;

    move-result-object v0

    new-instance v10, Lch/b;

    invoke-direct {v10, v0}, Lch/b;-><init>(Ljava/util/List;)V

    iget-object v1, v7, Lch/c;->c:Lokhttp3/G;

    invoke-virtual {v1}, Lokhttp3/G;->a()Lokhttp3/a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/a;->k()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v1, Lokhttp3/l;->j:Lokhttp3/l;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v7, Lch/c;->c:Lokhttp3/G;

    invoke-virtual {v0}, Lokhttp3/G;->a()Lokhttp3/a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/a;->l()Lokhttp3/v;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/v;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lhh/f;->k()Lhh/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lhh/f;->p(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lokhttp3/internal/connection/RouteException;

    new-instance v2, Ljava/net/UnknownServiceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEARTEXT communication to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not permitted by network security policy"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_1
    new-instance v0, Lokhttp3/internal/connection/RouteException;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "CLEARTEXT communication not enabled for client"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_2
    iget-object v0, v7, Lch/c;->c:Lokhttp3/G;

    invoke-virtual {v0}, Lokhttp3/G;->a()Lokhttp3/a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/a;->f()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lokhttp3/A;->H2_PRIOR_KNOWLEDGE:Lokhttp3/A;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    :goto_0
    const/4 v11, 0x0

    move-object v12, v11

    :goto_1
    :try_start_0
    iget-object v0, v7, Lch/c;->c:Lokhttp3/G;

    invoke-virtual {v0}, Lokhttp3/G;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-virtual/range {v1 .. v6}, Lch/c;->k(IIILokhttp3/e;Lokhttp3/r;)V

    iget-object v0, v7, Lch/c;->d:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_3

    goto :goto_5

    :cond_3
    move/from16 v13, p1

    move/from16 v14, p2

    :goto_2
    move/from16 v15, p4

    goto :goto_4

    :catch_0
    move-exception v0

    move/from16 v13, p1

    move/from16 v14, p2

    :goto_3
    move/from16 v15, p4

    goto :goto_8

    :cond_4
    move/from16 v13, p1

    move/from16 v14, p2

    :try_start_1
    invoke-virtual {v7, v13, v14, v8, v9}, Lch/c;->i(IILokhttp3/e;Lokhttp3/r;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :goto_4
    :try_start_2
    invoke-virtual {v7, v10, v15, v8, v9}, Lch/c;->n(Lch/b;ILokhttp3/e;Lokhttp3/r;)V

    iget-object v0, v7, Lch/c;->c:Lokhttp3/G;

    invoke-virtual {v0}, Lokhttp3/G;->d()Ljava/net/InetSocketAddress;

    move-result-object v0

    iget-object v1, v7, Lch/c;->c:Lokhttp3/G;

    invoke-virtual {v1}, Lokhttp3/G;->b()Ljava/net/Proxy;

    move-result-object v1

    iget-object v2, v7, Lch/c;->g:Lokhttp3/A;

    invoke-virtual {v9, v8, v0, v1, v2}, Lokhttp3/r;->d(Lokhttp3/e;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/A;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_5
    iget-object v0, v7, Lch/c;->c:Lokhttp3/G;

    invoke-virtual {v0}, Lokhttp3/G;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v7, Lch/c;->d:Ljava/net/Socket;

    if-eqz v0, :cond_5

    goto :goto_6

    :cond_5
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Too many tunnel connections attempted: 21"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    new-instance v1, Lokhttp3/internal/connection/RouteException;

    invoke-direct {v1, v0}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_6
    :goto_6
    iget-object v0, v7, Lch/c;->h:Lfh/f;

    if-eqz v0, :cond_7

    iget-object v1, v7, Lch/c;->b:Lokhttp3/k;

    monitor-enter v1

    :try_start_3
    iget-object v0, v7, Lch/c;->h:Lfh/f;

    invoke-virtual {v0}, Lfh/f;->l()I

    move-result v0

    iput v0, v7, Lch/c;->m:I

    monitor-exit v1

    goto :goto_7

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_7
    :goto_7
    return-void

    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_3

    :goto_8
    iget-object v1, v7, Lch/c;->e:Ljava/net/Socket;

    invoke-static {v1}, LYg/c;->i(Ljava/net/Socket;)V

    iget-object v1, v7, Lch/c;->d:Ljava/net/Socket;

    invoke-static {v1}, LYg/c;->i(Ljava/net/Socket;)V

    iput-object v11, v7, Lch/c;->e:Ljava/net/Socket;

    iput-object v11, v7, Lch/c;->d:Ljava/net/Socket;

    iput-object v11, v7, Lch/c;->i:Llh/e;

    iput-object v11, v7, Lch/c;->j:Llh/d;

    iput-object v11, v7, Lch/c;->f:Lokhttp3/t;

    iput-object v11, v7, Lch/c;->g:Lokhttp3/A;

    iput-object v11, v7, Lch/c;->h:Lfh/f;

    iget-object v1, v7, Lch/c;->c:Lokhttp3/G;

    invoke-virtual {v1}, Lokhttp3/G;->d()Ljava/net/InetSocketAddress;

    move-result-object v3

    iget-object v1, v7, Lch/c;->c:Lokhttp3/G;

    invoke-virtual {v1}, Lokhttp3/G;->b()Ljava/net/Proxy;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lokhttp3/r;->e(Lokhttp3/e;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/A;Ljava/io/IOException;)V

    if-nez v12, :cond_8

    new-instance v12, Lokhttp3/internal/connection/RouteException;

    invoke-direct {v12, v0}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    goto :goto_9

    :cond_8
    invoke-virtual {v12, v0}, Lokhttp3/internal/connection/RouteException;->addConnectException(Ljava/io/IOException;)V

    :goto_9
    if-eqz p5, :cond_9

    invoke-virtual {v10, v0}, Lch/b;->b(Ljava/io/IOException;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_1

    :cond_9
    throw v12

    :cond_a
    new-instance v0, Lokhttp3/internal/connection/RouteException;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i(IILokhttp3/e;Lokhttp3/r;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lch/c;->c:Lokhttp3/G;

    invoke-virtual {v0}, Lokhttp3/G;->b()Ljava/net/Proxy;

    move-result-object v0

    iget-object v1, p0, Lch/c;->c:Lokhttp3/G;

    invoke-virtual {v1}, Lokhttp3/G;->a()Lokhttp3/a;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1, v0}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lokhttp3/a;->j()Ljavax/net/SocketFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lch/c;->d:Ljava/net/Socket;

    iget-object v1, p0, Lch/c;->c:Lokhttp3/G;

    invoke-virtual {v1}, Lokhttp3/G;->d()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {p4, p3, v1, v0}, Lokhttp3/r;->f(Lokhttp3/e;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    iget-object p3, p0, Lch/c;->d:Ljava/net/Socket;

    invoke-virtual {p3, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    :try_start_0
    invoke-static {}, Lhh/f;->k()Lhh/f;

    move-result-object p2

    iget-object p3, p0, Lch/c;->d:Ljava/net/Socket;

    iget-object p4, p0, Lch/c;->c:Lokhttp3/G;

    invoke-virtual {p4}, Lokhttp3/G;->d()Ljava/net/InetSocketAddress;

    move-result-object p4

    invoke-virtual {p2, p3, p4, p1}, Lhh/f;->i(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object p1, p0, Lch/c;->d:Ljava/net/Socket;

    invoke-static {p1}, Llh/p;->n(Ljava/net/Socket;)Llh/y;

    move-result-object p1

    invoke-static {p1}, Llh/p;->d(Llh/y;)Llh/e;

    move-result-object p1

    iput-object p1, p0, Lch/c;->i:Llh/e;

    iget-object p1, p0, Lch/c;->d:Ljava/net/Socket;

    invoke-static {p1}, Llh/p;->i(Ljava/net/Socket;)Llh/x;

    move-result-object p1

    invoke-static {p1}, Llh/p;->c(Llh/x;)Llh/d;

    move-result-object p1

    iput-object p1, p0, Lch/c;->j:Llh/d;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "throw with null exception"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    :goto_2
    return-void

    :cond_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/net/ConnectException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to connect to "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lch/c;->c:Lokhttp3/G;

    invoke-virtual {p4}, Lokhttp3/G;->d()Ljava/net/InetSocketAddress;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public final j(Lch/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lch/c;->c:Lokhttp3/G;

    invoke-virtual {v0}, Lokhttp3/G;->a()Lokhttp3/a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/a;->k()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lch/c;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Lokhttp3/a;->l()Lokhttp3/v;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/v;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lokhttp3/a;->l()Lokhttp3/v;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/v;->E()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v1, v3, v4, v5, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1, v1}, Lch/b;->a(Ljavax/net/ssl/SSLSocket;)Lokhttp3/l;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/l;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lhh/f;->k()Lhh/f;

    move-result-object v3

    invoke-virtual {v0}, Lokhttp3/a;->l()Lokhttp3/v;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/v;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lokhttp3/a;->f()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v5}, Lhh/f;->h(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v2, v1

    goto/16 :goto_3

    :catch_0
    move-exception p1

    move-object v2, v1

    goto/16 :goto_2

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    invoke-static {v3}, Lokhttp3/t;->b(Ljavax/net/ssl/SSLSession;)Lokhttp3/t;

    move-result-object v4

    invoke-virtual {v0}, Lokhttp3/a;->e()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v5

    invoke-virtual {v0}, Lokhttp3/a;->l()Lokhttp3/v;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/v;->p()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lokhttp3/a;->a()Lokhttp3/g;

    move-result-object v3

    invoke-virtual {v0}, Lokhttp3/a;->l()Lokhttp3/v;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/v;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lokhttp3/t;->f()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lokhttp3/g;->a(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p1}, Lokhttp3/l;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lhh/f;->k()Lhh/f;

    move-result-object p1

    invoke-virtual {p1, v1}, Lhh/f;->n(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    iput-object v1, p0, Lch/c;->e:Ljava/net/Socket;

    invoke-static {v1}, Llh/p;->n(Ljava/net/Socket;)Llh/y;

    move-result-object p1

    invoke-static {p1}, Llh/p;->d(Llh/y;)Llh/e;

    move-result-object p1

    iput-object p1, p0, Lch/c;->i:Llh/e;

    iget-object p1, p0, Lch/c;->e:Ljava/net/Socket;

    invoke-static {p1}, Llh/p;->i(Ljava/net/Socket;)Llh/x;

    move-result-object p1

    invoke-static {p1}, Llh/p;->c(Llh/x;)Llh/d;

    move-result-object p1

    iput-object p1, p0, Lch/c;->j:Llh/d;

    iput-object v4, p0, Lch/c;->f:Lokhttp3/t;

    if-eqz v2, :cond_2

    invoke-static {v2}, Lokhttp3/A;->a(Ljava/lang/String;)Lokhttp3/A;

    move-result-object p1

    goto :goto_1

    :cond_2
    sget-object p1, Lokhttp3/A;->HTTP_1_1:Lokhttp3/A;

    :goto_1
    iput-object p1, p0, Lch/c;->g:Lokhttp3/A;
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lhh/f;->k()Lhh/f;

    move-result-object p1

    invoke-virtual {p1, v1}, Lhh/f;->a(Ljavax/net/ssl/SSLSocket;)V

    return-void

    :cond_3
    :try_start_2
    invoke-virtual {v4}, Lokhttp3/t;->f()Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hostname "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokhttp3/a;->l()Lokhttp3/v;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/v;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified:\n    certificate: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lokhttp3/g;->d(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    DN: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    subjectAltNames: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljh/e;->a(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    :goto_2
    :try_start_3
    invoke-static {p1}, LYg/c;->B(Ljava/lang/AssertionError;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    if-eqz v2, :cond_5

    invoke-static {}, Lhh/f;->k()Lhh/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lhh/f;->a(Ljavax/net/ssl/SSLSocket;)V

    :cond_5
    invoke-static {v2}, LYg/c;->i(Ljava/net/Socket;)V

    throw p1
.end method

.method public final k(IIILokhttp3/e;Lokhttp3/r;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lch/c;->m()Lokhttp3/C;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/C;->k()Lokhttp3/v;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x15

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, p1, p2, p4, p5}, Lch/c;->i(IILokhttp3/e;Lokhttp3/r;)V

    invoke-virtual {p0, p2, p3, v0, v1}, Lch/c;->l(IILokhttp3/C;Lokhttp3/v;)Lokhttp3/C;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lch/c;->d:Ljava/net/Socket;

    invoke-static {v3}, LYg/c;->i(Ljava/net/Socket;)V

    const/4 v3, 0x0

    iput-object v3, p0, Lch/c;->d:Ljava/net/Socket;

    iput-object v3, p0, Lch/c;->j:Llh/d;

    iput-object v3, p0, Lch/c;->i:Llh/e;

    iget-object v4, p0, Lch/c;->c:Lokhttp3/G;

    invoke-virtual {v4}, Lokhttp3/G;->d()Ljava/net/InetSocketAddress;

    move-result-object v4

    iget-object v5, p0, Lch/c;->c:Lokhttp3/G;

    invoke-virtual {v5}, Lokhttp3/G;->b()Ljava/net/Proxy;

    move-result-object v5

    invoke-virtual {p5, p4, v4, v5, v3}, Lokhttp3/r;->d(Lokhttp3/e;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/A;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final l(IILokhttp3/C;Lokhttp3/v;)Lokhttp3/C;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONNECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {p4, v1}, LYg/c;->t(Lokhttp3/v;Z)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " HTTP/1.1"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :goto_0
    new-instance v0, Leh/a;

    iget-object v1, p0, Lch/c;->i:Llh/e;

    iget-object v2, p0, Lch/c;->j:Llh/d;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Leh/a;-><init>(Lokhttp3/z;Lch/f;Llh/e;Llh/d;)V

    iget-object v1, p0, Lch/c;->i:Llh/e;

    invoke-interface {v1}, Llh/y;->a0()Llh/z;

    move-result-object v1

    int-to-long v4, p1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Llh/z;->h(JLjava/util/concurrent/TimeUnit;)Llh/z;

    iget-object v1, p0, Lch/c;->j:Llh/d;

    invoke-interface {v1}, Llh/x;->a0()Llh/z;

    move-result-object v1

    int-to-long v4, p2

    invoke-virtual {v1, v4, v5, v2}, Llh/z;->h(JLjava/util/concurrent/TimeUnit;)Llh/z;

    invoke-virtual {p3}, Lokhttp3/C;->e()Lokhttp3/u;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Leh/a;->p(Lokhttp3/u;Ljava/lang/String;)V

    invoke-virtual {v0}, Leh/a;->a()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leh/a;->e(Z)Lokhttp3/E$a;

    move-result-object v1

    invoke-virtual {v1, p3}, Lokhttp3/E$a;->q(Lokhttp3/C;)Lokhttp3/E$a;

    move-result-object p3

    invoke-virtual {p3}, Lokhttp3/E$a;->c()Lokhttp3/E;

    move-result-object p3

    invoke-static {p3}, Ldh/e;->b(Lokhttp3/E;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    const-wide/16 v4, 0x0

    :cond_0
    invoke-virtual {v0, v4, v5}, Leh/a;->l(J)Llh/y;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-static {v0, v1, v2}, LYg/c;->E(Llh/y;ILjava/util/concurrent/TimeUnit;)Z

    invoke-interface {v0}, Llh/y;->close()V

    invoke-virtual {p3}, Lokhttp3/E;->g()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_4

    const/16 v1, 0x197

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lch/c;->c:Lokhttp3/G;

    invoke-virtual {v0}, Lokhttp3/G;->a()Lokhttp3/a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/a;->h()Lokhttp3/b;

    move-result-object v0

    iget-object v1, p0, Lch/c;->c:Lokhttp3/G;

    invoke-interface {v0, v1, p3}, Lokhttp3/b;->a(Lokhttp3/G;Lokhttp3/E;)Lokhttp3/C;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "Connection"

    invoke-virtual {p3, v1}, Lokhttp3/E;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "close"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-object v0

    :cond_1
    move-object p3, v0

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to authenticate with proxy"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected response code for CONNECT: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lokhttp3/E;->g()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget-object p1, p0, Lch/c;->i:Llh/e;

    invoke-interface {p1}, Llh/e;->C()Llh/c;

    move-result-object p1

    invoke-virtual {p1}, Llh/c;->M1()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lch/c;->j:Llh/d;

    invoke-interface {p1}, Llh/d;->C()Llh/c;

    move-result-object p1

    invoke-virtual {p1}, Llh/c;->M1()Z

    move-result p1

    if-eqz p1, :cond_5

    return-object v3

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TLS tunnel buffered too many bytes!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final m()Lokhttp3/C;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lokhttp3/C$a;

    invoke-direct {v0}, Lokhttp3/C$a;-><init>()V

    iget-object v1, p0, Lch/c;->c:Lokhttp3/G;

    invoke-virtual {v1}, Lokhttp3/G;->a()Lokhttp3/a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/a;->l()Lokhttp3/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/C$a;->s(Lokhttp3/v;)Lokhttp3/C$a;

    move-result-object v0

    const-string v1, "CONNECT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lokhttp3/C$a;->j(Ljava/lang/String;Lokhttp3/D;)Lokhttp3/C$a;

    move-result-object v0

    iget-object v1, p0, Lch/c;->c:Lokhttp3/G;

    invoke-virtual {v1}, Lokhttp3/G;->a()Lokhttp3/a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/a;->l()Lokhttp3/v;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, LYg/c;->t(Lokhttp3/v;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Host"

    invoke-virtual {v0, v2, v1}, Lokhttp3/C$a;->h(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/C$a;

    move-result-object v0

    const-string v1, "Proxy-Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Lokhttp3/C$a;->h(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/C$a;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-static {}, LYg/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lokhttp3/C$a;->h(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/C$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/C$a;->b()Lokhttp3/C;

    move-result-object v0

    new-instance v1, Lokhttp3/E$a;

    invoke-direct {v1}, Lokhttp3/E$a;-><init>()V

    invoke-virtual {v1, v0}, Lokhttp3/E$a;->q(Lokhttp3/C;)Lokhttp3/E$a;

    move-result-object v1

    sget-object v2, Lokhttp3/A;->HTTP_1_1:Lokhttp3/A;

    invoke-virtual {v1, v2}, Lokhttp3/E$a;->n(Lokhttp3/A;)Lokhttp3/E$a;

    move-result-object v1

    const/16 v2, 0x197

    invoke-virtual {v1, v2}, Lokhttp3/E$a;->g(I)Lokhttp3/E$a;

    move-result-object v1

    const-string v2, "Preemptive Authenticate"

    invoke-virtual {v1, v2}, Lokhttp3/E$a;->k(Ljava/lang/String;)Lokhttp3/E$a;

    move-result-object v1

    sget-object v2, LYg/c;->c:Lokhttp3/F;

    invoke-virtual {v1, v2}, Lokhttp3/E$a;->b(Lokhttp3/F;)Lokhttp3/E$a;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lokhttp3/E$a;->r(J)Lokhttp3/E$a;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lokhttp3/E$a;->o(J)Lokhttp3/E$a;

    move-result-object v1

    const-string v2, "Proxy-Authenticate"

    const-string v3, "OkHttp-Preemptive"

    invoke-virtual {v1, v2, v3}, Lokhttp3/E$a;->i(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/E$a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/E$a;->c()Lokhttp3/E;

    move-result-object v1

    iget-object v2, p0, Lch/c;->c:Lokhttp3/G;

    invoke-virtual {v2}, Lokhttp3/G;->a()Lokhttp3/a;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/a;->h()Lokhttp3/b;

    move-result-object v2

    iget-object v3, p0, Lch/c;->c:Lokhttp3/G;

    invoke-interface {v2, v3, v1}, Lokhttp3/b;->a(Lokhttp3/G;Lokhttp3/E;)Lokhttp3/C;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public final n(Lch/b;ILokhttp3/e;Lokhttp3/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lch/c;->c:Lokhttp3/G;

    invoke-virtual {v0}, Lokhttp3/G;->a()Lokhttp3/a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/a;->k()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lch/c;->c:Lokhttp3/G;

    invoke-virtual {p1}, Lokhttp3/G;->a()Lokhttp3/a;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/a;->f()Ljava/util/List;

    move-result-object p1

    sget-object p3, Lokhttp3/A;->H2_PRIOR_KNOWLEDGE:Lokhttp3/A;

    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lch/c;->d:Ljava/net/Socket;

    iput-object p1, p0, Lch/c;->e:Ljava/net/Socket;

    iput-object p3, p0, Lch/c;->g:Lokhttp3/A;

    invoke-virtual {p0, p2}, Lch/c;->t(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lch/c;->d:Ljava/net/Socket;

    iput-object p1, p0, Lch/c;->e:Ljava/net/Socket;

    sget-object p1, Lokhttp3/A;->HTTP_1_1:Lokhttp3/A;

    iput-object p1, p0, Lch/c;->g:Lokhttp3/A;

    return-void

    :cond_1
    invoke-virtual {p4, p3}, Lokhttp3/r;->u(Lokhttp3/e;)V

    invoke-virtual {p0, p1}, Lch/c;->j(Lch/b;)V

    iget-object p1, p0, Lch/c;->f:Lokhttp3/t;

    invoke-virtual {p4, p3, p1}, Lokhttp3/r;->t(Lokhttp3/e;Lokhttp3/t;)V

    iget-object p1, p0, Lch/c;->g:Lokhttp3/A;

    sget-object p3, Lokhttp3/A;->HTTP_2:Lokhttp3/A;

    if-ne p1, p3, :cond_2

    invoke-virtual {p0, p2}, Lch/c;->t(I)V

    :cond_2
    return-void
.end method

.method public o(Lokhttp3/a;Lokhttp3/G;)Z
    .locals 4
    .param p2    # Lokhttp3/G;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lch/c;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lch/c;->m:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_a

    iget-boolean v0, p0, Lch/c;->k:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v0, LYg/a;->a:LYg/a;

    iget-object v1, p0, Lch/c;->c:Lokhttp3/G;

    invoke-virtual {v1}, Lokhttp3/G;->a()Lokhttp3/a;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, LYg/a;->g(Lokhttp3/a;Lokhttp3/a;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Lokhttp3/a;->l()Lokhttp3/v;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/v;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lch/c;->b()Lokhttp3/G;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/G;->a()Lokhttp3/a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/a;->l()Lokhttp3/v;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/v;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lch/c;->h:Lfh/f;

    if-nez v0, :cond_3

    return v2

    :cond_3
    if-nez p2, :cond_4

    return v2

    :cond_4
    invoke-virtual {p2}, Lokhttp3/G;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v3, :cond_5

    return v2

    :cond_5
    iget-object v0, p0, Lch/c;->c:Lokhttp3/G;

    invoke-virtual {v0}, Lokhttp3/G;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    if-eq v0, v3, :cond_6

    return v2

    :cond_6
    iget-object v0, p0, Lch/c;->c:Lokhttp3/G;

    invoke-virtual {v0}, Lokhttp3/G;->d()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p2}, Lokhttp3/G;->d()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return v2

    :cond_7
    invoke-virtual {p2}, Lokhttp3/G;->a()Lokhttp3/a;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/a;->e()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p2

    sget-object v0, Ljh/e;->a:Ljh/e;

    if-eq p2, v0, :cond_8

    return v2

    :cond_8
    invoke-virtual {p1}, Lokhttp3/a;->l()Lokhttp3/v;

    move-result-object p2

    invoke-virtual {p0, p2}, Lch/c;->u(Lokhttp3/v;)Z

    move-result p2

    if-nez p2, :cond_9

    return v2

    :cond_9
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/a;->a()Lokhttp3/g;

    move-result-object p2

    invoke-virtual {p1}, Lokhttp3/a;->l()Lokhttp3/v;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/v;->p()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lch/c;->c()Lokhttp3/t;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/t;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lokhttp3/g;->a(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    :cond_a
    :goto_0
    return v2
.end method

.method public p(Z)Z
    .locals 4

    iget-object v0, p0, Lch/c;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lch/c;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lch/c;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lch/c;->h:Lfh/f;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lfh/f;->isShutdown()Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    :cond_1
    if-eqz p1, :cond_3

    :try_start_0
    iget-object p1, p0, Lch/c;->e:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getSoTimeout()I

    move-result p1
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lch/c;->e:Ljava/net/Socket;

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, p0, Lch/c;->i:Llh/e;

    invoke-interface {v0}, Llh/e;->M1()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    :try_start_2
    iget-object v0, p0, Lch/c;->e:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v1

    :cond_2
    iget-object v0, p0, Lch/c;->e:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v2

    :catchall_0
    move-exception v0

    iget-object v3, p0, Lch/c;->e:Ljava/net/Socket;

    invoke-virtual {v3, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v0
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v1

    :catch_1
    :cond_3
    return v2

    :cond_4
    :goto_0
    return v1
.end method

.method public q()Z
    .locals 1

    iget-object v0, p0, Lch/c;->h:Lfh/f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r(Lokhttp3/z;Lokhttp3/w$a;Lch/f;)Ldh/c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lch/c;->h:Lfh/f;

    if-eqz v0, :cond_0

    new-instance v0, Lfh/e;

    iget-object v1, p0, Lch/c;->h:Lfh/f;

    invoke-direct {v0, p1, p2, p3, v1}, Lfh/e;-><init>(Lokhttp3/z;Lokhttp3/w$a;Lch/f;Lfh/f;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lch/c;->e:Ljava/net/Socket;

    invoke-interface {p2}, Lokhttp3/w$a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, p0, Lch/c;->i:Llh/e;

    invoke-interface {v0}, Llh/y;->a0()Llh/z;

    move-result-object v0

    invoke-interface {p2}, Lokhttp3/w$a;->a()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Llh/z;->h(JLjava/util/concurrent/TimeUnit;)Llh/z;

    iget-object v0, p0, Lch/c;->j:Llh/d;

    invoke-interface {v0}, Llh/x;->a0()Llh/z;

    move-result-object v0

    invoke-interface {p2}, Lokhttp3/w$a;->e()I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2, v3}, Llh/z;->h(JLjava/util/concurrent/TimeUnit;)Llh/z;

    new-instance p2, Leh/a;

    iget-object v0, p0, Lch/c;->i:Llh/e;

    iget-object v1, p0, Lch/c;->j:Llh/d;

    invoke-direct {p2, p1, p3, v0, v1}, Leh/a;-><init>(Lokhttp3/z;Lch/f;Llh/e;Llh/d;)V

    return-object p2
.end method

.method public s(Lch/f;)Lkh/a$g;
    .locals 7

    new-instance v6, Lch/c$a;

    iget-object v3, p0, Lch/c;->i:Llh/e;

    iget-object v4, p0, Lch/c;->j:Llh/d;

    const/4 v2, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lch/c$a;-><init>(Lch/c;ZLlh/e;Llh/d;Lch/f;)V

    return-object v6
.end method

.method public final t(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lch/c;->e:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v0, Lfh/f$g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lfh/f$g;-><init>(Z)V

    iget-object v1, p0, Lch/c;->e:Ljava/net/Socket;

    iget-object v2, p0, Lch/c;->c:Lokhttp3/G;

    invoke-virtual {v2}, Lokhttp3/G;->a()Lokhttp3/a;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/a;->l()Lokhttp3/v;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/v;->p()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lch/c;->i:Llh/e;

    iget-object v4, p0, Lch/c;->j:Llh/d;

    invoke-virtual {v0, v1, v2, v3, v4}, Lfh/f$g;->f(Ljava/net/Socket;Ljava/lang/String;Llh/e;Llh/d;)Lfh/f$g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lfh/f$g;->b(Lfh/f$h;)Lfh/f$g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfh/f$g;->c(I)Lfh/f$g;

    move-result-object p1

    invoke-virtual {p1}, Lfh/f$g;->a()Lfh/f;

    move-result-object p1

    iput-object p1, p0, Lch/c;->h:Lfh/f;

    invoke-virtual {p1}, Lfh/f;->start()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lch/c;->c:Lokhttp3/G;

    invoke-virtual {v1}, Lokhttp3/G;->a()Lokhttp3/a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/a;->l()Lokhttp3/v;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/v;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lch/c;->c:Lokhttp3/G;

    invoke-virtual {v1}, Lokhttp3/G;->a()Lokhttp3/a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/a;->l()Lokhttp3/v;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/v;->E()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lch/c;->c:Lokhttp3/G;

    invoke-virtual {v1}, Lokhttp3/G;->b()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lch/c;->c:Lokhttp3/G;

    invoke-virtual {v1}, Lokhttp3/G;->d()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lch/c;->f:Lokhttp3/t;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lokhttp3/t;->a()Lokhttp3/i;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "none"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lch/c;->g:Lokhttp3/A;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Lokhttp3/v;)Z
    .locals 4

    invoke-virtual {p1}, Lokhttp3/v;->E()I

    move-result v0

    iget-object v1, p0, Lch/c;->c:Lokhttp3/G;

    invoke-virtual {v1}, Lokhttp3/G;->a()Lokhttp3/a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/a;->l()Lokhttp3/v;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/v;->E()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Lokhttp3/v;->p()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lch/c;->c:Lokhttp3/G;

    invoke-virtual {v1}, Lokhttp3/G;->a()Lokhttp3/a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/a;->l()Lokhttp3/v;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/v;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lch/c;->f:Lokhttp3/t;

    if-eqz v0, :cond_1

    sget-object v0, Ljh/e;->a:Ljh/e;

    invoke-virtual {p1}, Lokhttp3/v;->p()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lch/c;->f:Lokhttp3/t;

    invoke-virtual {v3}, Lokhttp3/t;->f()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p1, v3}, Ljh/e;->c(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v2, v1

    :cond_1
    return v2

    :cond_2
    return v1
.end method
