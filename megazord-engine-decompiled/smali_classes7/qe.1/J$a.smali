.class public Lqe/J$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/H;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe/J;->iterator()Lre/H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lre/H;

.field public final synthetic c:Lqe/J;


# direct methods
.method public constructor <init>(Lqe/J;)V
    .locals 0

    iput-object p1, p0, Lqe/J$a;->c:Lqe/J;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lqe/J;->b:Lke/f;

    invoke-interface {p1}, Lke/f;->iterator()Lre/H;

    move-result-object p1

    iput-object p1, p0, Lqe/J$a;->b:Lre/H;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lqe/J$a;->b:Lre/H;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()F
    .locals 1

    iget-object v0, p0, Lqe/J$a;->b:Lre/H;

    invoke-interface {v0}, Lre/H;->next()F

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
