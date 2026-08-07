.class public Lqe/t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe/t;->iterator()Lre/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lre/r<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public b:Lre/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lre/r<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lqe/t;


# direct methods
.method public constructor <init>(Lqe/t;)V
    .locals 0

    iput-object p1, p0, Lqe/t$a;->c:Lqe/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lqe/t;->a(Lqe/t;)Lwe/o;

    move-result-object p1

    invoke-interface {p1}, Lwe/o;->iterator()Lre/r;

    move-result-object p1

    iput-object p1, p0, Lqe/t$a;->b:Lre/r;

    return-void
.end method


# virtual methods
.method public g()V
    .locals 1

    iget-object v0, p0, Lqe/t$a;->b:Lre/r;

    invoke-interface {v0}, Lre/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lqe/t$a;->b:Lre/r;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()C
    .locals 1

    iget-object v0, p0, Lqe/t$a;->b:Lre/r;

    invoke-interface {v0}, Lre/r;->key()C

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

    iget-object v0, p0, Lqe/t$a;->b:Lre/r;

    invoke-interface {v0}, Lre/r;->value()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
