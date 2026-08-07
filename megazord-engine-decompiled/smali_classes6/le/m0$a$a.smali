.class public Lle/m0$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lle/m0$a;->iterator()Ljava/util/Iterator;
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
        "TK;",
        "Ljava/lang/Float;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:Lre/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lre/i0<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lle/m0$a;


# direct methods
.method public constructor <init>(Lle/m0$a;)V
    .locals 0

    iput-object p1, p0, Lle/m0$a$a;->c:Lle/m0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lle/m0$a;->b:Lle/m0;

    iget-object p1, p1, Lle/m0;->b:Lwe/b0;

    invoke-interface {p1}, Lwe/b0;->iterator()Lre/i0;

    move-result-object p1

    iput-object p1, p0, Lle/m0$a$a;->b:Lre/i0;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lle/m0$a$a;->b:Lre/i0;

    invoke-interface {v0}, Lre/a;->g()V

    iget-object v0, p0, Lle/m0$a$a;->b:Lre/i0;

    invoke-interface {v0}, Lre/i0;->key()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lle/m0$a$a;->c:Lle/m0$a;

    iget-object v1, v1, Lle/m0$a;->b:Lle/m0;

    iget-object v2, p0, Lle/m0$a$a;->b:Lre/i0;

    invoke-interface {v2}, Lre/i0;->value()F

    move-result v2

    invoke-virtual {v1, v2}, Lle/m0;->i(F)Ljava/lang/Float;

    move-result-object v1

    new-instance v2, Lle/m0$a$a$a;

    invoke-direct {v2, p0, v1, v0}, Lle/m0$a$a$a;-><init>(Lle/m0$a$a;Ljava/lang/Float;Ljava/lang/Object;)V

    return-object v2
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lle/m0$a$a;->b:Lre/i0;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lle/m0$a$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lle/m0$a$a;->b:Lre/i0;

    invoke-interface {v0}, Lre/V;->remove()V

    return-void
.end method
