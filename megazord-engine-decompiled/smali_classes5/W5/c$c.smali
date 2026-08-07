.class public LW5/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LW5/c;->q(LW5/c$i;ILandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LW5/d;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:LW5/c;


# direct methods
.method public constructor <init>(LW5/c;LW5/d;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$item",
            "val$context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LW5/c$c;->d:LW5/c;

    iput-object p2, p0, LW5/c$c;->b:LW5/d;

    iput-object p3, p0, LW5/c$c;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    invoke-static {}, Lf8/c;->Y()V

    iget-object v0, p0, LW5/c$c;->b:LW5/d;

    iget-object v0, v0, LW5/d;->d:LW5/a;

    if-eqz v0, :cond_1

    invoke-static {}, Lf8/c;->o()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, LW5/c$c;->b:LW5/d;

    iget-object v1, v1, LW5/d;->d:LW5/a;

    iget-object v1, v1, LW5/a;->h:LX5/g;

    if-eqz v1, :cond_0

    iget-object v0, p0, LW5/c$c;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v0, v2}, LX5/g;->a(Landroid/view/View;Landroid/content/Context;I)Z

    goto :goto_0

    :cond_0
    new-instance v1, LW5/c$c$a;

    invoke-direct {v1, p0, v0, p1}, LW5/c$c$a;-><init>(LW5/c$c;Landroid/app/Activity;Landroid/view/View;)V

    iget-object v0, p0, LW5/c$c;->b:LW5/d;

    iget-object v0, v0, LW5/d;->d:LW5/a;

    iget-object v0, v0, LW5/a;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v0, LL4/a$e;->Left:LL4/a$e;

    invoke-static {p1, v0, v1}, Lq7/a;->D1(Landroid/view/View;LL4/a$e;Ljava/util/List;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
