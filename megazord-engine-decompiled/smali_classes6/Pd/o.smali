.class public LPd/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LPd/b;


# instance fields
.field public a:LOd/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/BufferedReader;)LPd/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, LPd/n;

    invoke-direct {v0}, LPd/n;-><init>()V

    invoke-virtual {p0}, LPd/o;->getLimits()LOd/f;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, LPd/n;->p(Ljava/io/BufferedReader;LOd/f;)LPd/k;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/io/InputStream;)LPd/k;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, p1}, LPd/o;->a(Ljava/io/BufferedReader;)LPd/k;

    move-result-object p1

    return-object p1
.end method

.method public c(LOd/f;)V
    .locals 0

    iput-object p1, p0, LPd/o;->a:LOd/f;

    return-void
.end method

.method public getLimits()LOd/f;
    .locals 1

    iget-object v0, p0, LPd/o;->a:LOd/f;

    return-object v0
.end method
