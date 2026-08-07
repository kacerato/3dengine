.class public Lji/b;
.super Lji/c;
.source "SourceFile"


# instance fields
.field public final a:Lui/h;

.field public final b:Lui/e;


# direct methods
.method public constructor <init>(Lui/e;)V
    .locals 1

    invoke-direct {p0}, Lji/c;-><init>()V

    invoke-interface {p1}, Lui/e;->b()Lui/h;

    move-result-object v0

    iput-object v0, p0, Lji/b;->a:Lui/h;

    iput-object p1, p0, Lji/b;->b:Lui/e;

    return-void
.end method

.method public static g(Lii/c$a;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lji/b$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string p0, "right"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown alignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "center"

    return-object p0

    :cond_2
    const-string p0, "left"

    return-object p0
.end method


# virtual methods
.method public bridge synthetic A()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Lji/c;->A()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Lpi/v;)V
    .locals 0

    invoke-super {p0, p1}, Lji/c;->a(Lpi/v;)V

    return-void
.end method

.method public b(Lii/a;)V
    .locals 3

    iget-object v0, p0, Lji/b;->a:Lui/h;

    invoke-virtual {v0}, Lui/h;->b()V

    iget-object v0, p0, Lji/b;->a:Lui/h;

    const-string v1, "table"

    invoke-virtual {p0, p1, v1}, Lji/b;->h(Lpi/v;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lui/h;->e(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, p1}, Lji/b;->j(Lpi/v;)V

    iget-object p1, p0, Lji/b;->a:Lui/h;

    const-string v0, "/table"

    invoke-virtual {p1, v0}, Lui/h;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lji/b;->a:Lui/h;

    invoke-virtual {p1}, Lui/h;->b()V

    return-void
.end method

.method public c(Lii/b;)V
    .locals 3

    iget-object v0, p0, Lji/b;->a:Lui/h;

    invoke-virtual {v0}, Lui/h;->b()V

    iget-object v0, p0, Lji/b;->a:Lui/h;

    const-string v1, "tbody"

    invoke-virtual {p0, p1, v1}, Lji/b;->h(Lpi/v;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lui/h;->e(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, p1}, Lji/b;->j(Lpi/v;)V

    iget-object p1, p0, Lji/b;->a:Lui/h;

    const-string v0, "/tbody"

    invoke-virtual {p1, v0}, Lui/h;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lji/b;->a:Lui/h;

    invoke-virtual {p1}, Lui/h;->b()V

    return-void
.end method

.method public d(Lii/c;)V
    .locals 3

    invoke-virtual {p1}, Lii/c;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "th"

    goto :goto_0

    :cond_0
    const-string v0, "td"

    :goto_0
    iget-object v1, p0, Lji/b;->a:Lui/h;

    invoke-virtual {v1}, Lui/h;->b()V

    iget-object v1, p0, Lji/b;->a:Lui/h;

    invoke-virtual {p0, p1, v0}, Lji/b;->i(Lii/c;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lui/h;->e(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, p1}, Lji/b;->j(Lpi/v;)V

    iget-object p1, p0, Lji/b;->a:Lui/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lui/h;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lji/b;->a:Lui/h;

    invoke-virtual {p1}, Lui/h;->b()V

    return-void
.end method

.method public e(Lii/d;)V
    .locals 3

    iget-object v0, p0, Lji/b;->a:Lui/h;

    invoke-virtual {v0}, Lui/h;->b()V

    iget-object v0, p0, Lji/b;->a:Lui/h;

    const-string v1, "thead"

    invoke-virtual {p0, p1, v1}, Lji/b;->h(Lpi/v;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lui/h;->e(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, p1}, Lji/b;->j(Lpi/v;)V

    iget-object p1, p0, Lji/b;->a:Lui/h;

    const-string v0, "/thead"

    invoke-virtual {p1, v0}, Lui/h;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lji/b;->a:Lui/h;

    invoke-virtual {p1}, Lui/h;->b()V

    return-void
.end method

.method public f(Lii/e;)V
    .locals 3

    iget-object v0, p0, Lji/b;->a:Lui/h;

    invoke-virtual {v0}, Lui/h;->b()V

    iget-object v0, p0, Lji/b;->a:Lui/h;

    const-string v1, "tr"

    invoke-virtual {p0, p1, v1}, Lji/b;->h(Lpi/v;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lui/h;->e(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, p1}, Lji/b;->j(Lpi/v;)V

    iget-object p1, p0, Lji/b;->a:Lui/h;

    const-string v0, "/tr"

    invoke-virtual {p1, v0}, Lui/h;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lji/b;->a:Lui/h;

    invoke-virtual {p1}, Lui/h;->b()V

    return-void
.end method

.method public final h(Lpi/v;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpi/v;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lji/b;->b:Lui/e;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lui/e;->f(Lpi/v;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final i(Lii/c;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lii/c;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lii/c;->p()Lii/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lji/b;->b:Lui/e;

    invoke-virtual {p1}, Lii/c;->p()Lii/c$a;

    move-result-object v1

    invoke-static {v1}, Lji/b;->g(Lii/c$a;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "align"

    invoke-static {v2, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lui/e;->f(Lpi/v;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lji/b;->b:Lui/e;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lui/e;->f(Lpi/v;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final j(Lpi/v;)V
    .locals 2

    invoke-virtual {p1}, Lpi/v;->e()Lpi/v;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lpi/v;->g()Lpi/v;

    move-result-object v0

    iget-object v1, p0, Lji/b;->b:Lui/e;

    invoke-interface {v1, p1}, Lui/e;->a(Lpi/v;)V

    move-object p1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
