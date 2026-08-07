.class public Lqe/U$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/M;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe/U;->iterator()Lre/M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lre/M;

.field public final synthetic c:Lqe/U;


# direct methods
.method public constructor <init>(Lqe/U;)V
    .locals 0

    iput-object p1, p0, Lqe/U$a;->c:Lqe/U;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lqe/U;->a(Lqe/U;)Lwe/H;

    move-result-object p1

    invoke-interface {p1}, Lwe/H;->iterator()Lre/M;

    move-result-object p1

    iput-object p1, p0, Lqe/U$a;->b:Lre/M;

    return-void
.end method


# virtual methods
.method public a(C)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lqe/U$a;->b:Lre/M;

    invoke-interface {v0}, Lre/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lqe/U$a;->b:Lre/M;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()I
    .locals 1

    iget-object v0, p0, Lqe/U$a;->b:Lre/M;

    invoke-interface {v0}, Lre/M;->key()I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public value()C
    .locals 1

    iget-object v0, p0, Lqe/U$a;->b:Lre/M;

    invoke-interface {v0}, Lre/M;->value()C

    move-result v0

    return v0
.end method
