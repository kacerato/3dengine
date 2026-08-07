.class public Lqe/M$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/G;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe/M;->iterator()Lre/G;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lre/G;

.field public final synthetic c:Lqe/M;


# direct methods
.method public constructor <init>(Lqe/M;)V
    .locals 0

    iput-object p1, p0, Lqe/M$a;->c:Lqe/M;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lqe/M;->a(Lqe/M;)Lwe/C;

    move-result-object p1

    invoke-interface {p1}, Lwe/C;->iterator()Lre/G;

    move-result-object p1

    iput-object p1, p0, Lqe/M$a;->b:Lre/G;

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

    iget-object v0, p0, Lqe/M$a;->b:Lre/G;

    invoke-interface {v0}, Lre/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lqe/M$a;->b:Lre/G;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()F
    .locals 1

    iget-object v0, p0, Lqe/M$a;->b:Lre/G;

    invoke-interface {v0}, Lre/G;->key()F

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

    iget-object v0, p0, Lqe/M$a;->b:Lre/G;

    invoke-interface {v0}, Lre/G;->value()I

    move-result v0

    return v0
.end method
