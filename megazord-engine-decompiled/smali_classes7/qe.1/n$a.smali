.class public Lqe/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe/n;->iterator()Lre/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lre/p;

.field public final synthetic c:Lqe/n;


# direct methods
.method public constructor <init>(Lqe/n;)V
    .locals 0

    iput-object p1, p0, Lqe/n$a;->c:Lqe/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lqe/n;->b:Lke/b;

    invoke-interface {p1}, Lke/b;->iterator()Lre/p;

    move-result-object p1

    iput-object p1, p0, Lqe/n$a;->b:Lre/p;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lqe/n$a;->b:Lre/p;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()C
    .locals 1

    iget-object v0, p0, Lqe/n$a;->b:Lre/p;

    invoke-interface {v0}, Lre/p;->next()C

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
