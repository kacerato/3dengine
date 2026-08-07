.class public LQd/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQd/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;LQd/d;)V
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

    invoke-virtual {p0, p1, p2}, LQd/l;->b(Ljava/io/BufferedReader;LQd/d;)V

    return-void
.end method

.method public b(Ljava/io/BufferedReader;LQd/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, LQd/k;

    invoke-direct {v0, p2}, LQd/k;-><init>(LQd/d;)V

    invoke-virtual {v0, p1}, LQd/k;->i(Ljava/io/BufferedReader;)V

    return-void
.end method
