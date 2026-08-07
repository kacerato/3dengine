.class public Lqe/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe/h;->iterator()Lre/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lre/h;

.field public final synthetic c:Lqe/h;


# direct methods
.method public constructor <init>(Lqe/h;)V
    .locals 0

    iput-object p1, p0, Lqe/h$a;->c:Lqe/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lqe/h;->a(Lqe/h;)Lwe/f;

    move-result-object p1

    invoke-interface {p1}, Lwe/f;->iterator()Lre/h;

    move-result-object p1

    iput-object p1, p0, Lqe/h$a;->b:Lre/h;

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

    iget-object v0, p0, Lqe/h$a;->b:Lre/h;

    invoke-interface {v0}, Lre/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lqe/h$a;->b:Lre/h;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()B
    .locals 1

    iget-object v0, p0, Lqe/h$a;->b:Lre/h;

    invoke-interface {v0}, Lre/h;->key()B

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

    iget-object v0, p0, Lqe/h$a;->b:Lre/h;

    invoke-interface {v0}, Lre/h;->value()J

    move-result-wide v0

    return-wide v0
.end method
