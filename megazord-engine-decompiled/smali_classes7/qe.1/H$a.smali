.class public Lqe/H$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/C;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe/H;->iterator()Lre/C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lre/C;

.field public final synthetic c:Lqe/H;


# direct methods
.method public constructor <init>(Lqe/H;)V
    .locals 0

    iput-object p1, p0, Lqe/H$a;->c:Lqe/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lqe/H;->a(Lqe/H;)Lwe/y;

    move-result-object p1

    invoke-interface {p1}, Lwe/y;->iterator()Lre/C;

    move-result-object p1

    iput-object p1, p0, Lqe/H$a;->b:Lre/C;

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

    iget-object v0, p0, Lqe/H$a;->b:Lre/C;

    invoke-interface {v0}, Lre/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lqe/H$a;->b:Lre/C;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()F
    .locals 1

    iget-object v0, p0, Lqe/H$a;->b:Lre/C;

    invoke-interface {v0}, Lre/C;->key()F

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

    iget-object v0, p0, Lqe/H$a;->b:Lre/C;

    invoke-interface {v0}, Lre/C;->value()B

    move-result v0

    return v0
.end method
