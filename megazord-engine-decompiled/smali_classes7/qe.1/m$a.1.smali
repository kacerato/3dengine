.class public Lqe/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe/m;->iterator()Lre/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lre/l;

.field public final synthetic c:Lqe/m;


# direct methods
.method public constructor <init>(Lqe/m;)V
    .locals 0

    iput-object p1, p0, Lqe/m$a;->c:Lqe/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lqe/m;->a(Lqe/m;)Lwe/j;

    move-result-object p1

    invoke-interface {p1}, Lwe/j;->iterator()Lre/l;

    move-result-object p1

    iput-object p1, p0, Lqe/m$a;->b:Lre/l;

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

    iget-object v0, p0, Lqe/m$a;->b:Lre/l;

    invoke-interface {v0}, Lre/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lqe/m$a;->b:Lre/l;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()C
    .locals 1

    iget-object v0, p0, Lqe/m$a;->b:Lre/l;

    invoke-interface {v0}, Lre/l;->key()C

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

    iget-object v0, p0, Lqe/m$a;->b:Lre/l;

    invoke-interface {v0}, Lre/l;->value()C

    move-result v0

    return v0
.end method
