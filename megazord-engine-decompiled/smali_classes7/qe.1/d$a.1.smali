.class public Lqe/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe/d;->iterator()Lre/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lre/d;

.field public final synthetic c:Lqe/d;


# direct methods
.method public constructor <init>(Lqe/d;)V
    .locals 0

    iput-object p1, p0, Lqe/d$a;->c:Lqe/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lqe/d;->a(Lqe/d;)Lwe/c;

    move-result-object p1

    invoke-interface {p1}, Lwe/c;->iterator()Lre/d;

    move-result-object p1

    iput-object p1, p0, Lqe/d$a;->b:Lre/d;

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

    iget-object v0, p0, Lqe/d$a;->b:Lre/d;

    invoke-interface {v0}, Lre/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lqe/d$a;->b:Lre/d;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()B
    .locals 1

    iget-object v0, p0, Lqe/d$a;->b:Lre/d;

    invoke-interface {v0}, Lre/d;->key()B

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public value()D
    .locals 2

    iget-object v0, p0, Lqe/d$a;->b:Lre/d;

    invoke-interface {v0}, Lre/d;->value()D

    move-result-wide v0

    return-wide v0
.end method
