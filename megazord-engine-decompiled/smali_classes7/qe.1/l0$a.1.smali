.class public Lqe/l0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe/l0;->iterator()Lre/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lre/c0;

.field public final synthetic c:Lqe/l0;


# direct methods
.method public constructor <init>(Lqe/l0;)V
    .locals 0

    iput-object p1, p0, Lqe/l0$a;->c:Lqe/l0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lqe/l0;->a(Lqe/l0;)Lwe/U;

    move-result-object p1

    invoke-interface {p1}, Lwe/U;->iterator()Lre/c0;

    move-result-object p1

    iput-object p1, p0, Lqe/l0$a;->b:Lre/c0;

    return-void
.end method


# virtual methods
.method public d(J)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lqe/l0$a;->b:Lre/c0;

    invoke-interface {v0}, Lre/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lqe/l0$a;->b:Lre/c0;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()J
    .locals 2

    iget-object v0, p0, Lqe/l0$a;->b:Lre/c0;

    invoke-interface {v0}, Lre/c0;->key()J

    move-result-wide v0

    return-wide v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public value()J
    .locals 2

    iget-object v0, p0, Lqe/l0$a;->b:Lre/c0;

    invoke-interface {v0}, Lre/c0;->value()J

    move-result-wide v0

    return-wide v0
.end method
