.class public LQd/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String; = "v"

.field public static final e:Ljava/lang/String; = "vt"

.field public static final f:Ljava/lang/String; = "vn"

.field public static final g:Ljava/lang/String; = "o"

.field public static final h:Ljava/lang/String; = "f"

.field public static final i:Ljava/lang/String; = "usemtl"

.field public static final j:Ljava/lang/String; = "mtllib"


# instance fields
.field public final a:LQd/d;

.field public final b:LQd/m;

.field public final c:LQd/j;


# direct methods
.method public constructor <init>(LQd/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LQd/m;

    invoke-direct {v0}, LQd/m;-><init>()V

    iput-object v0, p0, LQd/k;->b:LQd/m;

    new-instance v0, LQd/j;

    invoke-direct {v0}, LQd/j;-><init>()V

    iput-object v0, p0, LQd/k;->c:LQd/j;

    iput-object p1, p0, LQd/k;->a:LQd/d;

    return-void
.end method


# virtual methods
.method public final a(LQd/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget-object v0, p0, LQd/k;->a:LQd/d;

    invoke-virtual {p1}, LQd/m;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, LQd/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b(LQd/m;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget-object v0, p0, LQd/k;->a:LQd/d;

    invoke-interface {v0}, LQd/d;->g()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, LQd/m;->e()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LQd/k;->c:LQd/j;

    invoke-virtual {p1, v0}, LQd/m;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LQd/j;->d(Ljava/lang/String;)V

    iget-object v1, p0, LQd/k;->c:LQd/j;

    invoke-virtual {v1}, LQd/j;->c()LOd/d;

    move-result-object v1

    iget-object v2, p0, LQd/k;->c:LQd/j;

    invoke-virtual {v2}, LQd/j;->b()LOd/d;

    move-result-object v2

    iget-object v3, p0, LQd/k;->c:LQd/j;

    invoke-virtual {v3}, LQd/j;->a()LOd/d;

    move-result-object v3

    iget-object v4, p0, LQd/k;->a:LQd/d;

    invoke-interface {v4, v1, v2, v3}, LQd/d;->j(LOd/d;LOd/d;LOd/d;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, LQd/k;->a:LQd/d;

    invoke-interface {p1}, LQd/d;->e()V

    return-void
.end method

.method public final c(LQd/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, LQd/m;->e()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, LQd/m;->f(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LQd/k;->a:LQd/d;

    invoke-interface {v2, v1}, LQd/d;->b(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(LQd/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p1}, LQd/m;->e()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LQd/m;->f(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, LQd/k;->a:LQd/d;

    invoke-interface {v0, p1}, LQd/d;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LQd/k;->a:LQd/d;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, LQd/d;->i(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final e(LQd/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p1}, LQd/m;->e()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LQd/m;->b(I)LOd/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, LQd/m;->b(I)LOd/c;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, LQd/m;->b(I)LOd/c;

    move-result-object p1

    iget-object v2, p0, LQd/k;->a:LQd/d;

    invoke-interface {v2, v0, v1, p1}, LQd/d;->c(LOd/c;LOd/c;LOd/c;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFCorruptException;

    const-string v0, "Insufficient normal data."

    invoke-direct {p1, v0}, Lcom/mokiat/data/front/error/WFCorruptException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(LQd/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p1}, LQd/m;->e()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LQd/m;->f(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, LQd/k;->a:LQd/d;

    invoke-interface {v0, p1}, LQd/d;->h(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFCorruptException;

    const-string v0, "Missing object name."

    invoke-direct {p1, v0}, Lcom/mokiat/data/front/error/WFCorruptException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(LQd/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p1}, LQd/m;->e()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LQd/m;->b(I)LOd/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, LQd/m;->b(I)LOd/c;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, LQd/m;->b(I)LOd/c;

    move-result-object p1

    iget-object v2, p0, LQd/k;->a:LQd/d;

    invoke-interface {v2, v0, v1, p1}, LQd/d;->f(LOd/c;LOd/c;LOd/c;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFCorruptException;

    const-string v0, "Insufficient texture coordinate data."

    invoke-direct {p1, v0}, Lcom/mokiat/data/front/error/WFCorruptException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h(LQd/m;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p1}, LQd/m;->e()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LQd/m;->b(I)LOd/c;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, LQd/m;->b(I)LOd/c;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, LQd/m;->b(I)LOd/c;

    move-result-object v3

    invoke-virtual {p1, v1}, LQd/m;->b(I)LOd/c;

    move-result-object p1

    iget-object v1, p0, LQd/k;->a:LQd/d;

    invoke-interface {v1, v0, v2, v3, p1}, LQd/d;->d(LOd/c;LOd/c;LOd/c;LOd/c;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFCorruptException;

    const-string v0, "Insufficient vertex data."

    invoke-direct {p1, v0}, Lcom/mokiat/data/front/error/WFCorruptException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(Ljava/io/BufferedReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;,
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    iget-object v0, p0, LQd/k;->b:LQd/m;

    invoke-virtual {v0, p1}, LQd/m;->j(Ljava/io/BufferedReader;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, LQd/k;->b:LQd/m;

    invoke-virtual {v0}, LQd/m;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, LQd/k;->b:LQd/m;

    invoke-virtual {v0}, LQd/m;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LQd/k;->b:LQd/m;

    invoke-virtual {p0, v0}, LQd/k;->a(LQd/m;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, LQd/k;->b:LQd/m;

    const-string v1, "v"

    invoke-virtual {v0, v1}, LQd/m;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, LQd/k;->b:LQd/m;

    invoke-virtual {p0, v0}, LQd/k;->h(LQd/m;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, LQd/k;->b:LQd/m;

    const-string v1, "vt"

    invoke-virtual {v0, v1}, LQd/m;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, LQd/k;->b:LQd/m;

    invoke-virtual {p0, v0}, LQd/k;->g(LQd/m;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, LQd/k;->b:LQd/m;

    const-string v1, "vn"

    invoke-virtual {v0, v1}, LQd/m;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, LQd/k;->b:LQd/m;

    invoke-virtual {p0, v0}, LQd/k;->e(LQd/m;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, LQd/k;->b:LQd/m;

    const-string v1, "o"

    invoke-virtual {v0, v1}, LQd/m;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, LQd/k;->b:LQd/m;

    invoke-virtual {p0, v0}, LQd/k;->f(LQd/m;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, LQd/k;->b:LQd/m;

    const-string v1, "f"

    invoke-virtual {v0, v1}, LQd/m;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, LQd/k;->b:LQd/m;

    invoke-virtual {p0, v0}, LQd/k;->b(LQd/m;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, LQd/k;->b:LQd/m;

    const-string v1, "mtllib"

    invoke-virtual {v0, v1}, LQd/m;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, LQd/k;->b:LQd/m;

    invoke-virtual {p0, v0}, LQd/k;->c(LQd/m;)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, LQd/k;->b:LQd/m;

    const-string v1, "usemtl"

    invoke-virtual {v0, v1}, LQd/m;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQd/k;->b:LQd/m;

    invoke-virtual {p0, v0}, LQd/k;->d(LQd/m;)V

    goto/16 :goto_0

    :cond_9
    return-void
.end method
