.class public Lqe/s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe/s;->iterator()Lre/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lre/q;

.field public final synthetic c:Lqe/s;


# direct methods
.method public constructor <init>(Lqe/s;)V
    .locals 0

    iput-object p1, p0, Lqe/s$a;->c:Lqe/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lqe/s;->a(Lqe/s;)Lwe/n;

    move-result-object p1

    invoke-interface {p1}, Lwe/n;->iterator()Lre/q;

    move-result-object p1

    iput-object p1, p0, Lqe/s$a;->b:Lre/q;

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

    iget-object v0, p0, Lqe/s$a;->b:Lre/q;

    invoke-interface {v0}, Lre/a;->g()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lqe/s$a;->b:Lre/q;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public key()C
    .locals 1

    iget-object v0, p0, Lqe/s$a;->b:Lre/q;

    invoke-interface {v0}, Lre/q;->key()C

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

    iget-object v0, p0, Lqe/s$a;->b:Lre/q;

    invoke-interface {v0}, Lre/q;->value()J

    move-result-wide v0

    return-wide v0
.end method
