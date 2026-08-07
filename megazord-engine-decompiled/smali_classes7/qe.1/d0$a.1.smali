.class public Lqe/d0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/U;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe/d0;->iterator()Lre/U;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lre/U;

.field public final synthetic c:Lqe/d0;


# direct methods
.method public constructor <init>(Lqe/d0;)V
    .locals 0

    iput-object p1, p0, Lqe/d0$a;->c:Lqe/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lqe/d0;->a(Lqe/d0;)Lwe/N;

    move-result-object p1

    invoke-interface {p1}, Lwe/N;->iterator()Lre/U;

    move-result-object p1

    iput-object p1, p0, Lqe/d0$a;->b:Lre/U;

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

    iget-object v0, p0, Lqe/d0$a;->b:Lre/U;

    invoke-interface {v0}, Lre/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lqe/d0$a;->b:Lre/U;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()I
    .locals 1

    iget-object v0, p0, Lqe/d0$a;->b:Lre/U;

    invoke-interface {v0}, Lre/U;->key()I

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

    iget-object v0, p0, Lqe/d0$a;->b:Lre/U;

    invoke-interface {v0}, Lre/U;->value()S

    move-result v0

    return v0
.end method
