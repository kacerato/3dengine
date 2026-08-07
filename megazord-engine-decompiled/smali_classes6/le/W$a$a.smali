.class public Lle/W$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lle/W$a;->iterator()Ljava/util/Iterator;
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
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final b:Lre/T;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lre/T<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lle/W$a;


# direct methods
.method public constructor <init>(Lle/W$a;)V
    .locals 0

    iput-object p1, p0, Lle/W$a$a;->c:Lle/W$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lle/W$a;->b:Lle/W;

    iget-object p1, p1, Lle/W;->b:Lwe/M;

    invoke-interface {p1}, Lwe/M;->iterator()Lre/T;

    move-result-object p1

    iput-object p1, p0, Lle/W$a$a;->b:Lre/T;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lle/W$a$a;->b:Lre/T;

    invoke-interface {v0}, Lre/a;->g()V

    iget-object v0, p0, Lle/W$a$a;->b:Lre/T;

    invoke-interface {v0}, Lre/T;->key()I

    move-result v0

    iget-object v1, p0, Lle/W$a$a;->c:Lle/W$a;

    iget-object v1, v1, Lle/W$a;->b:Lle/W;

    iget-object v1, v1, Lle/W;->b:Lwe/M;

    invoke-interface {v1}, Lwe/M;->l()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lle/W$a$a;->c:Lle/W$a;

    iget-object v1, v1, Lle/W$a;->b:Lle/W;

    invoke-virtual {v1, v0}, Lle/W;->h(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lle/W$a$a;->b:Lre/T;

    invoke-interface {v1}, Lre/T;->value()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lle/W$a$a$a;

    invoke-direct {v2, p0, v1, v0}, Lle/W$a$a$a;-><init>(Lle/W$a$a;Ljava/lang/Object;Ljava/lang/Integer;)V

    return-object v2
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lle/W$a$a;->b:Lre/T;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lle/W$a$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lle/W$a$a;->b:Lre/T;

    invoke-interface {v0}, Lre/V;->remove()V

    return-void
.end method
