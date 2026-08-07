.class public LO6/b$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LO6/b;->D1(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcn/pedant/SweetAlert/SweetAlertDialog;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:LO6/b;


# direct methods
.method public constructor <init>(LO6/b;Lcn/pedant/SweetAlert/SweetAlertDialog;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$dialog",
            "val$projectName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LO6/b$p;->c:LO6/b;

    iput-object p2, p0, LO6/b$p;->a:Lcn/pedant/SweetAlert/SweetAlertDialog;

    iput-object p3, p0, LO6/b$p;->b:Ljava/lang/String;

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

    invoke-static {}, Lf8/c;->Y()V

    iget-object p1, p0, LO6/b$p;->a:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    iget-object p1, p0, LO6/b$p;->c:LO6/b;

    iget-object v0, p0, LO6/b$p;->b:Ljava/lang/String;

    invoke-static {p1, v0}, LO6/b;->x1(LO6/b;Ljava/lang/String;)V

    return-void
.end method
