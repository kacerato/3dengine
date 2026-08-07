.class public Lle/n$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lle/n$a;->iterator()Ljava/util/Iterator;
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
        "Ljava/lang/Float;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:Lre/n;

.field public final synthetic c:Lle/n$a;


# direct methods
.method public constructor <init>(Lle/n$a;)V
    .locals 0

    iput-object p1, p0, Lle/n$a$a;->c:Lle/n$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lle/n$a;->b:Lle/n;

    iget-object p1, p1, Lle/n;->b:Lwe/l;

    invoke-interface {p1}, Lwe/l;->iterator()Lre/n;

    move-result-object p1

    iput-object p1, p0, Lle/n$a$a;->b:Lre/n;

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
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lle/n$a$a;->b:Lre/n;

    invoke-interface {v0}, Lre/a;->g()V

    iget-object v0, p0, Lle/n$a$a;->b:Lre/n;

    invoke-interface {v0}, Lre/n;->key()C

    move-result v0

    iget-object v1, p0, Lle/n$a$a;->c:Lle/n$a;

    iget-object v1, v1, Lle/n$a;->b:Lle/n;

    iget-object v1, v1, Lle/n;->b:Lwe/l;

    invoke-interface {v1}, Lwe/l;->l()C

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lle/n$a$a;->c:Lle/n$a;

    iget-object v1, v1, Lle/n$a;->b:Lle/n;

    invoke-virtual {v1, v0}, Lle/n;->j(C)Ljava/lang/Character;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lle/n$a$a;->b:Lre/n;

    invoke-interface {v1}, Lre/n;->value()F

    move-result v1

    iget-object v3, p0, Lle/n$a$a;->c:Lle/n$a;

    iget-object v3, v3, Lle/n$a;->b:Lle/n;

    iget-object v3, v3, Lle/n;->b:Lwe/l;

    invoke-interface {v3}, Lwe/l;->i()F

    move-result v3

    cmpl-float v3, v1, v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lle/n$a$a;->c:Lle/n$a;

    iget-object v2, v2, Lle/n$a;->b:Lle/n;

    invoke-virtual {v2, v1}, Lle/n;->k(F)Ljava/lang/Float;

    move-result-object v2

    :goto_1
    new-instance v1, Lle/n$a$a$a;

    invoke-direct {v1, p0, v2, v0}, Lle/n$a$a$a;-><init>(Lle/n$a$a;Ljava/lang/Float;Ljava/lang/Character;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lle/n$a$a;->b:Lre/n;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lle/n$a$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lle/n$a$a;->b:Lre/n;

    invoke-interface {v0}, Lre/V;->remove()V

    return-void
.end method
