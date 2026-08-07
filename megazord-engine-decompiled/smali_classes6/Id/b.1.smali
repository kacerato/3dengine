.class public final LId/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LId/i;
.implements LId/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LId/i<",
        "TT;>;",
        "LId/t;"
    }
.end annotation


# instance fields
.field public final a:[LId/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "LId/i<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([LId/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "LId/i<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LId/b;->a:[LId/i;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;JZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, LId/b;->a:[LId/i;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2, p3, p4}, LId/i;->b(Ljava/lang/Object;JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()V
    .locals 5

    iget-object v0, p0, LId/b;->a:[LId/i;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    instance-of v4, v3, LId/t;

    if-eqz v4, :cond_0

    check-cast v3, LId/t;

    invoke-interface {v3}, LId/t;->c()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 5

    iget-object v0, p0, LId/b;->a:[LId/i;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    instance-of v4, v3, LId/t;

    if-eqz v4, :cond_0

    check-cast v3, LId/t;

    invoke-interface {v3}, LId/t;->onStart()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
