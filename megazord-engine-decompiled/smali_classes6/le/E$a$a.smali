.class public Lle/E$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lle/E$a;->iterator()Ljava/util/Iterator;
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
        "Ljava/lang/Byte;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:Lre/C;

.field public final synthetic c:Lle/E$a;


# direct methods
.method public constructor <init>(Lle/E$a;)V
    .locals 0

    iput-object p1, p0, Lle/E$a$a;->c:Lle/E$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lle/E$a;->b:Lle/E;

    iget-object p1, p1, Lle/E;->b:Lwe/y;

    invoke-interface {p1}, Lwe/y;->iterator()Lre/C;

    move-result-object p1

    iput-object p1, p0, Lle/E$a$a;->b:Lre/C;

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
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lle/E$a$a;->b:Lre/C;

    invoke-interface {v0}, Lre/a;->g()V

    iget-object v0, p0, Lle/E$a$a;->b:Lre/C;

    invoke-interface {v0}, Lre/C;->key()F

    move-result v0

    iget-object v1, p0, Lle/E$a$a;->c:Lle/E$a;

    iget-object v1, v1, Lle/E$a;->b:Lle/E;

    iget-object v1, v1, Lle/E;->b:Lwe/y;

    invoke-interface {v1}, Lwe/y;->l()F

    move-result v1

    cmpl-float v1, v0, v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lle/E$a$a;->c:Lle/E$a;

    iget-object v1, v1, Lle/E$a;->b:Lle/E;

    invoke-virtual {v1, v0}, Lle/E;->j(F)Ljava/lang/Float;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lle/E$a$a;->b:Lre/C;

    invoke-interface {v1}, Lre/C;->value()B

    move-result v1

    iget-object v3, p0, Lle/E$a$a;->c:Lle/E$a;

    iget-object v3, v3, Lle/E$a;->b:Lle/E;

    iget-object v3, v3, Lle/E;->b:Lwe/y;

    invoke-interface {v3}, Lwe/y;->i()B

    move-result v3

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lle/E$a$a;->c:Lle/E$a;

    iget-object v2, v2, Lle/E$a;->b:Lle/E;

    invoke-virtual {v2, v1}, Lle/E;->k(B)Ljava/lang/Byte;

    move-result-object v2

    :goto_1
    new-instance v1, Lle/E$a$a$a;

    invoke-direct {v1, p0, v2, v0}, Lle/E$a$a$a;-><init>(Lle/E$a$a;Ljava/lang/Byte;Ljava/lang/Float;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lle/E$a$a;->b:Lre/C;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lle/E$a$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lle/E$a$a;->b:Lre/C;

    invoke-interface {v0}, Lre/V;->remove()V

    return-void
.end method
