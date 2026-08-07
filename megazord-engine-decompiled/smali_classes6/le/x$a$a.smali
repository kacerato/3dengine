.class public Lle/x$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lle/x$a;->iterator()Ljava/util/Iterator;
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
        "Ljava/lang/Float;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:Lre/w;

.field public final synthetic c:Lle/x$a;


# direct methods
.method public constructor <init>(Lle/x$a;)V
    .locals 0

    iput-object p1, p0, Lle/x$a$a;->c:Lle/x$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lle/x$a;->b:Lle/x;

    iget-object p1, p1, Lle/x;->b:Lwe/t;

    invoke-interface {p1}, Lwe/t;->iterator()Lre/w;

    move-result-object p1

    iput-object p1, p0, Lle/x$a$a;->b:Lre/w;

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
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lle/x$a$a;->b:Lre/w;

    invoke-interface {v0}, Lre/a;->g()V

    iget-object v0, p0, Lle/x$a$a;->b:Lre/w;

    invoke-interface {v0}, Lre/w;->key()D

    move-result-wide v0

    iget-object v2, p0, Lle/x$a$a;->c:Lle/x$a;

    iget-object v2, v2, Lle/x$a;->b:Lle/x;

    iget-object v2, v2, Lle/x;->b:Lwe/t;

    invoke-interface {v2}, Lwe/t;->l()D

    move-result-wide v2

    cmpl-double v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lle/x$a$a;->c:Lle/x$a;

    iget-object v2, v2, Lle/x$a;->b:Lle/x;

    invoke-virtual {v2, v0, v1}, Lle/x;->j(D)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lle/x$a$a;->b:Lre/w;

    invoke-interface {v1}, Lre/w;->value()F

    move-result v1

    iget-object v2, p0, Lle/x$a$a;->c:Lle/x$a;

    iget-object v2, v2, Lle/x$a;->b:Lle/x;

    iget-object v2, v2, Lle/x;->b:Lwe/t;

    invoke-interface {v2}, Lwe/t;->i()F

    move-result v2

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lle/x$a$a;->c:Lle/x$a;

    iget-object v2, v2, Lle/x$a;->b:Lle/x;

    invoke-virtual {v2, v1}, Lle/x;->k(F)Ljava/lang/Float;

    move-result-object v3

    :goto_1
    new-instance v1, Lle/x$a$a$a;

    invoke-direct {v1, p0, v3, v0}, Lle/x$a$a$a;-><init>(Lle/x$a$a;Ljava/lang/Float;Ljava/lang/Double;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lle/x$a$a;->b:Lre/w;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lle/x$a$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lle/x$a$a;->b:Lre/w;

    invoke-interface {v0}, Lre/V;->remove()V

    return-void
.end method
