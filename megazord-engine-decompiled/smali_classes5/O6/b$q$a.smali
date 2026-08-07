.class public LO6/b$q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt8/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LO6/b$q;->onClick(Lcn/pedant/SweetAlert/SweetAlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LO6/b$q;


# direct methods
.method public constructor <init>(LO6/b$q;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LO6/b$q$a;->a:LO6/b$q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "act"
        }
    .end annotation

    iget-object p1, p0, LO6/b$q$a;->a:LO6/b$q;

    iget-object v0, p1, LO6/b$q;->c:LO6/b;

    iget-object p1, p1, LO6/b$q;->b:Ljava/lang/String;

    invoke-static {v0, p1}, LO6/b;->x1(LO6/b;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "act"
        }
    .end annotation

    return-void
.end method
