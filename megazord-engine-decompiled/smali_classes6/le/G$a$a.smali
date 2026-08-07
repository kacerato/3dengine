.class public Lle/G$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lle/G$a;->iterator()Ljava/util/Iterator;
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
        "Ljava/lang/Double;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:Lre/E;

.field public final synthetic c:Lle/G$a;


# direct methods
.method public constructor <init>(Lle/G$a;)V
    .locals 0

    iput-object p1, p0, Lle/G$a$a;->c:Lle/G$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lle/G$a;->b:Lle/G;

    iget-object p1, p1, Lle/G;->b:Lwe/A;

    invoke-interface {p1}, Lwe/A;->iterator()Lre/E;

    move-result-object p1

    iput-object p1, p0, Lle/G$a$a;->b:Lre/E;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Float;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lle/G$a$a;->b:Lre/E;

    invoke-interface {v0}, Lre/a;->g()V

    iget-object v0, p0, Lle/G$a$a;->b:Lre/E;

    invoke-interface {v0}, Lre/E;->key()F

    move-result v0

    iget-object v1, p0, Lle/G$a$a;->c:Lle/G$a;

    iget-object v1, v1, Lle/G$a;->b:Lle/G;

    iget-object v1, v1, Lle/G;->b:Lwe/A;

    invoke-interface {v1}, Lwe/A;->l()F

    move-result v1

    cmpl-float v1, v0, v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lle/G$a$a;->c:Lle/G$a;

    iget-object v1, v1, Lle/G$a;->b:Lle/G;

    invoke-virtual {v1, v0}, Lle/G;->j(F)Ljava/lang/Float;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lle/G$a$a;->b:Lre/E;

    invoke-interface {v1}, Lre/E;->value()D

    move-result-wide v3

    iget-object v1, p0, Lle/G$a$a;->c:Lle/G$a;

    iget-object v1, v1, Lle/G$a;->b:Lle/G;

    iget-object v1, v1, Lle/G;->b:Lwe/A;

    invoke-interface {v1}, Lwe/A;->i()D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lle/G$a$a;->c:Lle/G$a;

    iget-object v1, v1, Lle/G$a;->b:Lle/G;

    invoke-virtual {v1, v3, v4}, Lle/G;->k(D)Ljava/lang/Double;

    move-result-object v2

    :goto_1
    new-instance v1, Lle/G$a$a$a;

    invoke-direct {v1, p0, v2, v0}, Lle/G$a$a$a;-><init>(Lle/G$a$a;Ljava/lang/Double;Ljava/lang/Float;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lle/G$a$a;->b:Lre/E;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lle/G$a$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lle/G$a$a;->b:Lre/E;

    invoke-interface {v0}, Lre/V;->remove()V

    return-void
.end method
