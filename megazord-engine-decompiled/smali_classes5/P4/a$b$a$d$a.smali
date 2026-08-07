.class public LP4/a$b$a$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LP4/a$b$a$d;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcn/pedant/SweetAlert/SweetAlertDialog;

.field public final synthetic b:LP4/a$b$a$d;


# direct methods
.method public constructor <init>(LP4/a$b$a$d;Lcn/pedant/SweetAlert/SweetAlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$3",
            "val$dialog"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LP4/a$b$a$d$a;->b:LP4/a$b$a$d;

    iput-object p2, p0, LP4/a$b$a$d$a;->a:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcn/pedant/SweetAlert/SweetAlertDialog;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sweetAlertDialog"
        }
    .end annotation

    iget-object p1, p0, LP4/a$b$a$d$a;->b:LP4/a$b$a$d;

    iget-object p1, p1, LP4/a$b$a$d;->a:LP4/a$b$a;

    iget-object p1, p1, LP4/a$b$a;->b:LP4/a$b;

    iget-object p1, p1, LP4/a$b;->b:LP4/b;

    iget-object p1, p1, LP4/b;->c:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->f()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, LP4/a$b$a$d$a;->b:LP4/a$b$a$d;

    iget-object v0, v0, LP4/a$b$a$d;->a:LP4/a$b$a;

    iget-object v0, v0, LP4/a$b$a;->b:LP4/a$b;

    iget-object v0, v0, LP4/a$b;->b:LP4/b;

    iget-object v0, v0, LP4/b;->b:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, LP4/a$b$a$d$a;->b:LP4/a$b$a$d;

    iget-object p1, p1, LP4/a$b$a$d;->a:LP4/a$b$a;

    iget-object p1, p1, LP4/a$b$a;->b:LP4/a$b;

    iget-object p1, p1, LP4/a$b;->b:LP4/b;

    iget-object p1, p1, LP4/b;->d:Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->A()V

    :cond_0
    iget-object p1, p0, LP4/a$b$a$d$a;->a:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->V2()V

    return-void
.end method
