.class public Lle/g0$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lle/g0$a;->iterator()Ljava/util/Iterator;
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
        "Ljava/lang/Long;",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final b:Lre/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lre/d0<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lle/g0$a;


# direct methods
.method public constructor <init>(Lle/g0$a;)V
    .locals 0

    iput-object p1, p0, Lle/g0$a$a;->c:Lle/g0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lle/g0$a;->b:Lle/g0;

    iget-object p1, p1, Lle/g0;->b:Lwe/V;

    invoke-interface {p1}, Lwe/V;->iterator()Lre/d0;

    move-result-object p1

    iput-object p1, p0, Lle/g0$a$a;->b:Lre/d0;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Long;",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lle/g0$a$a;->b:Lre/d0;

    invoke-interface {v0}, Lre/a;->g()V

    iget-object v0, p0, Lle/g0$a$a;->b:Lre/d0;

    invoke-interface {v0}, Lre/d0;->key()J

    move-result-wide v0

    iget-object v2, p0, Lle/g0$a$a;->c:Lle/g0$a;

    iget-object v2, v2, Lle/g0$a;->b:Lle/g0;

    iget-object v2, v2, Lle/g0;->b:Lwe/V;

    invoke-interface {v2}, Lwe/V;->l()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lle/g0$a$a;->c:Lle/g0$a;

    iget-object v2, v2, Lle/g0$a;->b:Lle/g0;

    invoke-virtual {v2, v0, v1}, Lle/g0;->h(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lle/g0$a$a;->b:Lre/d0;

    invoke-interface {v1}, Lre/d0;->value()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lle/g0$a$a$a;

    invoke-direct {v2, p0, v1, v0}, Lle/g0$a$a$a;-><init>(Lle/g0$a$a;Ljava/lang/Object;Ljava/lang/Long;)V

    return-object v2
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lle/g0$a$a;->b:Lre/d0;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lle/g0$a$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lle/g0$a$a;->b:Lre/d0;

    invoke-interface {v0}, Lre/V;->remove()V

    return-void
.end method
