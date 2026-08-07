.class public Lqe/a0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/S;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe/a0;->iterator()Lre/S;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lre/S;

.field public final synthetic c:Lqe/a0;


# direct methods
.method public constructor <init>(Lqe/a0;)V
    .locals 0

    iput-object p1, p0, Lqe/a0$a;->c:Lqe/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lqe/a0;->a(Lqe/a0;)Lwe/L;

    move-result-object p1

    invoke-interface {p1}, Lwe/L;->iterator()Lre/S;

    move-result-object p1

    iput-object p1, p0, Lqe/a0$a;->b:Lre/S;

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

    iget-object v0, p0, Lqe/a0$a;->b:Lre/S;

    invoke-interface {v0}, Lre/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lqe/a0$a;->b:Lre/S;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()I
    .locals 1

    iget-object v0, p0, Lqe/a0$a;->b:Lre/S;

    invoke-interface {v0}, Lre/S;->key()I

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

    iget-object v0, p0, Lqe/a0$a;->b:Lre/S;

    invoke-interface {v0}, Lre/S;->value()J

    move-result-wide v0

    return-wide v0
.end method
