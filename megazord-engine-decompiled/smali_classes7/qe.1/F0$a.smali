.class public Lqe/F0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/s0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe/F0;->iterator()Lre/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lre/s0;

.field public final synthetic c:Lqe/F0;


# direct methods
.method public constructor <init>(Lqe/F0;)V
    .locals 0

    iput-object p1, p0, Lqe/F0$a;->c:Lqe/F0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lqe/F0;->b:Lke/i;

    invoke-interface {p1}, Lke/i;->iterator()Lre/s0;

    move-result-object p1

    iput-object p1, p0, Lqe/F0$a;->b:Lre/s0;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lqe/F0$a;->b:Lre/s0;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()S
    .locals 1

    iget-object v0, p0, Lqe/F0$a;->b:Lre/s0;

    invoke-interface {v0}, Lre/s0;->next()S

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
