.class public Lv7/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu8/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv7/a;->v(Landroid/app/Activity;)V
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

    iput-object p1, p0, Lv7/a$e;->b:Lv7/a;

    iput-object p2, p0, Lv7/a$e;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lv7/a$e;->a:Landroid/app/Activity;

    new-instance v1, Lv7/a$e$a;

    invoke-direct {v1, p0}, Lv7/a$e$a;-><init>(Lv7/a$e;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lv7/a$e;->a:Landroid/app/Activity;

    new-instance v1, Lv7/a$e$c;

    invoke-direct {v1, p0}, Lv7/a$e$c;-><init>(Lv7/a$e;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lv7/a$e;->a:Landroid/app/Activity;

    new-instance v1, Lv7/a$e$b;

    invoke-direct {v1, p0}, Lv7/a$e$b;-><init>(Lv7/a$e;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lv7/a$e;->a:Landroid/app/Activity;

    new-instance v1, Lv7/a$e$d;

    invoke-direct {v1, p0}, Lv7/a$e$d;-><init>(Lv7/a$e;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
