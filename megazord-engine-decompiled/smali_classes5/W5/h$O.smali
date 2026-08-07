.class public LW5/h$O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU3/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LW5/h;->x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LW5/b;IZLandroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LW5/b;

.field public final synthetic b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(LW5/b;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$entry",
            "val$tittle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LW5/h$O;->a:LW5/b;

    iput-object p2, p0, LW5/h$O;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;LU3/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "repeater"
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, LW5/h$O;->a:LW5/b;

    iget-object v0, p1, LW5/b;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p1, p1, LW5/b;->I:LX5/n;

    if-eqz p1, :cond_0

    iget-object v0, p0, LW5/h$O;->b:Landroid/widget/TextView;

    invoke-interface {p1}, LX5/n;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Lf8/c;->I()LU3/o;

    move-result-object p1

    invoke-virtual {p1, p2}, LU3/o;->b(LU3/k;)V

    :cond_0
    :goto_0
    :try_start_1
    iget-object p1, p0, LW5/h$O;->a:LW5/b;

    invoke-virtual {p1}, LW5/b;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lf8/c;->I()LU3/o;

    move-result-object p1

    invoke-virtual {p1, p2}, LU3/o;->b(LU3/k;)V

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_1

    :cond_1
    sget-object p1, Lo8/b;->i:Ls8/a;

    iget-object p1, p1, Ls8/a;->a:Ls8/b;

    iget-object p1, p1, Ls8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez p1, :cond_2

    invoke-static {}, Lf8/c;->I()LU3/o;

    move-result-object p1

    invoke-virtual {p1, p2}, LU3/o;->b(LU3/k;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Lf8/c;->I()LU3/o;

    move-result-object p1

    invoke-virtual {p1, p2}, LU3/o;->b(LU3/k;)V

    :cond_2
    :goto_2
    return-void
.end method
