.class public Lqe/s0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/i0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe/s0;->iterator()Lre/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lre/i0<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public b:Lre/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lre/i0<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lqe/s0;


# direct methods
.method public constructor <init>(Lqe/s0;)V
    .locals 0

    iput-object p1, p0, Lqe/s0$a;->c:Lqe/s0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lqe/s0;->a(Lqe/s0;)Lwe/b0;

    move-result-object p1

    invoke-interface {p1}, Lwe/b0;->iterator()Lre/i0;

    move-result-object p1

    iput-object p1, p0, Lqe/s0$a;->b:Lre/i0;

    return-void
.end method


# virtual methods
.method public g()V
    .locals 1

    iget-object v0, p0, Lqe/s0$a;->b:Lre/i0;

    invoke-interface {v0}, Lre/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lqe/s0$a;->b:Lre/i0;

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

    iget-object v0, p0, Lqe/s0$a;->b:Lre/i0;

    invoke-interface {v0}, Lre/i0;->key()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setValue(F)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public value()F
    .locals 1

    iget-object v0, p0, Lqe/s0$a;->b:Lre/i0;

    invoke-interface {v0}, Lre/i0;->value()F

    move-result v0

    return v0
.end method
