.class public Lo2/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo2/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lo2/e;


# direct methods
.method public constructor <init>(Lo2/e;)V
    .locals 0

    iput-object p1, p0, Lo2/e$a;->b:Lo2/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 2
    .param p2    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lo2/e$a;->b:Lo2/e;

    invoke-static {p1}, Lo2/e;->a(Lo2/e;)Lo2/e$c;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    iget-object v1, p0, Lo2/e$a;->b:Lo2/e;

    invoke-virtual {v1}, Lo2/e;->getSelectedItemId()I

    move-result v1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lo2/e$a;->b:Lo2/e;

    invoke-static {p1}, Lo2/e;->a(Lo2/e;)Lo2/e$c;

    move-result-object p1

    invoke-interface {p1, p2}, Lo2/e$c;->a(Landroid/view/MenuItem;)V

    return v0

    :cond_0
    iget-object p1, p0, Lo2/e$a;->b:Lo2/e;

    invoke-static {p1}, Lo2/e;->b(Lo2/e;)Lo2/e$d;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo2/e$a;->b:Lo2/e;

    invoke-static {p1}, Lo2/e;->b(Lo2/e;)Lo2/e$d;

    move-result-object p1

    invoke-interface {p1, p2}, Lo2/e$d;->a(Landroid/view/MenuItem;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onMenuModeChange(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0

    return-void
.end method
