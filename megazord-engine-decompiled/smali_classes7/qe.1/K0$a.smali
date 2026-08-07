.class public Lqe/K0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/t0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe/K0;->iterator()Lre/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lre/t0;

.field public final synthetic c:Lqe/K0;


# direct methods
.method public constructor <init>(Lqe/K0;)V
    .locals 0

    iput-object p1, p0, Lqe/K0$a;->c:Lqe/K0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lqe/K0;->a(Lqe/K0;)Lwe/k0;

    move-result-object p1

    invoke-interface {p1}, Lwe/k0;->iterator()Lre/t0;

    move-result-object p1

    iput-object p1, p0, Lqe/K0$a;->b:Lre/t0;

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

    iget-object v0, p0, Lqe/K0$a;->b:Lre/t0;

    invoke-interface {v0}, Lre/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lqe/K0$a;->b:Lre/t0;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()S
    .locals 1

    iget-object v0, p0, Lqe/K0$a;->b:Lre/t0;

    invoke-interface {v0}, Lre/t0;->key()S

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public value()J
    .locals 2

    iget-object v0, p0, Lqe/K0$a;->b:Lre/t0;

    invoke-interface {v0}, Lre/t0;->value()J

    move-result-wide v0

    return-wide v0
.end method
