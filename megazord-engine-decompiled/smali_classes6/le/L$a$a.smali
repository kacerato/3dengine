.class public Lle/L$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lle/L$a;->iterator()Ljava/util/Iterator;
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
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final b:Lre/J;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lre/J<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lle/L$a;


# direct methods
.method public constructor <init>(Lle/L$a;)V
    .locals 0

    iput-object p1, p0, Lle/L$a$a;->c:Lle/L$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lle/L$a;->b:Lle/L;

    iget-object p1, p1, Lle/L;->b:Lwe/E;

    invoke-interface {p1}, Lwe/E;->iterator()Lre/J;

    move-result-object p1

    iput-object p1, p0, Lle/L$a$a;->b:Lre/J;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Float;",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lle/L$a$a;->b:Lre/J;

    invoke-interface {v0}, Lre/a;->g()V

    iget-object v0, p0, Lle/L$a$a;->b:Lre/J;

    invoke-interface {v0}, Lre/J;->key()F

    move-result v0

    iget-object v1, p0, Lle/L$a$a;->c:Lle/L$a;

    iget-object v1, v1, Lle/L$a;->b:Lle/L;

    iget-object v1, v1, Lle/L;->b:Lwe/E;

    invoke-interface {v1}, Lwe/E;->l()F

    move-result v1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lle/L$a$a;->c:Lle/L$a;

    iget-object v1, v1, Lle/L$a;->b:Lle/L;

    invoke-virtual {v1, v0}, Lle/L;->h(F)Ljava/lang/Float;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lle/L$a$a;->b:Lre/J;

    invoke-interface {v1}, Lre/J;->value()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lle/L$a$a$a;

    invoke-direct {v2, p0, v1, v0}, Lle/L$a$a$a;-><init>(Lle/L$a$a;Ljava/lang/Object;Ljava/lang/Float;)V

    return-object v2
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lle/L$a$a;->b:Lre/J;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lle/L$a$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lle/L$a$a;->b:Lre/J;

    invoke-interface {v0}, Lre/V;->remove()V

    return-void
.end method
