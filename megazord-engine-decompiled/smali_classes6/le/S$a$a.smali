.class public Lle/S$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lle/S$a;->iterator()Ljava/util/Iterator;
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
        "Ljava/lang/Float;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:Lre/O;

.field public final synthetic c:Lle/S$a;


# direct methods
.method public constructor <init>(Lle/S$a;)V
    .locals 0

    iput-object p1, p0, Lle/S$a$a;->c:Lle/S$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lle/S$a;->b:Lle/S;

    iget-object p1, p1, Lle/S;->b:Lwe/J;

    invoke-interface {p1}, Lwe/J;->iterator()Lre/O;

    move-result-object p1

    iput-object p1, p0, Lle/S$a$a;->b:Lre/O;

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
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lle/S$a$a;->b:Lre/O;

    invoke-interface {v0}, Lre/a;->g()V

    iget-object v0, p0, Lle/S$a$a;->b:Lre/O;

    invoke-interface {v0}, Lre/O;->key()I

    move-result v0

    iget-object v1, p0, Lle/S$a$a;->c:Lle/S$a;

    iget-object v1, v1, Lle/S$a;->b:Lle/S;

    iget-object v1, v1, Lle/S;->b:Lwe/J;

    invoke-interface {v1}, Lwe/J;->l()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lle/S$a$a;->c:Lle/S$a;

    iget-object v1, v1, Lle/S$a;->b:Lle/S;

    invoke-virtual {v1, v0}, Lle/S;->j(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lle/S$a$a;->b:Lre/O;

    invoke-interface {v1}, Lre/O;->value()F

    move-result v1

    iget-object v3, p0, Lle/S$a$a;->c:Lle/S$a;

    iget-object v3, v3, Lle/S$a;->b:Lle/S;

    iget-object v3, v3, Lle/S;->b:Lwe/J;

    invoke-interface {v3}, Lwe/J;->i()F

    move-result v3

    cmpl-float v3, v1, v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lle/S$a$a;->c:Lle/S$a;

    iget-object v2, v2, Lle/S$a;->b:Lle/S;

    invoke-virtual {v2, v1}, Lle/S;->k(F)Ljava/lang/Float;

    move-result-object v2

    :goto_1
    new-instance v1, Lle/S$a$a$a;

    invoke-direct {v1, p0, v2, v0}, Lle/S$a$a$a;-><init>(Lle/S$a$a;Ljava/lang/Float;Ljava/lang/Integer;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lle/S$a$a;->b:Lre/O;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lle/S$a$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lle/S$a$a;->b:Lre/O;

    invoke-interface {v0}, Lre/V;->remove()V

    return-void
.end method
