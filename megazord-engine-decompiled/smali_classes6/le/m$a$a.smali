.class public Lle/m$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lle/m$a;->iterator()Ljava/util/Iterator;
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
        "Ljava/lang/Double;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:Lre/m;

.field public final synthetic c:Lle/m$a;


# direct methods
.method public constructor <init>(Lle/m$a;)V
    .locals 0

    iput-object p1, p0, Lle/m$a$a;->c:Lle/m$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lle/m$a;->b:Lle/m;

    iget-object p1, p1, Lle/m;->b:Lwe/k;

    invoke-interface {p1}, Lwe/k;->iterator()Lre/m;

    move-result-object p1

    iput-object p1, p0, Lle/m$a$a;->b:Lre/m;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Character;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lle/m$a$a;->b:Lre/m;

    invoke-interface {v0}, Lre/a;->g()V

    iget-object v0, p0, Lle/m$a$a;->b:Lre/m;

    invoke-interface {v0}, Lre/m;->key()C

    move-result v0

    iget-object v1, p0, Lle/m$a$a;->c:Lle/m$a;

    iget-object v1, v1, Lle/m$a;->b:Lle/m;

    iget-object v1, v1, Lle/m;->b:Lwe/k;

    invoke-interface {v1}, Lwe/k;->l()C

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lle/m$a$a;->c:Lle/m$a;

    iget-object v1, v1, Lle/m$a;->b:Lle/m;

    invoke-virtual {v1, v0}, Lle/m;->j(C)Ljava/lang/Character;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lle/m$a$a;->b:Lre/m;

    invoke-interface {v1}, Lre/m;->value()D

    move-result-wide v3

    iget-object v1, p0, Lle/m$a$a;->c:Lle/m$a;

    iget-object v1, v1, Lle/m$a;->b:Lle/m;

    iget-object v1, v1, Lle/m;->b:Lwe/k;

    invoke-interface {v1}, Lwe/k;->i()D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lle/m$a$a;->c:Lle/m$a;

    iget-object v1, v1, Lle/m$a;->b:Lle/m;

    invoke-virtual {v1, v3, v4}, Lle/m;->k(D)Ljava/lang/Double;

    move-result-object v2

    :goto_1
    new-instance v1, Lle/m$a$a$a;

    invoke-direct {v1, p0, v2, v0}, Lle/m$a$a$a;-><init>(Lle/m$a$a;Ljava/lang/Double;Ljava/lang/Character;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lle/m$a$a;->b:Lre/m;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lle/m$a$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lle/m$a$a;->b:Lre/m;

    invoke-interface {v0}, Lre/V;->remove()V

    return-void
.end method
