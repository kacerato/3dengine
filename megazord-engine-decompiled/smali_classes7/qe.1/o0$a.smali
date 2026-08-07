.class public Lqe/o0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/e0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe/o0;->iterator()Lre/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lre/e0;

.field public final synthetic c:Lqe/o0;


# direct methods
.method public constructor <init>(Lqe/o0;)V
    .locals 0

    iput-object p1, p0, Lqe/o0$a;->c:Lqe/o0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lqe/o0;->a(Lqe/o0;)Lwe/W;

    move-result-object p1

    invoke-interface {p1}, Lwe/W;->iterator()Lre/e0;

    move-result-object p1

    iput-object p1, p0, Lqe/o0$a;->b:Lre/e0;

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

    iget-object v0, p0, Lqe/o0$a;->b:Lre/e0;

    invoke-interface {v0}, Lre/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lqe/o0$a;->b:Lre/e0;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()J
    .locals 2

    iget-object v0, p0, Lqe/o0$a;->b:Lre/e0;

    invoke-interface {v0}, Lre/e0;->key()J

    move-result-wide v0

    return-wide v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public value()S
    .locals 1

    iget-object v0, p0, Lqe/o0$a;->b:Lre/e0;

    invoke-interface {v0}, Lre/e0;->value()S

    move-result v0

    return v0
.end method
