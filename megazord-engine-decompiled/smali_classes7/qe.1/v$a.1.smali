.class public Lqe/v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe/v;->iterator()Lre/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lre/s;

.field public final synthetic c:Lqe/v;


# direct methods
.method public constructor <init>(Lqe/v;)V
    .locals 0

    iput-object p1, p0, Lqe/v$a;->c:Lqe/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lqe/v;->a(Lqe/v;)Lwe/p;

    move-result-object p1

    invoke-interface {p1}, Lwe/p;->iterator()Lre/s;

    move-result-object p1

    iput-object p1, p0, Lqe/v$a;->b:Lre/s;

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

    iget-object v0, p0, Lqe/v$a;->b:Lre/s;

    invoke-interface {v0}, Lre/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lqe/v$a;->b:Lre/s;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()C
    .locals 1

    iget-object v0, p0, Lqe/v$a;->b:Lre/s;

    invoke-interface {v0}, Lre/s;->key()C

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

    iget-object v0, p0, Lqe/v$a;->b:Lre/s;

    invoke-interface {v0}, Lre/s;->value()S

    move-result v0

    return v0
.end method
