.class public Lqe/G$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/B;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe/G;->iterator()Lre/B;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lre/B;

.field public final synthetic c:Lqe/G;


# direct methods
.method public constructor <init>(Lqe/G;)V
    .locals 0

    iput-object p1, p0, Lqe/G$a;->c:Lqe/G;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lqe/G;->b(Lqe/G;)Lwe/x;

    move-result-object p1

    invoke-interface {p1}, Lwe/x;->iterator()Lre/B;

    move-result-object p1

    iput-object p1, p0, Lqe/G$a;->b:Lre/B;

    return-void
.end method


# virtual methods
.method public c(S)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lqe/G$a;->b:Lre/B;

    invoke-interface {v0}, Lre/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lqe/G$a;->b:Lre/B;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()D
    .locals 2

    iget-object v0, p0, Lqe/G$a;->b:Lre/B;

    invoke-interface {v0}, Lre/B;->key()D

    move-result-wide v0

    return-wide v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public value()S
    .locals 1

    iget-object v0, p0, Lqe/G$a;->b:Lre/B;

    invoke-interface {v0}, Lre/B;->value()S

    move-result v0

    return v0
.end method
