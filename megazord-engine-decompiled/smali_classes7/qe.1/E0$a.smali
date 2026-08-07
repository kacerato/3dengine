.class public Lqe/E0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/o0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe/E0;->iterator()Lre/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lre/o0;

.field public final synthetic c:Lqe/E0;


# direct methods
.method public constructor <init>(Lqe/E0;)V
    .locals 0

    iput-object p1, p0, Lqe/E0$a;->c:Lqe/E0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lqe/E0;->a(Lqe/E0;)Lwe/g0;

    move-result-object p1

    invoke-interface {p1}, Lwe/g0;->iterator()Lre/o0;

    move-result-object p1

    iput-object p1, p0, Lqe/E0$a;->b:Lre/o0;

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

    iget-object v0, p0, Lqe/E0$a;->b:Lre/o0;

    invoke-interface {v0}, Lre/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lqe/E0$a;->b:Lre/o0;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()S
    .locals 1

    iget-object v0, p0, Lqe/E0$a;->b:Lre/o0;

    invoke-interface {v0}, Lre/o0;->key()S

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

    iget-object v0, p0, Lqe/E0$a;->b:Lre/o0;

    invoke-interface {v0}, Lre/o0;->value()C

    move-result v0

    return v0
.end method
