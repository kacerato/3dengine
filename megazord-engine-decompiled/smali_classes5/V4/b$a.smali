.class public LV4/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY7/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LV4/b;-><init>(LV4/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LV4/b;


# direct methods
.method public constructor <init>(LV4/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LV4/b$a;->a:LV4/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LV4/b$a;->a:LV4/b;

    invoke-virtual {v0}, LV4/b;->u()LV4/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-boolean p1, v0, LV4/a;->a:Z

    iget-object p1, p0, LV4/b$a;->a:LV4/b;

    iget-object v0, p1, LX7/i;->l:LX7/m;

    if-eqz v0, :cond_0

    iget-object v0, p1, LX7/i;->j:LX7/c;

    if-eqz v0, :cond_0

    iget-object v1, p1, LX7/i;->k:LX7/b;

    invoke-interface {v1}, LX7/b;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, LV4/b;->o:LX7/e;

    invoke-interface {v0, p1, v1, v2}, LX7/c;->a(LX7/i;Landroid/content/Context;LX7/e;)V

    iget-object p1, p0, LV4/b$a;->a:LV4/b;

    iget-object p1, p1, LX7/i;->l:LX7/m;

    iget-object p1, p1, LX7/m;->a:Landroid/widget/TextView;

    iget v0, v2, LX7/e;->a:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 1

    iget-object v0, p0, LV4/b$a;->a:LV4/b;

    invoke-virtual {v0}, LV4/b;->u()LV4/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, LV4/a;->a:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
