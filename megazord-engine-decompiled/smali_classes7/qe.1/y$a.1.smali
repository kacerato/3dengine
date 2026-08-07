.class public Lqe/y$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe/y;->iterator()Lre/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lre/y;

.field public final synthetic c:Lqe/y;


# direct methods
.method public constructor <init>(Lqe/y;)V
    .locals 0

    iput-object p1, p0, Lqe/y$a;->c:Lqe/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lqe/y;->b:Lke/e;

    invoke-interface {p1}, Lke/e;->iterator()Lre/y;

    move-result-object p1

    iput-object p1, p0, Lqe/y$a;->b:Lre/y;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lqe/y$a;->b:Lre/y;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()D
    .locals 2

    iget-object v0, p0, Lqe/y$a;->b:Lre/y;

    invoke-interface {v0}, Lre/y;->next()D

    move-result-wide v0

    return-wide v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
