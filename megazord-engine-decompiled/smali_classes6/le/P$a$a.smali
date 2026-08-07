.class public Lle/P$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lle/P$a;->iterator()Ljava/util/Iterator;
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
        "Ljava/lang/Integer;",
        "Ljava/lang/Character;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:Lre/M;

.field public final synthetic c:Lle/P$a;


# direct methods
.method public constructor <init>(Lle/P$a;)V
    .locals 0

    iput-object p1, p0, Lle/P$a$a;->c:Lle/P$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lle/P$a;->b:Lle/P;

    iget-object p1, p1, Lle/P;->b:Lwe/H;

    invoke-interface {p1}, Lwe/H;->iterator()Lre/M;

    move-result-object p1

    iput-object p1, p0, Lle/P$a$a;->b:Lre/M;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lle/P$a$a;->b:Lre/M;

    invoke-interface {v0}, Lre/a;->g()V

    iget-object v0, p0, Lle/P$a$a;->b:Lre/M;

    invoke-interface {v0}, Lre/M;->key()I

    move-result v0

    iget-object v1, p0, Lle/P$a$a;->c:Lle/P$a;

    iget-object v1, v1, Lle/P$a;->b:Lle/P;

    iget-object v1, v1, Lle/P;->b:Lwe/H;

    invoke-interface {v1}, Lwe/H;->l()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lle/P$a$a;->c:Lle/P$a;

    iget-object v1, v1, Lle/P$a;->b:Lle/P;

    invoke-virtual {v1, v0}, Lle/P;->j(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lle/P$a$a;->b:Lre/M;

    invoke-interface {v1}, Lre/M;->value()C

    move-result v1

    iget-object v3, p0, Lle/P$a$a;->c:Lle/P$a;

    iget-object v3, v3, Lle/P$a;->b:Lle/P;

    iget-object v3, v3, Lle/P;->b:Lwe/H;

    invoke-interface {v3}, Lwe/H;->i()C

    move-result v3

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lle/P$a$a;->c:Lle/P$a;

    iget-object v2, v2, Lle/P$a;->b:Lle/P;

    invoke-virtual {v2, v1}, Lle/P;->k(C)Ljava/lang/Character;

    move-result-object v2

    :goto_1
    new-instance v1, Lle/P$a$a$a;

    invoke-direct {v1, p0, v2, v0}, Lle/P$a$a$a;-><init>(Lle/P$a$a;Ljava/lang/Character;Ljava/lang/Integer;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lle/P$a$a;->b:Lre/M;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lle/P$a$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lle/P$a$a;->b:Lre/M;

    invoke-interface {v0}, Lre/V;->remove()V

    return-void
.end method
