.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road$m$a$a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road$m$a$a;->c(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road$r$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road$m$a$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road$m$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$3"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road$m$a$a$d;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road$m$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road$m$a$a$d;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road$m$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road$m$a$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road$m$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road$m$a;->b:Lcn/pedant/SweetAlert/SweetAlertDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->changeAlertType(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road$m$a$a$d;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road$m$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road$m$a$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road$m$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road$m$a;->b:Lcn/pedant/SweetAlert/SweetAlertDialog;

    const-string v2, "Ops!"

    invoke-virtual {v0, v2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road$m$a$a$d;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road$m$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road$m$a$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road$m$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road$m$a;->b:Lcn/pedant/SweetAlert/SweetAlertDialog;

    const-string v2, "Terrain not found on object or its parents."

    invoke-virtual {v0, v2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road$m$a$a$d;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road$m$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road$m$a$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road$m$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road$m$a;->b:Lcn/pedant/SweetAlert/SweetAlertDialog;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road$m$a$a$d$a;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road$m$a$a$d$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road$m$a$a$d;)V

    const-string v3, "Ok"

    invoke-virtual {v0, v3, v2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmButton(Ljava/lang/String;Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road$m$a$a$d;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road$m$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road$m$a$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road$m$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road$m$a;->b:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method
