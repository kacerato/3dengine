.class public Lle/r0$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lle/r0$a;->iterator()Ljava/util/Iterator;
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
        "Ljava/lang/Short;",
        "Ljava/lang/Character;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:Lre/o0;

.field public final synthetic c:Lle/r0$a;


# direct methods
.method public constructor <init>(Lle/r0$a;)V
    .locals 0

    iput-object p1, p0, Lle/r0$a$a;->c:Lle/r0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lle/r0$a;->b:Lle/r0;

    iget-object p1, p1, Lle/r0;->b:Lwe/g0;

    invoke-interface {p1}, Lwe/g0;->iterator()Lre/o0;

    move-result-object p1

    iput-object p1, p0, Lle/r0$a$a;->b:Lre/o0;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Short;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lle/r0$a$a;->b:Lre/o0;

    invoke-interface {v0}, Lre/a;->g()V

    iget-object v0, p0, Lle/r0$a$a;->b:Lre/o0;

    invoke-interface {v0}, Lre/o0;->key()S

    move-result v0

    iget-object v1, p0, Lle/r0$a$a;->c:Lle/r0$a;

    iget-object v1, v1, Lle/r0$a;->b:Lle/r0;

    iget-object v1, v1, Lle/r0;->b:Lwe/g0;

    invoke-interface {v1}, Lwe/g0;->l()S

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lle/r0$a$a;->c:Lle/r0$a;

    iget-object v1, v1, Lle/r0$a;->b:Lle/r0;

    invoke-virtual {v1, v0}, Lle/r0;->j(S)Ljava/lang/Short;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lle/r0$a$a;->b:Lre/o0;

    invoke-interface {v1}, Lre/o0;->value()C

    move-result v1

    iget-object v3, p0, Lle/r0$a$a;->c:Lle/r0$a;

    iget-object v3, v3, Lle/r0$a;->b:Lle/r0;

    iget-object v3, v3, Lle/r0;->b:Lwe/g0;

    invoke-interface {v3}, Lwe/g0;->i()C

    move-result v3

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lle/r0$a$a;->c:Lle/r0$a;

    iget-object v2, v2, Lle/r0$a;->b:Lle/r0;

    invoke-virtual {v2, v1}, Lle/r0;->k(C)Ljava/lang/Character;

    move-result-object v2

    :goto_1
    new-instance v1, Lle/r0$a$a$a;

    invoke-direct {v1, p0, v2, v0}, Lle/r0$a$a$a;-><init>(Lle/r0$a$a;Ljava/lang/Character;Ljava/lang/Short;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lle/r0$a$a;->b:Lre/o0;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lle/r0$a$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lle/r0$a$a;->b:Lre/o0;

    invoke-interface {v0}, Lre/V;->remove()V

    return-void
.end method
