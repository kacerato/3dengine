.class public LX7/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX7/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LX7/l;->i(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LX7/g<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:LX7/l;


# direct methods
.method public constructor <init>(LX7/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LX7/l$a;->a:LX7/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(LX7/i;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "element",
            "v"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, LX7/l$a;->a:LX7/l;

    invoke-static {v0}, LX7/l;->c(LX7/l;)LX7/k;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LX7/k;->b(LX7/i;Landroid/view/View;)V

    return-void
.end method

.method public c(LX7/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p1, LX7/i;->f:LX7/h;

    iget-boolean v0, v0, LX7/h;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LX7/l$a;->a:LX7/l;

    invoke-static {v0, p1}, LX7/l;->a(LX7/l;LX7/i;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LX7/l$a;->a:LX7/l;

    invoke-static {v0, p1}, LX7/l;->b(LX7/l;LX7/i;)V

    :goto_0
    return-void
.end method

.method public d(LX7/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LX7/l$a;->a:LX7/l;

    invoke-virtual {v0, p1}, LX7/l;->D(LX7/i;)V

    return-void
.end method
