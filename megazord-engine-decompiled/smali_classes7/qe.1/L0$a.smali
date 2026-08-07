.class public Lqe/L0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/u0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe/L0;->iterator()Lre/u0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lre/u0<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public b:Lre/u0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lre/u0<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lqe/L0;


# direct methods
.method public constructor <init>(Lqe/L0;)V
    .locals 0

    iput-object p1, p0, Lqe/L0$a;->c:Lqe/L0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lqe/L0;->a(Lqe/L0;)Lwe/l0;

    move-result-object p1

    invoke-interface {p1}, Lwe/l0;->iterator()Lre/u0;

    move-result-object p1

    iput-object p1, p0, Lqe/L0$a;->b:Lre/u0;

    return-void
.end method


# virtual methods
.method public g()V
    .locals 1

    iget-object v0, p0, Lqe/L0$a;->b:Lre/u0;

    invoke-interface {v0}, Lre/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lqe/L0$a;->b:Lre/u0;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()S
    .locals 1

    iget-object v0, p0, Lqe/L0$a;->b:Lre/u0;

    invoke-interface {v0}, Lre/u0;->key()S

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public value()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lqe/L0$a;->b:Lre/u0;

    invoke-interface {v0}, Lre/u0;->value()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
