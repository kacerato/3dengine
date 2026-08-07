.class public Lqe/h0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/Y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe/h0;->iterator()Lre/Y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lre/Y;

.field public final synthetic c:Lqe/h0;


# direct methods
.method public constructor <init>(Lqe/h0;)V
    .locals 0

    iput-object p1, p0, Lqe/h0$a;->c:Lqe/h0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lqe/h0;->a(Lqe/h0;)Lwe/Q;

    move-result-object p1

    invoke-interface {p1}, Lwe/Q;->iterator()Lre/Y;

    move-result-object p1

    iput-object p1, p0, Lqe/h0$a;->b:Lre/Y;

    return-void
.end method


# virtual methods
.method public f(D)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lqe/h0$a;->b:Lre/Y;

    invoke-interface {v0}, Lre/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lqe/h0$a;->b:Lre/Y;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()J
    .locals 2

    iget-object v0, p0, Lqe/h0$a;->b:Lre/Y;

    invoke-interface {v0}, Lre/Y;->key()J

    move-result-wide v0

    return-wide v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public value()D
    .locals 2

    iget-object v0, p0, Lqe/h0$a;->b:Lre/Y;

    invoke-interface {v0}, Lre/Y;->value()D

    move-result-wide v0

    return-wide v0
.end method
