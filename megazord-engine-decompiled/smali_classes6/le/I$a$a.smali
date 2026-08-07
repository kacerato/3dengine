.class public Lle/I$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lle/I$a;->iterator()Ljava/util/Iterator;
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
        "Ljava/lang/Float;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:Lre/G;

.field public final synthetic c:Lle/I$a;


# direct methods
.method public constructor <init>(Lle/I$a;)V
    .locals 0

    iput-object p1, p0, Lle/I$a$a;->c:Lle/I$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lle/I$a;->b:Lle/I;

    iget-object p1, p1, Lle/I;->b:Lwe/C;

    invoke-interface {p1}, Lwe/C;->iterator()Lre/G;

    move-result-object p1

    iput-object p1, p0, Lle/I$a$a;->b:Lre/G;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Float;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lle/I$a$a;->b:Lre/G;

    invoke-interface {v0}, Lre/a;->g()V

    iget-object v0, p0, Lle/I$a$a;->b:Lre/G;

    invoke-interface {v0}, Lre/G;->key()F

    move-result v0

    iget-object v1, p0, Lle/I$a$a;->c:Lle/I$a;

    iget-object v1, v1, Lle/I$a;->b:Lle/I;

    iget-object v1, v1, Lle/I;->b:Lwe/C;

    invoke-interface {v1}, Lwe/C;->l()F

    move-result v1

    cmpl-float v1, v0, v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lle/I$a$a;->c:Lle/I$a;

    iget-object v1, v1, Lle/I$a;->b:Lle/I;

    invoke-virtual {v1, v0}, Lle/I;->j(F)Ljava/lang/Float;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lle/I$a$a;->b:Lre/G;

    invoke-interface {v1}, Lre/G;->value()I

    move-result v1

    iget-object v3, p0, Lle/I$a$a;->c:Lle/I$a;

    iget-object v3, v3, Lle/I$a;->b:Lle/I;

    iget-object v3, v3, Lle/I;->b:Lwe/C;

    invoke-interface {v3}, Lwe/C;->i()I

    move-result v3

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lle/I$a$a;->c:Lle/I$a;

    iget-object v2, v2, Lle/I$a;->b:Lle/I;

    invoke-virtual {v2, v1}, Lle/I;->k(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    new-instance v1, Lle/I$a$a$a;

    invoke-direct {v1, p0, v2, v0}, Lle/I$a$a$a;-><init>(Lle/I$a$a;Ljava/lang/Integer;Ljava/lang/Float;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lle/I$a$a;->b:Lre/G;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lle/I$a$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lle/I$a$a;->b:Lre/G;

    invoke-interface {v0}, Lre/V;->remove()V

    return-void
.end method
