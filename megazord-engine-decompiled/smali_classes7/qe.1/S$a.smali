.class public Lqe/S$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/K;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe/S;->iterator()Lre/K;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lre/K;

.field public final synthetic c:Lqe/S;


# direct methods
.method public constructor <init>(Lqe/S;)V
    .locals 0

    iput-object p1, p0, Lqe/S$a;->c:Lqe/S;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lqe/S;->a(Lqe/S;)Lwe/F;

    move-result-object p1

    invoke-interface {p1}, Lwe/F;->iterator()Lre/K;

    move-result-object p1

    iput-object p1, p0, Lqe/S$a;->b:Lre/K;

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

    iget-object v0, p0, Lqe/S$a;->b:Lre/K;

    invoke-interface {v0}, Lre/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lqe/S$a;->b:Lre/K;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()F
    .locals 1

    iget-object v0, p0, Lqe/S$a;->b:Lre/K;

    invoke-interface {v0}, Lre/K;->key()F

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

    iget-object v0, p0, Lqe/S$a;->b:Lre/K;

    invoke-interface {v0}, Lre/K;->value()S

    move-result v0

    return v0
.end method
