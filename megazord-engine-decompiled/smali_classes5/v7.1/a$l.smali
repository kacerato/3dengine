.class public Lv7/a$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv7/a;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Lv7/a;


# direct methods
.method public constructor <init>(Lv7/a;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$activity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lv7/a$l;->b:Lv7/a;

    iput-object p2, p0, Lv7/a$l;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le8/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tbElement"
        }
    .end annotation

    iget-object v0, p0, Lv7/a$l;->a:Landroid/app/Activity;

    new-instance v1, Lv7/a$l$a;

    invoke-direct {v1, p0, p1}, Lv7/a$l$a;-><init>(Lv7/a$l;Le8/g;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Le8/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tbElement"
        }
    .end annotation

    iget-object v0, p0, Lv7/a$l;->a:Landroid/app/Activity;

    new-instance v1, Lv7/a$l$b;

    invoke-direct {v1, p0, p1}, Lv7/a$l$b;-><init>(Lv7/a$l;Le8/g;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()I
    .locals 2

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lgd/b;->l0(FLandroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public e(Le8/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tbElement"
        }
    .end annotation

    iget-object v0, p0, Lv7/a$l;->a:Landroid/app/Activity;

    new-instance v1, Lv7/a$l$c;

    invoke-direct {v1, p0, p1}, Lv7/a$l$c;-><init>(Lv7/a$l;Le8/g;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
