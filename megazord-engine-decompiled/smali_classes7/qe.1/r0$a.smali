.class public Lqe/r0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/h0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe/r0;->iterator()Lre/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lre/h0<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public b:Lre/h0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lre/h0<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lqe/r0;


# direct methods
.method public constructor <init>(Lqe/r0;)V
    .locals 0

    iput-object p1, p0, Lqe/r0$a;->c:Lqe/r0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lqe/r0;->a(Lqe/r0;)Lwe/a0;

    move-result-object p1

    invoke-interface {p1}, Lwe/a0;->iterator()Lre/h0;

    move-result-object p1

    iput-object p1, p0, Lqe/r0$a;->b:Lre/h0;

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

    iget-object v0, p0, Lqe/r0$a;->b:Lre/h0;

    invoke-interface {v0}, Lre/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lqe/r0$a;->b:Lre/h0;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lqe/r0$a;->b:Lre/h0;

    invoke-interface {v0}, Lre/h0;->key()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public value()D
    .locals 2

    iget-object v0, p0, Lqe/r0$a;->b:Lre/h0;

    invoke-interface {v0}, Lre/h0;->value()D

    move-result-wide v0

    return-wide v0
.end method
