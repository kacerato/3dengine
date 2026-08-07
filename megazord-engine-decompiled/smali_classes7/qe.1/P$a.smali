.class public Lqe/P$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/J;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe/P;->iterator()Lre/J;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lre/J<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public b:Lre/J;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lre/J<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lqe/P;


# direct methods
.method public constructor <init>(Lqe/P;)V
    .locals 0

    iput-object p1, p0, Lqe/P$a;->c:Lqe/P;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lqe/P;->a(Lqe/P;)Lwe/E;

    move-result-object p1

    invoke-interface {p1}, Lwe/E;->iterator()Lre/J;

    move-result-object p1

    iput-object p1, p0, Lqe/P$a;->b:Lre/J;

    return-void
.end method


# virtual methods
.method public g()V
    .locals 1

    iget-object v0, p0, Lqe/P$a;->b:Lre/J;

    invoke-interface {v0}, Lre/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lqe/P$a;->b:Lre/J;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()F
    .locals 1

    iget-object v0, p0, Lqe/P$a;->b:Lre/J;

    invoke-interface {v0}, Lre/J;->key()F

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

    iget-object v0, p0, Lqe/P$a;->b:Lre/J;

    invoke-interface {v0}, Lre/J;->value()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
