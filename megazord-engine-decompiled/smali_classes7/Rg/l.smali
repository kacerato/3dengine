.class public LRg/l;
.super LRg/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LRg/b<",
        "LNg/f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(LRg/j;LTg/k;[CIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, LRg/b;-><init>(LRg/j;LTg/k;[CIZ)V

    return-void
.end method


# virtual methods
.method public bridge synthetic g(LTg/k;[CZ)LNg/d;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, LRg/l;->k(LTg/k;[CZ)LNg/f;

    move-result-object p1

    return-object p1
.end method

.method public final j()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xc

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, LRg/b;->h([B)I

    return-object v0
.end method

.method public k(LTg/k;[CZ)LNg/f;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v8, LNg/f;

    invoke-virtual {p1}, LTg/b;->f()J

    move-result-wide v2

    invoke-virtual {p1}, LTg/b;->m()J

    move-result-wide v4

    invoke-virtual {p0}, LRg/l;->j()[B

    move-result-object v6

    move-object v0, v8

    move-object v1, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, LNg/f;-><init>([CJJ[BZ)V

    return-object v8
.end method
