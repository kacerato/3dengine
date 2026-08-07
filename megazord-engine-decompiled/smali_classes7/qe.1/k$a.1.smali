.class public Lqe/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe/k;->iterator()Lre/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lre/j;

.field public final synthetic c:Lqe/k;


# direct methods
.method public constructor <init>(Lqe/k;)V
    .locals 0

    iput-object p1, p0, Lqe/k$a;->c:Lqe/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lqe/k;->a(Lqe/k;)Lwe/h;

    move-result-object p1

    invoke-interface {p1}, Lwe/h;->iterator()Lre/j;

    move-result-object p1

    iput-object p1, p0, Lqe/k$a;->b:Lre/j;

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

    iget-object v0, p0, Lqe/k$a;->b:Lre/j;

    invoke-interface {v0}, Lre/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lqe/k$a;->b:Lre/j;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()B
    .locals 1

    iget-object v0, p0, Lqe/k$a;->b:Lre/j;

    invoke-interface {v0}, Lre/j;->key()B

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public value()S
    .locals 1

    iget-object v0, p0, Lqe/k$a;->b:Lre/j;

    invoke-interface {v0}, Lre/j;->value()S

    move-result v0

    return v0
.end method
