.class public Lqe/f0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/X;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe/f0;->iterator()Lre/X;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lre/X;

.field public final synthetic c:Lqe/f0;


# direct methods
.method public constructor <init>(Lqe/f0;)V
    .locals 0

    iput-object p1, p0, Lqe/f0$a;->c:Lqe/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lqe/f0;->a(Lqe/f0;)Lwe/P;

    move-result-object p1

    invoke-interface {p1}, Lwe/P;->iterator()Lre/X;

    move-result-object p1

    iput-object p1, p0, Lqe/f0$a;->b:Lre/X;

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

    iget-object v0, p0, Lqe/f0$a;->b:Lre/X;

    invoke-interface {v0}, Lre/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lqe/f0$a;->b:Lre/X;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()J
    .locals 2

    iget-object v0, p0, Lqe/f0$a;->b:Lre/X;

    invoke-interface {v0}, Lre/X;->key()J

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

    iget-object v0, p0, Lqe/f0$a;->b:Lre/X;

    invoke-interface {v0}, Lre/X;->value()C

    move-result v0

    return v0
.end method
