.class public Lle/x0$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lle/x0$a;->iterator()Ljava/util/Iterator;
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
        "Ljava/lang/Short;",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final b:Lre/u0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lre/u0<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lle/x0$a;


# direct methods
.method public constructor <init>(Lle/x0$a;)V
    .locals 0

    iput-object p1, p0, Lle/x0$a$a;->c:Lle/x0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lle/x0$a;->b:Lle/x0;

    iget-object p1, p1, Lle/x0;->b:Lwe/l0;

    invoke-interface {p1}, Lwe/l0;->iterator()Lre/u0;

    move-result-object p1

    iput-object p1, p0, Lle/x0$a$a;->b:Lre/u0;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Short;",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lle/x0$a$a;->b:Lre/u0;

    invoke-interface {v0}, Lre/a;->g()V

    iget-object v0, p0, Lle/x0$a$a;->b:Lre/u0;

    invoke-interface {v0}, Lre/u0;->key()S

    move-result v0

    iget-object v1, p0, Lle/x0$a$a;->c:Lle/x0$a;

    iget-object v1, v1, Lle/x0$a;->b:Lle/x0;

    iget-object v1, v1, Lle/x0;->b:Lwe/l0;

    invoke-interface {v1}, Lwe/l0;->l()S

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lle/x0$a$a;->c:Lle/x0$a;

    iget-object v1, v1, Lle/x0$a;->b:Lle/x0;

    invoke-virtual {v1, v0}, Lle/x0;->h(S)Ljava/lang/Short;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lle/x0$a$a;->b:Lre/u0;

    invoke-interface {v1}, Lre/u0;->value()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lle/x0$a$a$a;

    invoke-direct {v2, p0, v1, v0}, Lle/x0$a$a$a;-><init>(Lle/x0$a$a;Ljava/lang/Object;Ljava/lang/Short;)V

    return-object v2
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lle/x0$a$a;->b:Lre/u0;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lle/x0$a$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lle/x0$a$a;->b:Lre/u0;

    invoke-interface {v0}, Lre/V;->remove()V

    return-void
.end method
