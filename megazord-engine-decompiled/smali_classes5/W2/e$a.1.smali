.class public final LW2/e$a;
.super LW2/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LW2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:LW2/e$b;

.field public final synthetic b:LW2/e;


# direct methods
.method public constructor <init>(LW2/e;I)V
    .locals 0

    iput-object p1, p0, LW2/e$a;->b:LW2/e;

    invoke-direct {p0}, LW2/d;-><init>()V

    new-instance p1, LW2/e$b;

    invoke-direct {p1, p2}, LW2/e$b;-><init>(I)V

    iput-object p1, p0, LW2/e$a;->a:LW2/e$b;

    return-void
.end method


# virtual methods
.method public bridge synthetic c(B)LW2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LW2/e$a;->c(B)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public c(B)LW2/r;
    .locals 1

    .line 2
    iget-object v0, p0, LW2/e$a;->a:LW2/e$b;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-object p0
.end method

.method public bridge synthetic e([BII)LW2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, LW2/e$a;->e([BII)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public e([BII)LW2/r;
    .locals 1

    .line 2
    iget-object v0, p0, LW2/e$a;->a:LW2/e$b;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-object p0
.end method

.method public bridge synthetic f(Ljava/nio/ByteBuffer;)LW2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LW2/e$a;->f(Ljava/nio/ByteBuffer;)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/nio/ByteBuffer;)LW2/r;
    .locals 1

    .line 2
    iget-object v0, p0, LW2/e$a;->a:LW2/e$b;

    invoke-virtual {v0, p1}, LW2/e$b;->e(Ljava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public i()LW2/p;
    .locals 4

    iget-object v0, p0, LW2/e$a;->b:LW2/e;

    iget-object v1, p0, LW2/e$a;->a:LW2/e$b;

    invoke-virtual {v1}, LW2/e$b;->c()[B

    move-result-object v1

    iget-object v2, p0, LW2/e$a;->a:LW2/e$b;

    invoke-virtual {v2}, LW2/e$b;->d()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, LW2/e;->k([BII)LW2/p;

    move-result-object v0

    return-object v0
.end method
