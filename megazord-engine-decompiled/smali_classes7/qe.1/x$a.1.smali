.class public Lqe/x$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe/x;->iterator()Lre/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lre/u;

.field public final synthetic c:Lqe/x;


# direct methods
.method public constructor <init>(Lqe/x;)V
    .locals 0

    iput-object p1, p0, Lqe/x$a;->c:Lqe/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lqe/x;->b(Lqe/x;)Lwe/r;

    move-result-object p1

    invoke-interface {p1}, Lwe/r;->iterator()Lre/u;

    move-result-object p1

    iput-object p1, p0, Lqe/x$a;->b:Lre/u;

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

    iget-object v0, p0, Lqe/x$a;->b:Lre/u;

    invoke-interface {v0}, Lre/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lqe/x$a;->b:Lre/u;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()D
    .locals 2

    iget-object v0, p0, Lqe/x$a;->b:Lre/u;

    invoke-interface {v0}, Lre/u;->key()D

    move-result-wide v0

    return-wide v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public value()C
    .locals 1

    iget-object v0, p0, Lqe/x$a;->b:Lre/u;

    invoke-interface {v0}, Lre/u;->value()C

    move-result v0

    return v0
.end method
