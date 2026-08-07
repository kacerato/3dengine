.class public Lle/K$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lle/K$a;->iterator()Ljava/util/Iterator;
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
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:Lre/I;

.field public final synthetic c:Lle/K$a;


# direct methods
.method public constructor <init>(Lle/K$a;)V
    .locals 0

    iput-object p1, p0, Lle/K$a$a;->c:Lle/K$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lle/K$a;->b:Lle/K;

    iget-object p1, p1, Lle/K;->b:Lwe/D;

    invoke-interface {p1}, Lwe/D;->iterator()Lre/I;

    move-result-object p1

    iput-object p1, p0, Lle/K$a$a;->b:Lre/I;

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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lle/K$a$a;->b:Lre/I;

    invoke-interface {v0}, Lre/a;->g()V

    iget-object v0, p0, Lle/K$a$a;->b:Lre/I;

    invoke-interface {v0}, Lre/I;->key()F

    move-result v0

    iget-object v1, p0, Lle/K$a$a;->c:Lle/K$a;

    iget-object v1, v1, Lle/K$a;->b:Lle/K;

    iget-object v1, v1, Lle/K;->b:Lwe/D;

    invoke-interface {v1}, Lwe/D;->l()F

    move-result v1

    cmpl-float v1, v0, v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lle/K$a$a;->c:Lle/K$a;

    iget-object v1, v1, Lle/K$a;->b:Lle/K;

    invoke-virtual {v1, v0}, Lle/K;->j(F)Ljava/lang/Float;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lle/K$a$a;->b:Lre/I;

    invoke-interface {v1}, Lre/I;->value()J

    move-result-wide v3

    iget-object v1, p0, Lle/K$a$a;->c:Lle/K$a;

    iget-object v1, v1, Lle/K$a;->b:Lle/K;

    iget-object v1, v1, Lle/K;->b:Lwe/D;

    invoke-interface {v1}, Lwe/D;->i()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lle/K$a$a;->c:Lle/K$a;

    iget-object v1, v1, Lle/K$a;->b:Lle/K;

    invoke-virtual {v1, v3, v4}, Lle/K;->k(J)Ljava/lang/Long;

    move-result-object v2

    :goto_1
    new-instance v1, Lle/K$a$a$a;

    invoke-direct {v1, p0, v2, v0}, Lle/K$a$a$a;-><init>(Lle/K$a$a;Ljava/lang/Long;Ljava/lang/Float;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lle/K$a$a;->b:Lre/I;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lle/K$a$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lle/K$a$a;->b:Lre/I;

    invoke-interface {v0}, Lre/V;->remove()V

    return-void
.end method
