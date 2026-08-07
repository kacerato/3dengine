.class public LO5/e$n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LO5/e$n;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcn/pedant/SweetAlert/SweetAlertDialog;

.field public final synthetic c:LO5/e$n;


# direct methods
.method public constructor <init>(LO5/e$n;Lcn/pedant/SweetAlert/SweetAlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$dialog"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LO5/e$n$a;->c:LO5/e$n;

    iput-object p2, p0, LO5/e$n$a;->b:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LO5/e$n$a;->c:LO5/e$n;

    iget-object v0, v0, LO5/e$n;->b:LO5/e;

    invoke-static {v0}, LO5/e;->u1(LO5/e;)V

    iget-object v0, p0, LO5/e$n$a;->c:LO5/e$n;

    iget-object v0, v0, LO5/e$n;->b:LO5/e;

    invoke-static {v0}, LO5/e;->v1(LO5/e;)LO5/e$w;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, LO5/e$w;->a(Ljava/util/List;)V

    new-instance v0, LO5/e$n$a$a;

    invoke-direct {v0, p0}, LO5/e$n$a$a;-><init>(LO5/e$n$a;)V

    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
