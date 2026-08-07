.class public Lo2/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo2/c;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lo2/c;


# direct methods
.method public constructor <init>(Lo2/c;)V
    .locals 0

    iput-object p1, p0, Lo2/c$a;->b:Lo2/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    check-cast p1, Lo2/a;

    invoke-virtual {p1}, Lo2/a;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object p1

    iget-object v0, p0, Lo2/c$a;->b:Lo2/c;

    invoke-static {v0}, Lo2/c;->b(Lo2/c;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    iget-object v1, p0, Lo2/c$a;->b:Lo2/c;

    invoke-static {v1}, Lo2/c;->a(Lo2/c;)Lo2/d;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method
