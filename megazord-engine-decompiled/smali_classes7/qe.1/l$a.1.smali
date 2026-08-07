.class public Lqe/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe/l;->iterator()Lre/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lre/k;

.field public final synthetic c:Lqe/l;


# direct methods
.method public constructor <init>(Lqe/l;)V
    .locals 0

    iput-object p1, p0, Lqe/l$a;->c:Lqe/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lqe/l;->a(Lqe/l;)Lwe/i;

    move-result-object p1

    invoke-interface {p1}, Lwe/i;->iterator()Lre/k;

    move-result-object p1

    iput-object p1, p0, Lqe/l$a;->b:Lre/k;

    return-void
.end method


# virtual methods
.method public b(B)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lqe/l$a;->b:Lre/k;

    invoke-interface {v0}, Lre/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lqe/l$a;->b:Lre/k;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()C
    .locals 1

    iget-object v0, p0, Lqe/l$a;->b:Lre/k;

    invoke-interface {v0}, Lre/k;->key()C

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public value()B
    .locals 1

    iget-object v0, p0, Lqe/l$a;->b:Lre/k;

    invoke-interface {v0}, Lre/k;->value()B

    move-result v0

    return v0
.end method
