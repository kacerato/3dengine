.class public final LX0/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX0/f$a;


# instance fields
.field public final synthetic c:LU0/d;


# direct methods
.method public constructor <init>(LU0/d;)V
    .locals 0

    iput-object p1, p0, LX0/Y;->c:LU0/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, LX0/Y;->c:LU0/d;

    invoke-interface {v0, p1}, LU0/d;->g(Landroid/os/Bundle;)V

    return-void
.end method

.method public final i(I)V
    .locals 1

    iget-object v0, p0, LX0/Y;->c:LU0/d;

    invoke-interface {v0, p1}, LU0/d;->i(I)V

    return-void
.end method
