.class public Lle/B$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lle/B$a;->iterator()Ljava/util/Iterator;
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
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final b:Lre/A;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lre/A<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lle/B$a;


# direct methods
.method public constructor <init>(Lle/B$a;)V
    .locals 0

    iput-object p1, p0, Lle/B$a$a;->c:Lle/B$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lle/B$a;->b:Lle/B;

    iget-object p1, p1, Lle/B;->b:Lwe/w;

    invoke-interface {p1}, Lwe/w;->iterator()Lre/A;

    move-result-object p1

    iput-object p1, p0, Lle/B$a$a;->b:Lre/A;

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
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lle/B$a$a;->b:Lre/A;

    invoke-interface {v0}, Lre/a;->g()V

    iget-object v0, p0, Lle/B$a$a;->b:Lre/A;

    invoke-interface {v0}, Lre/A;->key()D

    move-result-wide v0

    iget-object v2, p0, Lle/B$a$a;->c:Lle/B$a;

    iget-object v2, v2, Lle/B$a;->b:Lle/B;

    iget-object v2, v2, Lle/B;->b:Lwe/w;

    invoke-interface {v2}, Lwe/w;->l()D

    move-result-wide v2

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lle/B$a$a;->c:Lle/B$a;

    iget-object v2, v2, Lle/B$a;->b:Lle/B;

    invoke-virtual {v2, v0, v1}, Lle/B;->h(D)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lle/B$a$a;->b:Lre/A;

    invoke-interface {v1}, Lre/A;->value()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lle/B$a$a$a;

    invoke-direct {v2, p0, v1, v0}, Lle/B$a$a$a;-><init>(Lle/B$a$a;Ljava/lang/Object;Ljava/lang/Double;)V

    return-object v2
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lle/B$a$a;->b:Lre/A;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lle/B$a$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lle/B$a$a;->b:Lre/A;

    invoke-interface {v0}, Lre/V;->remove()V

    return-void
.end method
