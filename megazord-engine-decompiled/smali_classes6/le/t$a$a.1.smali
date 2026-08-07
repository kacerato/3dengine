.class public Lle/t$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lle/t$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Character;",
        "Ljava/lang/Short;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:Lre/s;

.field public final synthetic c:Lle/t$a;


# direct methods
.method public constructor <init>(Lle/t$a;)V
    .locals 0

    iput-object p1, p0, Lle/t$a$a;->c:Lle/t$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lle/t$a;->b:Lle/t;

    iget-object p1, p1, Lle/t;->b:Lwe/p;

    invoke-interface {p1}, Lwe/p;->iterator()Lre/s;

    move-result-object p1

    iput-object p1, p0, Lle/t$a$a;->b:Lre/s;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Character;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lle/t$a$a;->b:Lre/s;

    invoke-interface {v0}, Lre/a;->g()V

    iget-object v0, p0, Lle/t$a$a;->b:Lre/s;

    invoke-interface {v0}, Lre/s;->key()C

    move-result v0

    iget-object v1, p0, Lle/t$a$a;->c:Lle/t$a;

    iget-object v1, v1, Lle/t$a;->b:Lle/t;

    iget-object v1, v1, Lle/t;->b:Lwe/p;

    invoke-interface {v1}, Lwe/p;->l()C

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lle/t$a$a;->c:Lle/t$a;

    iget-object v1, v1, Lle/t$a;->b:Lle/t;

    invoke-virtual {v1, v0}, Lle/t;->j(C)Ljava/lang/Character;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lle/t$a$a;->b:Lre/s;

    invoke-interface {v1}, Lre/s;->value()S

    move-result v1

    iget-object v3, p0, Lle/t$a$a;->c:Lle/t$a;

    iget-object v3, v3, Lle/t$a;->b:Lle/t;

    iget-object v3, v3, Lle/t;->b:Lwe/p;

    invoke-interface {v3}, Lwe/p;->i()S

    move-result v3

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lle/t$a$a;->c:Lle/t$a;

    iget-object v2, v2, Lle/t$a;->b:Lle/t;

    invoke-virtual {v2, v1}, Lle/t;->k(S)Ljava/lang/Short;

    move-result-object v2

    :goto_1
    new-instance v1, Lle/t$a$a$a;

    invoke-direct {v1, p0, v2, v0}, Lle/t$a$a$a;-><init>(Lle/t$a$a;Ljava/lang/Short;Ljava/lang/Character;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lle/t$a$a;->b:Lre/s;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lle/t$a$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lle/t$a$a;->b:Lre/s;

    invoke-interface {v0}, Lre/V;->remove()V

    return-void
.end method
