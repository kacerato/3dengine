.class public Lle/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lle/b$a;->iterator()Ljava/util/Iterator;
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
        "Ljava/lang/Byte;",
        "Ljava/lang/Character;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:Lre/c;

.field public final synthetic c:Lle/b$a;


# direct methods
.method public constructor <init>(Lle/b$a;)V
    .locals 0

    iput-object p1, p0, Lle/b$a$a;->c:Lle/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lle/b$a;->b:Lle/b;

    iget-object p1, p1, Lle/b;->b:Lwe/b;

    invoke-interface {p1}, Lwe/b;->iterator()Lre/c;

    move-result-object p1

    iput-object p1, p0, Lle/b$a$a;->b:Lre/c;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lle/b$a$a;->b:Lre/c;

    invoke-interface {v0}, Lre/a;->g()V

    iget-object v0, p0, Lle/b$a$a;->b:Lre/c;

    invoke-interface {v0}, Lre/c;->key()B

    move-result v0

    iget-object v1, p0, Lle/b$a$a;->c:Lle/b$a;

    iget-object v1, v1, Lle/b$a;->b:Lle/b;

    iget-object v1, v1, Lle/b;->b:Lwe/b;

    invoke-interface {v1}, Lwe/b;->l()B

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lle/b$a$a;->c:Lle/b$a;

    iget-object v1, v1, Lle/b$a;->b:Lle/b;

    invoke-virtual {v1, v0}, Lle/b;->j(B)Ljava/lang/Byte;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lle/b$a$a;->b:Lre/c;

    invoke-interface {v1}, Lre/c;->value()C

    move-result v1

    iget-object v3, p0, Lle/b$a$a;->c:Lle/b$a;

    iget-object v3, v3, Lle/b$a;->b:Lle/b;

    iget-object v3, v3, Lle/b;->b:Lwe/b;

    invoke-interface {v3}, Lwe/b;->i()C

    move-result v3

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lle/b$a$a;->c:Lle/b$a;

    iget-object v2, v2, Lle/b$a;->b:Lle/b;

    invoke-virtual {v2, v1}, Lle/b;->k(C)Ljava/lang/Character;

    move-result-object v2

    :goto_1
    new-instance v1, Lle/b$a$a$a;

    invoke-direct {v1, p0, v2, v0}, Lle/b$a$a$a;-><init>(Lle/b$a$a;Ljava/lang/Character;Ljava/lang/Byte;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lle/b$a$a;->b:Lre/c;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lle/b$a$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lle/b$a$a;->b:Lre/c;

    invoke-interface {v0}, Lre/V;->remove()V

    return-void
.end method
