.class public Lle/j0$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lle/j0$a;->iterator()Ljava/util/Iterator;
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
        "Ljava/lang/Byte;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:Lre/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lre/f0<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lle/j0$a;


# direct methods
.method public constructor <init>(Lle/j0$a;)V
    .locals 0

    iput-object p1, p0, Lle/j0$a$a;->c:Lle/j0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lle/j0$a;->b:Lle/j0;

    iget-object p1, p1, Lle/j0;->b:Lwe/Y;

    invoke-interface {p1}, Lwe/Y;->iterator()Lre/f0;

    move-result-object p1

    iput-object p1, p0, Lle/j0$a$a;->b:Lre/f0;

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
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lle/j0$a$a;->b:Lre/f0;

    invoke-interface {v0}, Lre/a;->g()V

    iget-object v0, p0, Lle/j0$a$a;->b:Lre/f0;

    invoke-interface {v0}, Lre/f0;->key()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lle/j0$a$a;->c:Lle/j0$a;

    iget-object v1, v1, Lle/j0$a;->b:Lle/j0;

    iget-object v2, p0, Lle/j0$a$a;->b:Lre/f0;

    invoke-interface {v2}, Lre/f0;->value()B

    move-result v2

    invoke-virtual {v1, v2}, Lle/j0;->i(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lle/j0$a$a$a;

    invoke-direct {v2, p0, v1, v0}, Lle/j0$a$a$a;-><init>(Lle/j0$a$a;Ljava/lang/Byte;Ljava/lang/Object;)V

    return-object v2
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lle/j0$a$a;->b:Lre/f0;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lle/j0$a$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lle/j0$a$a;->b:Lre/f0;

    invoke-interface {v0}, Lre/V;->remove()V

    return-void
.end method
