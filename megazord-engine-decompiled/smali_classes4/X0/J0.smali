.class public final LX0/J0;
.super LX0/r0;
.source "SourceFile"


# instance fields
.field public final synthetic g:LX0/f;


# direct methods
.method public constructor <init>(LX0/f;ILandroid/os/Bundle;)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iput-object p1, p0, LX0/J0;->g:LX0/f;

    invoke-direct {p0, p1, p2, p3}, LX0/r0;-><init>(LX0/f;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final f(LS0/c;)V
    .locals 1

    iget-object v0, p0, LX0/J0;->g:LX0/f;

    invoke-virtual {v0}, LX0/f;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LX0/J0;->g:LX0/f;

    invoke-static {v0}, LX0/f;->q0(LX0/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, LX0/J0;->g:LX0/f;

    const/16 v0, 0x10

    invoke-static {p1, v0}, LX0/f;->m0(LX0/f;I)V

    return-void

    :cond_0
    iget-object v0, p0, LX0/J0;->g:LX0/f;

    iget-object v0, v0, LX0/f;->r:LX0/f$c;

    invoke-interface {v0, p1}, LX0/f$c;->c(LS0/c;)V

    iget-object v0, p0, LX0/J0;->g:LX0/f;

    invoke-virtual {v0, p1}, LX0/f;->U(LS0/c;)V

    return-void
.end method

.method public final g()Z
    .locals 2

    iget-object v0, p0, LX0/J0;->g:LX0/f;

    iget-object v0, v0, LX0/f;->r:LX0/f$c;

    sget-object v1, LS0/c;->E:LS0/c;

    invoke-interface {v0, v1}, LX0/f$c;->c(LS0/c;)V

    const/4 v0, 0x1

    return v0
.end method
