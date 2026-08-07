.class public Lle/r$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lle/r$a;->iterator()Ljava/util/Iterator;
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
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final b:Lre/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lre/r<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lle/r$a;


# direct methods
.method public constructor <init>(Lle/r$a;)V
    .locals 0

    iput-object p1, p0, Lle/r$a$a;->c:Lle/r$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lle/r$a;->b:Lle/r;

    iget-object p1, p1, Lle/r;->b:Lwe/o;

    invoke-interface {p1}, Lwe/o;->iterator()Lre/r;

    move-result-object p1

    iput-object p1, p0, Lle/r$a$a;->b:Lre/r;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Character;",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lle/r$a$a;->b:Lre/r;

    invoke-interface {v0}, Lre/a;->g()V

    iget-object v0, p0, Lle/r$a$a;->b:Lre/r;

    invoke-interface {v0}, Lre/r;->key()C

    move-result v0

    iget-object v1, p0, Lle/r$a$a;->c:Lle/r$a;

    iget-object v1, v1, Lle/r$a;->b:Lle/r;

    iget-object v1, v1, Lle/r;->b:Lwe/o;

    invoke-interface {v1}, Lwe/o;->l()C

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lle/r$a$a;->c:Lle/r$a;

    iget-object v1, v1, Lle/r$a;->b:Lle/r;

    invoke-virtual {v1, v0}, Lle/r;->h(C)Ljava/lang/Character;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lle/r$a$a;->b:Lre/r;

    invoke-interface {v1}, Lre/r;->value()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lle/r$a$a$a;

    invoke-direct {v2, p0, v1, v0}, Lle/r$a$a$a;-><init>(Lle/r$a$a;Ljava/lang/Object;Ljava/lang/Character;)V

    return-object v2
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lle/r$a$a;->b:Lre/r;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lle/r$a$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lle/r$a$a;->b:Lre/r;

    invoke-interface {v0}, Lre/V;->remove()V

    return-void
.end method
