.class public Lfh/h$c;
.super Llh/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfh/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic l:Lfh/h;


# direct methods
.method public constructor <init>(Lfh/h;)V
    .locals 0

    iput-object p1, p0, Lfh/h$c;->l:Lfh/h;

    invoke-direct {p0}, Llh/a;-><init>()V

    return-void
.end method


# virtual methods
.method public q(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method public v()V
    .locals 2

    iget-object v0, p0, Lfh/h$c;->l:Lfh/h;

    sget-object v1, Lfh/a;->CANCEL:Lfh/a;

    invoke-virtual {v0, v1}, Lfh/h;->h(Lfh/a;)V

    return-void
.end method

.method public w()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Llh/a;->p()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lfh/h$c;->q(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method
