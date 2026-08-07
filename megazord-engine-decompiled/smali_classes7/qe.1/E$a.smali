.class public Lqe/E$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/A;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe/E;->iterator()Lre/A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lre/A<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public b:Lre/A;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lre/A<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lqe/E;


# direct methods
.method public constructor <init>(Lqe/E;)V
    .locals 0

    iput-object p1, p0, Lqe/E$a;->c:Lqe/E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lqe/E;->b(Lqe/E;)Lwe/w;

    move-result-object p1

    invoke-interface {p1}, Lwe/w;->iterator()Lre/A;

    move-result-object p1

    iput-object p1, p0, Lqe/E$a;->b:Lre/A;

    return-void
.end method


# virtual methods
.method public g()V
    .locals 1

    iget-object v0, p0, Lqe/E$a;->b:Lre/A;

    invoke-interface {v0}, Lre/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lqe/E$a;->b:Lre/A;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()D
    .locals 2

    iget-object v0, p0, Lqe/E$a;->b:Lre/A;

    invoke-interface {v0}, Lre/A;->key()D

    move-result-wide v0

    return-wide v0
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

    iget-object v0, p0, Lqe/E$a;->b:Lre/A;

    invoke-interface {v0}, Lre/A;->value()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
