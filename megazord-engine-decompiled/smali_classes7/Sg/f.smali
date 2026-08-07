.class public LSg/f;
.super LSg/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LSg/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LSg/b<",
        "LSg/f$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(LSg/j;LTg/s;[C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, LSg/b;-><init>(LSg/j;LTg/s;[CZ)V

    return-void
.end method


# virtual methods
.method public bridge synthetic f(Ljava/io/OutputStream;LTg/s;[CZ)LNg/e;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, LSg/f;->h(Ljava/io/OutputStream;LTg/s;[CZ)LSg/f$a;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/io/OutputStream;LTg/s;[CZ)LSg/f$a;
    .locals 0

    new-instance p1, LSg/f$a;

    invoke-direct {p1}, LSg/f$a;-><init>()V

    return-object p1
.end method
