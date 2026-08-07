.class public Lqe/I0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe/I0;->iterator()Lre/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lre/r0;

.field public final synthetic c:Lqe/I0;


# direct methods
.method public constructor <init>(Lqe/I0;)V
    .locals 0

    iput-object p1, p0, Lqe/I0$a;->c:Lqe/I0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lqe/I0;->a(Lqe/I0;)Lwe/j0;

    move-result-object p1

    invoke-interface {p1}, Lwe/j0;->iterator()Lre/r0;

    move-result-object p1

    iput-object p1, p0, Lqe/I0$a;->b:Lre/r0;

    return-void
.end method


# virtual methods
.method public e(I)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lqe/I0$a;->b:Lre/r0;

    invoke-interface {v0}, Lre/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lqe/I0$a;->b:Lre/r0;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()S
    .locals 1

    iget-object v0, p0, Lqe/I0$a;->b:Lre/r0;

    invoke-interface {v0}, Lre/r0;->key()S

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public value()I
    .locals 1

    iget-object v0, p0, Lqe/I0$a;->b:Lre/r0;

    invoke-interface {v0}, Lre/r0;->value()I

    move-result v0

    return v0
.end method
