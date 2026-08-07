.class public Lle/o0$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lle/o0$a;->iterator()Ljava/util/Iterator;
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
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:Lre/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lre/k0<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lle/o0$a;


# direct methods
.method public constructor <init>(Lle/o0$a;)V
    .locals 0

    iput-object p1, p0, Lle/o0$a$a;->c:Lle/o0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lle/o0$a;->b:Lle/o0;

    iget-object p1, p1, Lle/o0;->b:Lwe/d0;

    invoke-interface {p1}, Lwe/d0;->iterator()Lre/k0;

    move-result-object p1

    iput-object p1, p0, Lle/o0$a$a;->b:Lre/k0;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lle/o0$a$a;->b:Lre/k0;

    invoke-interface {v0}, Lre/a;->g()V

    iget-object v0, p0, Lle/o0$a$a;->b:Lre/k0;

    invoke-interface {v0}, Lre/k0;->key()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lle/o0$a$a;->c:Lle/o0$a;

    iget-object v1, v1, Lle/o0$a;->b:Lle/o0;

    iget-object v2, p0, Lle/o0$a$a;->b:Lre/k0;

    invoke-interface {v2}, Lre/k0;->value()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lle/o0;->i(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lle/o0$a$a$a;

    invoke-direct {v2, p0, v1, v0}, Lle/o0$a$a$a;-><init>(Lle/o0$a$a;Ljava/lang/Long;Ljava/lang/Object;)V

    return-object v2
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lle/o0$a$a;->b:Lre/k0;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lle/o0$a$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lle/o0$a$a;->b:Lre/k0;

    invoke-interface {v0}, Lre/V;->remove()V

    return-void
.end method
