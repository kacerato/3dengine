.class public Lqe/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe/b;->iterator()Lre/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lre/c;

.field public final synthetic c:Lqe/b;


# direct methods
.method public constructor <init>(Lqe/b;)V
    .locals 0

    iput-object p1, p0, Lqe/b$a;->c:Lqe/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lqe/b;->a(Lqe/b;)Lwe/b;

    move-result-object p1

    invoke-interface {p1}, Lwe/b;->iterator()Lre/c;

    move-result-object p1

    iput-object p1, p0, Lqe/b$a;->b:Lre/c;

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

    iget-object v0, p0, Lqe/b$a;->b:Lre/c;

    invoke-interface {v0}, Lre/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lqe/b$a;->b:Lre/c;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()B
    .locals 1

    iget-object v0, p0, Lqe/b$a;->b:Lre/c;

    invoke-interface {v0}, Lre/c;->key()B

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

    iget-object v0, p0, Lqe/b$a;->b:Lre/c;

    invoke-interface {v0}, Lre/c;->value()C

    move-result v0

    return v0
.end method
