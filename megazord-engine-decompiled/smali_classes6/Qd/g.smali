.class public LQd/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String; = "newmtl"

.field public static final e:Ljava/lang/String; = "Ka"

.field public static final f:Ljava/lang/String; = "Kd"

.field public static final g:Ljava/lang/String; = "Ks"

.field public static final h:Ljava/lang/String; = "Tf"

.field public static final i:Ljava/lang/String; = "d"

.field public static final j:Ljava/lang/String; = "Ns"

.field public static final k:Ljava/lang/String; = "map_Ka"

.field public static final l:Ljava/lang/String; = "map_Kd"

.field public static final m:Ljava/lang/String; = "map_Ks"

.field public static final n:Ljava/lang/String; = "map_Ns"

.field public static final o:Ljava/lang/String; = "map_d"


# instance fields
.field public final a:LQd/b;

.field public final b:LQd/m;

.field public final c:LQd/f;


# direct methods
.method public constructor <init>(LQd/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LQd/m;

    invoke-direct {v0}, LQd/m;-><init>()V

    iput-object v0, p0, LQd/g;->b:LQd/m;

    new-instance v0, LQd/f;

    invoke-direct {v0}, LQd/f;-><init>()V

    iput-object v0, p0, LQd/g;->c:LQd/f;

    iput-object p1, p0, LQd/g;->a:LQd/b;

    return-void
.end method


# virtual methods
.method public final a(LQd/m;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, LQd/m;->d()I

    move-result v0

    invoke-virtual {p1, v0}, LQd/m;->f(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(LQd/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget-object v0, p0, LQd/g;->c:LQd/f;

    invoke-virtual {v0, p1}, LQd/f;->e(LQd/m;)V

    iget-object p1, p0, LQd/g;->c:LQd/f;

    invoke-virtual {p1}, LQd/f;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LQd/g;->a:LQd/b;

    iget-object v0, p0, LQd/g;->c:LQd/f;

    invoke-virtual {v0}, LQd/f;->c()LOd/c;

    move-result-object v0

    iget-object v1, p0, LQd/g;->c:LQd/f;

    invoke-virtual {v1}, LQd/f;->b()LOd/c;

    move-result-object v1

    iget-object v2, p0, LQd/g;->c:LQd/f;

    invoke-virtual {v2}, LQd/f;->a()LOd/c;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, LQd/b;->b(LOd/c;LOd/c;LOd/c;)V

    :cond_0
    return-void
.end method

.method public final c(LQd/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p1}, LQd/m;->e()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, LQd/g;->a(LQd/m;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, LQd/g;->a:LQd/b;

    invoke-interface {v0, p1}, LQd/b;->f(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFCorruptException;

    const-string v0, "Missing ambient texture filename."

    invoke-direct {p1, v0}, Lcom/mokiat/data/front/error/WFCorruptException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(LQd/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget-object v0, p0, LQd/g;->a:LQd/b;

    invoke-virtual {p1}, LQd/m;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, LQd/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final e(LQd/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget-object v0, p0, LQd/g;->c:LQd/f;

    invoke-virtual {v0, p1}, LQd/f;->e(LQd/m;)V

    iget-object p1, p0, LQd/g;->c:LQd/f;

    invoke-virtual {p1}, LQd/f;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LQd/g;->a:LQd/b;

    iget-object v0, p0, LQd/g;->c:LQd/f;

    invoke-virtual {v0}, LQd/f;->c()LOd/c;

    move-result-object v0

    iget-object v1, p0, LQd/g;->c:LQd/f;

    invoke-virtual {v1}, LQd/f;->b()LOd/c;

    move-result-object v1

    iget-object v2, p0, LQd/g;->c:LQd/f;

    invoke-virtual {v2}, LQd/f;->a()LOd/c;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, LQd/b;->m(LOd/c;LOd/c;LOd/c;)V

    :cond_0
    return-void
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

    invoke-virtual {p0, p1}, LQd/g;->a(LQd/m;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, LQd/g;->a:LQd/b;

    invoke-interface {v0, p1}, LQd/b;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFCorruptException;

    const-string v0, "Missing diffuse texture filename."

    invoke-direct {p1, v0}, Lcom/mokiat/data/front/error/WFCorruptException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(LQd/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p1}, LQd/m;->e()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LQd/m;->d()I

    move-result v0

    invoke-virtual {p1, v0}, LQd/m;->b(I)LOd/c;

    move-result-object p1

    iget-object v0, p0, LQd/g;->a:LQd/b;

    invoke-interface {v0, p1}, LQd/b;->c(LOd/c;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFCorruptException;

    const-string v0, "Missing dissolve factor."

    invoke-direct {p1, v0}, Lcom/mokiat/data/front/error/WFCorruptException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h(LQd/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p1}, LQd/m;->e()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, LQd/g;->a(LQd/m;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, LQd/g;->a:LQd/b;

    invoke-interface {v0, p1}, LQd/b;->k(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFCorruptException;

    const-string v0, "Missing dissolve texture filename."

    invoke-direct {p1, v0}, Lcom/mokiat/data/front/error/WFCorruptException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final i(LQd/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p1}, LQd/m;->e()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQd/g;->a:LQd/b;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, LQd/m;->f(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, LQd/b;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFCorruptException;

    const-string v0, "Missing material name."

    invoke-direct {p1, v0}, Lcom/mokiat/data/front/error/WFCorruptException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j(LQd/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget-object v0, p0, LQd/g;->c:LQd/f;

    invoke-virtual {v0, p1}, LQd/f;->e(LQd/m;)V

    iget-object p1, p0, LQd/g;->c:LQd/f;

    invoke-virtual {p1}, LQd/f;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LQd/g;->a:LQd/b;

    iget-object v0, p0, LQd/g;->c:LQd/f;

    invoke-virtual {v0}, LQd/f;->c()LOd/c;

    move-result-object v0

    iget-object v1, p0, LQd/g;->c:LQd/f;

    invoke-virtual {v1}, LQd/f;->b()LOd/c;

    move-result-object v1

    iget-object v2, p0, LQd/g;->c:LQd/f;

    invoke-virtual {v2}, LQd/f;->a()LOd/c;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, LQd/b;->l(LOd/c;LOd/c;LOd/c;)V

    :cond_0
    return-void
.end method

.method public final k(LQd/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p1}, LQd/m;->e()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LQd/m;->d()I

    move-result v0

    invoke-virtual {p1, v0}, LQd/m;->b(I)LOd/c;

    move-result-object p1

    iget-object v0, p0, LQd/g;->a:LQd/b;

    invoke-interface {v0, p1}, LQd/b;->d(LOd/c;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFCorruptException;

    const-string v0, "Missing specular exponent amount."

    invoke-direct {p1, v0}, Lcom/mokiat/data/front/error/WFCorruptException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final l(LQd/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p1}, LQd/m;->e()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, LQd/g;->a(LQd/m;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, LQd/g;->a:LQd/b;

    invoke-interface {v0, p1}, LQd/b;->j(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFCorruptException;

    const-string v0, "Missing specular exponent texture filename."

    invoke-direct {p1, v0}, Lcom/mokiat/data/front/error/WFCorruptException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final m(LQd/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p1}, LQd/m;->e()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, LQd/g;->a(LQd/m;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, LQd/g;->a:LQd/b;

    invoke-interface {v0, p1}, LQd/b;->h(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFCorruptException;

    const-string v0, "Missing specular texture filename."

    invoke-direct {p1, v0}, Lcom/mokiat/data/front/error/WFCorruptException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final n(LQd/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget-object v0, p0, LQd/g;->c:LQd/f;

    invoke-virtual {v0, p1}, LQd/f;->e(LQd/m;)V

    iget-object p1, p0, LQd/g;->c:LQd/f;

    invoke-virtual {p1}, LQd/f;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LQd/g;->a:LQd/b;

    iget-object v0, p0, LQd/g;->c:LQd/f;

    invoke-virtual {v0}, LQd/f;->c()LOd/c;

    move-result-object v0

    iget-object v1, p0, LQd/g;->c:LQd/f;

    invoke-virtual {v1}, LQd/f;->b()LOd/c;

    move-result-object v1

    iget-object v2, p0, LQd/g;->c:LQd/f;

    invoke-virtual {v2}, LQd/f;->a()LOd/c;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, LQd/b;->g(LOd/c;LOd/c;LOd/c;)V

    :cond_0
    return-void
.end method

.method public o(Ljava/io/BufferedReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;,
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    iget-object v0, p0, LQd/g;->b:LQd/m;

    invoke-virtual {v0, p1}, LQd/m;->j(Ljava/io/BufferedReader;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, LQd/g;->b:LQd/m;

    invoke-virtual {v0}, LQd/m;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, LQd/g;->b:LQd/m;

    invoke-virtual {v0}, LQd/m;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LQd/g;->b:LQd/m;

    invoke-virtual {p0, v0}, LQd/g;->d(LQd/m;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, LQd/g;->b:LQd/m;

    const-string v1, "newmtl"

    invoke-virtual {v0, v1}, LQd/m;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, LQd/g;->b:LQd/m;

    invoke-virtual {p0, v0}, LQd/g;->i(LQd/m;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, LQd/g;->b:LQd/m;

    const-string v1, "Ka"

    invoke-virtual {v0, v1}, LQd/m;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, LQd/g;->b:LQd/m;

    invoke-virtual {p0, v0}, LQd/g;->b(LQd/m;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, LQd/g;->b:LQd/m;

    const-string v1, "Kd"

    invoke-virtual {v0, v1}, LQd/m;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, LQd/g;->b:LQd/m;

    invoke-virtual {p0, v0}, LQd/g;->e(LQd/m;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, LQd/g;->b:LQd/m;

    const-string v1, "Ks"

    invoke-virtual {v0, v1}, LQd/m;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, LQd/g;->b:LQd/m;

    invoke-virtual {p0, v0}, LQd/g;->j(LQd/m;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, LQd/g;->b:LQd/m;

    const-string v1, "Tf"

    invoke-virtual {v0, v1}, LQd/m;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, LQd/g;->b:LQd/m;

    invoke-virtual {p0, v0}, LQd/g;->n(LQd/m;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, LQd/g;->b:LQd/m;

    const-string v1, "d"

    invoke-virtual {v0, v1}, LQd/m;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, LQd/g;->b:LQd/m;

    invoke-virtual {p0, v0}, LQd/g;->g(LQd/m;)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, LQd/g;->b:LQd/m;

    const-string v1, "Ns"

    invoke-virtual {v0, v1}, LQd/m;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, LQd/g;->b:LQd/m;

    invoke-virtual {p0, v0}, LQd/g;->k(LQd/m;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, LQd/g;->b:LQd/m;

    const-string v1, "map_Ka"

    invoke-virtual {v0, v1}, LQd/m;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, LQd/g;->b:LQd/m;

    invoke-virtual {p0, v0}, LQd/g;->c(LQd/m;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, LQd/g;->b:LQd/m;

    const-string v1, "map_Kd"

    invoke-virtual {v0, v1}, LQd/m;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, LQd/g;->b:LQd/m;

    invoke-virtual {p0, v0}, LQd/g;->f(LQd/m;)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, LQd/g;->b:LQd/m;

    const-string v1, "map_Ks"

    invoke-virtual {v0, v1}, LQd/m;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, LQd/g;->b:LQd/m;

    invoke-virtual {p0, v0}, LQd/g;->m(LQd/m;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, LQd/g;->b:LQd/m;

    const-string v1, "map_Ns"

    invoke-virtual {v0, v1}, LQd/m;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, LQd/g;->b:LQd/m;

    invoke-virtual {p0, v0}, LQd/g;->l(LQd/m;)V

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, LQd/g;->b:LQd/m;

    const-string v1, "map_d"

    invoke-virtual {v0, v1}, LQd/m;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQd/g;->b:LQd/m;

    invoke-virtual {p0, v0}, LQd/g;->h(LQd/m;)V

    goto/16 :goto_0

    :cond_e
    return-void
.end method
