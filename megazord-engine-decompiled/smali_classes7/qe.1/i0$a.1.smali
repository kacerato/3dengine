.class public Lqe/i0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/Z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe/i0;->iterator()Lre/Z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lre/Z;

.field public final synthetic c:Lqe/i0;


# direct methods
.method public constructor <init>(Lqe/i0;)V
    .locals 0

    iput-object p1, p0, Lqe/i0$a;->c:Lqe/i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lqe/i0;->a(Lqe/i0;)Lwe/S;

    move-result-object p1

    invoke-interface {p1}, Lwe/S;->iterator()Lre/Z;

    move-result-object p1

    iput-object p1, p0, Lqe/i0$a;->b:Lre/Z;

    return-void
.end method


# virtual methods
.method public g()V
    .locals 1

    iget-object v0, p0, Lqe/i0$a;->b:Lre/Z;

    invoke-interface {v0}, Lre/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lqe/i0$a;->b:Lre/Z;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()J
    .locals 2

    iget-object v0, p0, Lqe/i0$a;->b:Lre/Z;

    invoke-interface {v0}, Lre/Z;->key()J

    move-result-wide v0

    return-wide v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setValue(F)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public value()F
    .locals 1

    iget-object v0, p0, Lqe/i0$a;->b:Lre/Z;

    invoke-interface {v0}, Lre/Z;->value()F

    move-result v0

    return v0
.end method
