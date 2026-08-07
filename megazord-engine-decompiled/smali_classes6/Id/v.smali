.class public final LId/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LId/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LId/v$b;
    }
.end annotation


# instance fields
.field public final b:LId/v$b;


# direct methods
.method public constructor <init>(LId/y;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LId/y<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LId/v$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LId/v$b;-><init>(LId/y;LId/v$a;)V

    iput-object v0, p0, LId/v;->b:LId/v$b;

    return-void
.end method


# virtual methods
.method public j()V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 0

    return-void
.end method

.method public t()LId/z;
    .locals 1

    iget-object v0, p0, LId/v;->b:LId/v$b;

    return-object v0
.end method
