.class public Lkh/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkh/a;->m(Lokhttp3/z;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lokhttp3/C;

.field public final synthetic b:Lkh/a;


# direct methods
.method public constructor <init>(Lkh/a;Lokhttp3/C;)V
    .locals 0

    iput-object p1, p0, Lkh/a$b;->b:Lkh/a;

    iput-object p2, p0, Lkh/a$b;->a:Lokhttp3/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/e;Ljava/io/IOException;)V
    .locals 1

    iget-object p1, p0, Lkh/a$b;->b:Lkh/a;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lkh/a;->n(Ljava/lang/Exception;Lokhttp3/E;)V

    return-void
.end method

.method public b(Lokhttp3/e;Lokhttp3/E;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lkh/a$b;->b:Lkh/a;

    invoke-virtual {v0, p2}, Lkh/a;->k(Lokhttp3/E;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1

    sget-object v0, LYg/a;->a:LYg/a;

    invoke-virtual {v0, p1}, LYg/a;->o(Lokhttp3/e;)Lch/f;

    move-result-object p1

    invoke-virtual {p1}, Lch/f;->j()V

    invoke-virtual {p1}, Lch/f;->d()Lch/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lch/c;->s(Lch/f;)Lkh/a$g;

    move-result-object v0

    :try_start_1
    iget-object v1, p0, Lkh/a$b;->b:Lkh/a;

    iget-object v2, v1, Lkh/a;->b:Lokhttp3/J;

    invoke-virtual {v2, v1, p2}, Lokhttp3/J;->f(Lokhttp3/I;Lokhttp3/E;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OkHttp WebSocket "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkh/a$b;->a:Lokhttp3/C;

    invoke-virtual {v1}, Lokhttp3/C;->k()Lokhttp3/v;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/v;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lkh/a$b;->b:Lkh/a;

    invoke-virtual {v1, p2, v0}, Lkh/a;->o(Ljava/lang/String;Lkh/a$g;)V

    invoke-virtual {p1}, Lch/f;->d()Lch/c;

    move-result-object p1

    invoke-virtual {p1}, Lch/c;->d()Ljava/net/Socket;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object p1, p0, Lkh/a$b;->b:Lkh/a;

    invoke-virtual {p1}, Lkh/a;->p()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lkh/a$b;->b:Lkh/a;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lkh/a;->n(Ljava/lang/Exception;Lokhttp3/E;)V

    :goto_0
    return-void

    :catch_1
    move-exception p1

    iget-object v0, p0, Lkh/a$b;->b:Lkh/a;

    invoke-virtual {v0, p1, p2}, Lkh/a;->n(Ljava/lang/Exception;Lokhttp3/E;)V

    invoke-static {p2}, LYg/c;->g(Ljava/io/Closeable;)V

    return-void
.end method
