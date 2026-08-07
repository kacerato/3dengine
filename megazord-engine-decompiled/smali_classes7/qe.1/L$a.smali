.class public Lqe/L$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/F;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe/L;->iterator()Lre/F;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lre/F;

.field public final synthetic c:Lqe/L;


# direct methods
.method public constructor <init>(Lqe/L;)V
    .locals 0

    iput-object p1, p0, Lqe/L$a;->c:Lqe/L;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lqe/L;->a(Lqe/L;)Lwe/B;

    move-result-object p1

    invoke-interface {p1}, Lwe/B;->iterator()Lre/F;

    move-result-object p1

    iput-object p1, p0, Lqe/L$a;->b:Lre/F;

    return-void
.end method


# virtual methods
.method public g()V
    .locals 1

    iget-object v0, p0, Lqe/L$a;->b:Lre/F;

    invoke-interface {v0}, Lre/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lqe/L$a;->b:Lre/F;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()F
    .locals 1

    iget-object v0, p0, Lqe/L$a;->b:Lre/F;

    invoke-interface {v0}, Lre/F;->key()F

    move-result v0

    return v0
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

    iget-object v0, p0, Lqe/L$a;->b:Lre/F;

    invoke-interface {v0}, Lre/F;->value()F

    move-result v0

    return v0
.end method
