.class public final synthetic Lv7/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lv7/a$i;

.field public final synthetic c:LI7/a;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Landroid/app/Activity;

.field public final synthetic g:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lv7/a$i;LI7/a;Ljava/util/List;Landroid/content/Context;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv7/b;->b:Lv7/a$i;

    iput-object p2, p0, Lv7/b;->c:LI7/a;

    iput-object p3, p0, Lv7/b;->d:Ljava/util/List;

    iput-object p4, p0, Lv7/b;->e:Landroid/content/Context;

    iput-object p5, p0, Lv7/b;->f:Landroid/app/Activity;

    iput-object p6, p0, Lv7/b;->g:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lv7/b;->b:Lv7/a$i;

    iget-object v1, p0, Lv7/b;->c:LI7/a;

    iget-object v2, p0, Lv7/b;->d:Ljava/util/List;

    iget-object v3, p0, Lv7/b;->e:Landroid/content/Context;

    iget-object v4, p0, Lv7/b;->f:Landroid/app/Activity;

    iget-object v5, p0, Lv7/b;->g:Landroid/view/View;

    invoke-static/range {v0 .. v5}, Lv7/a$i;->b(Lv7/a$i;LI7/a;Ljava/util/List;Landroid/content/Context;Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method
