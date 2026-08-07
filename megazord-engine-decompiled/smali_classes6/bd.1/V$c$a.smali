.class public Lbd/V$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbd/V$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lbd/V$c;


# direct methods
.method public constructor <init>(Lbd/V$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lbd/V$c$a;->a:Lbd/V$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "hasFocus"
        }
    .end annotation

    iget-object v0, p0, Lbd/V$c$a;->a:Lbd/V$c;

    iget-object v0, v0, Lbd/V$c;->f:Lbd/V;

    invoke-static {v0}, Lbd/V;->f(Lbd/V;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbd/V$c$a;->a:Lbd/V$c;

    iget-object v0, v0, Lbd/V$c;->f:Lbd/V;

    invoke-static {v0}, Lbd/V;->f(Lbd/V;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_0
    iget-object p1, p0, Lbd/V$c$a;->a:Lbd/V$c;

    iget-object p1, p1, Lbd/V$c;->f:Lbd/V;

    invoke-static {p1, p2}, Lbd/V;->g(Lbd/V;Z)Z

    return-void
.end method
