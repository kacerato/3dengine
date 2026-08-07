.class public Lqe/V$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/Q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe/V;->iterator()Lre/Q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lre/Q;

.field public final synthetic c:Lqe/V;


# direct methods
.method public constructor <init>(Lqe/V;)V
    .locals 0

    iput-object p1, p0, Lqe/V$a;->c:Lqe/V;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lqe/V;->b:Lke/g;

    invoke-interface {p1}, Lke/g;->iterator()Lre/Q;

    move-result-object p1

    iput-object p1, p0, Lqe/V$a;->b:Lre/Q;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lqe/V$a;->b:Lre/Q;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()I
    .locals 1

    iget-object v0, p0, Lqe/V$a;->b:Lre/Q;

    invoke-interface {v0}, Lre/Q;->next()I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
