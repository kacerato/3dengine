.class public Lle/y$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lle/y$a;->iterator()Ljava/util/Iterator;
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
        "Ljava/lang/Double;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:Lre/x;

.field public final synthetic c:Lle/y$a;


# direct methods
.method public constructor <init>(Lle/y$a;)V
    .locals 0

    iput-object p1, p0, Lle/y$a$a;->c:Lle/y$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lle/y$a;->b:Lle/y;

    iget-object p1, p1, Lle/y;->b:Lwe/u;

    invoke-interface {p1}, Lwe/u;->iterator()Lre/x;

    move-result-object p1

    iput-object p1, p0, Lle/y$a$a;->b:Lre/x;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Double;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lle/y$a$a;->b:Lre/x;

    invoke-interface {v0}, Lre/a;->g()V

    iget-object v0, p0, Lle/y$a$a;->b:Lre/x;

    invoke-interface {v0}, Lre/x;->key()D

    move-result-wide v0

    iget-object v2, p0, Lle/y$a$a;->c:Lle/y$a;

    iget-object v2, v2, Lle/y$a;->b:Lle/y;

    iget-object v2, v2, Lle/y;->b:Lwe/u;

    invoke-interface {v2}, Lwe/u;->l()D

    move-result-wide v2

    cmpl-double v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lle/y$a$a;->c:Lle/y$a;

    iget-object v2, v2, Lle/y$a;->b:Lle/y;

    invoke-virtual {v2, v0, v1}, Lle/y;->j(D)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lle/y$a$a;->b:Lre/x;

    invoke-interface {v1}, Lre/x;->value()I

    move-result v1

    iget-object v2, p0, Lle/y$a$a;->c:Lle/y$a;

    iget-object v2, v2, Lle/y$a;->b:Lle/y;

    iget-object v2, v2, Lle/y;->b:Lwe/u;

    invoke-interface {v2}, Lwe/u;->i()I

    move-result v2

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lle/y$a$a;->c:Lle/y$a;

    iget-object v2, v2, Lle/y$a;->b:Lle/y;

    invoke-virtual {v2, v1}, Lle/y;->k(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_1
    new-instance v1, Lle/y$a$a$a;

    invoke-direct {v1, p0, v3, v0}, Lle/y$a$a$a;-><init>(Lle/y$a$a;Ljava/lang/Integer;Ljava/lang/Double;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lle/y$a$a;->b:Lre/x;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lle/y$a$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lle/y$a$a;->b:Lre/x;

    invoke-interface {v0}, Lre/V;->remove()V

    return-void
.end method
