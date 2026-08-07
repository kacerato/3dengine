.class public abstract Lpi/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lpi/v;

.field public b:Lpi/v;

.field public c:Lpi/v;

.field public d:Lpi/v;

.field public e:Lpi/v;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lpi/v;->a:Lpi/v;

    iput-object v0, p0, Lpi/v;->b:Lpi/v;

    iput-object v0, p0, Lpi/v;->c:Lpi/v;

    iput-object v0, p0, Lpi/v;->d:Lpi/v;

    iput-object v0, p0, Lpi/v;->e:Lpi/v;

    return-void
.end method


# virtual methods
.method public abstract c(Lpi/C;)V
.end method

.method public d(Lpi/v;)V
    .locals 1

    invoke-virtual {p1}, Lpi/v;->o()V

    invoke-virtual {p1, p0}, Lpi/v;->m(Lpi/v;)V

    iget-object v0, p0, Lpi/v;->c:Lpi/v;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lpi/v;->e:Lpi/v;

    iput-object v0, p1, Lpi/v;->d:Lpi/v;

    iput-object p1, p0, Lpi/v;->c:Lpi/v;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lpi/v;->b:Lpi/v;

    iput-object p1, p0, Lpi/v;->c:Lpi/v;

    :goto_0
    return-void
.end method

.method public e()Lpi/v;
    .locals 1

    iget-object v0, p0, Lpi/v;->b:Lpi/v;

    return-object v0
.end method

.method public f()Lpi/v;
    .locals 1

    iget-object v0, p0, Lpi/v;->c:Lpi/v;

    return-object v0
.end method

.method public g()Lpi/v;
    .locals 1

    iget-object v0, p0, Lpi/v;->e:Lpi/v;

    return-object v0
.end method

.method public h()Lpi/v;
    .locals 1

    iget-object v0, p0, Lpi/v;->a:Lpi/v;

    return-object v0
.end method

.method public i()Lpi/v;
    .locals 1

    iget-object v0, p0, Lpi/v;->d:Lpi/v;

    return-object v0
.end method

.method public j(Lpi/v;)V
    .locals 2

    invoke-virtual {p1}, Lpi/v;->o()V

    iget-object v0, p0, Lpi/v;->e:Lpi/v;

    iput-object v0, p1, Lpi/v;->e:Lpi/v;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lpi/v;->d:Lpi/v;

    :cond_0
    iput-object p0, p1, Lpi/v;->d:Lpi/v;

    iput-object p1, p0, Lpi/v;->e:Lpi/v;

    iget-object v0, p0, Lpi/v;->a:Lpi/v;

    iput-object v0, p1, Lpi/v;->a:Lpi/v;

    iget-object v1, p1, Lpi/v;->e:Lpi/v;

    if-nez v1, :cond_1

    iput-object p1, v0, Lpi/v;->c:Lpi/v;

    :cond_1
    return-void
.end method

.method public k(Lpi/v;)V
    .locals 2

    invoke-virtual {p1}, Lpi/v;->o()V

    iget-object v0, p0, Lpi/v;->d:Lpi/v;

    iput-object v0, p1, Lpi/v;->d:Lpi/v;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lpi/v;->e:Lpi/v;

    :cond_0
    iput-object p0, p1, Lpi/v;->e:Lpi/v;

    iput-object p1, p0, Lpi/v;->d:Lpi/v;

    iget-object v0, p0, Lpi/v;->a:Lpi/v;

    iput-object v0, p1, Lpi/v;->a:Lpi/v;

    iget-object v1, p1, Lpi/v;->d:Lpi/v;

    if-nez v1, :cond_1

    iput-object p1, v0, Lpi/v;->b:Lpi/v;

    :cond_1
    return-void
.end method

.method public l(Lpi/v;)V
    .locals 1

    invoke-virtual {p1}, Lpi/v;->o()V

    invoke-virtual {p1, p0}, Lpi/v;->m(Lpi/v;)V

    iget-object v0, p0, Lpi/v;->b:Lpi/v;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lpi/v;->d:Lpi/v;

    iput-object v0, p1, Lpi/v;->e:Lpi/v;

    iput-object p1, p0, Lpi/v;->b:Lpi/v;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lpi/v;->b:Lpi/v;

    iput-object p1, p0, Lpi/v;->c:Lpi/v;

    :goto_0
    return-void
.end method

.method public m(Lpi/v;)V
    .locals 0

    iput-object p1, p0, Lpi/v;->a:Lpi/v;

    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public o()V
    .locals 3

    iget-object v0, p0, Lpi/v;->d:Lpi/v;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lpi/v;->e:Lpi/v;

    iput-object v1, v0, Lpi/v;->e:Lpi/v;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lpi/v;->a:Lpi/v;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lpi/v;->e:Lpi/v;

    iput-object v2, v1, Lpi/v;->b:Lpi/v;

    :cond_1
    :goto_0
    iget-object v1, p0, Lpi/v;->e:Lpi/v;

    if-eqz v1, :cond_2

    iput-object v0, v1, Lpi/v;->d:Lpi/v;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lpi/v;->a:Lpi/v;

    if-eqz v1, :cond_3

    iput-object v0, v1, Lpi/v;->c:Lpi/v;

    :cond_3
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lpi/v;->a:Lpi/v;

    iput-object v0, p0, Lpi/v;->e:Lpi/v;

    iput-object v0, p0, Lpi/v;->d:Lpi/v;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lpi/v;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
