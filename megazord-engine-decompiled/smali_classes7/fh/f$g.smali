.class public Lfh/f$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfh/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public a:Ljava/net/Socket;

.field public b:Ljava/lang/String;

.field public c:Llh/e;

.field public d:Llh/d;

.field public e:Lfh/f$h;

.field public f:Lfh/k;

.field public g:Z

.field public h:I


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lfh/f$h;->a:Lfh/f$h;

    iput-object v0, p0, Lfh/f$g;->e:Lfh/f$h;

    sget-object v0, Lfh/k;->a:Lfh/k;

    iput-object v0, p0, Lfh/f$g;->f:Lfh/k;

    iput-boolean p1, p0, Lfh/f$g;->g:Z

    return-void
.end method


# virtual methods
.method public a()Lfh/f;
    .locals 1

    new-instance v0, Lfh/f;

    invoke-direct {v0, p0}, Lfh/f;-><init>(Lfh/f$g;)V

    return-object v0
.end method

.method public b(Lfh/f$h;)Lfh/f$g;
    .locals 0

    iput-object p1, p0, Lfh/f$g;->e:Lfh/f$h;

    return-object p0
.end method

.method public c(I)Lfh/f$g;
    .locals 0

    iput p1, p0, Lfh/f$g;->h:I

    return-object p0
.end method

.method public d(Lfh/k;)Lfh/f$g;
    .locals 0

    iput-object p1, p0, Lfh/f$g;->f:Lfh/k;

    return-object p0
.end method

.method public e(Ljava/net/Socket;)Lfh/f$g;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Llh/p;->n(Ljava/net/Socket;)Llh/y;

    move-result-object v1

    invoke-static {v1}, Llh/p;->d(Llh/y;)Llh/e;

    move-result-object v1

    invoke-static {p1}, Llh/p;->i(Ljava/net/Socket;)Llh/x;

    move-result-object v2

    invoke-static {v2}, Llh/p;->c(Llh/x;)Llh/d;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lfh/f$g;->f(Ljava/net/Socket;Ljava/lang/String;Llh/e;Llh/d;)Lfh/f$g;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/net/Socket;Ljava/lang/String;Llh/e;Llh/d;)Lfh/f$g;
    .locals 0

    iput-object p1, p0, Lfh/f$g;->a:Ljava/net/Socket;

    iput-object p2, p0, Lfh/f$g;->b:Ljava/lang/String;

    iput-object p3, p0, Lfh/f$g;->c:Llh/e;

    iput-object p4, p0, Lfh/f$g;->d:Llh/d;

    return-object p0
.end method
