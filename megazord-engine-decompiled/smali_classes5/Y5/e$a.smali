.class public LY5/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LY5/e;->c(LW5/b;Landroid/view/View;Landroid/widget/TextView;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LW5/b;

.field public final synthetic c:Landroid/widget/TextView;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:LY5/e;


# direct methods
.method public constructor <init>(LY5/e;LW5/b;Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$entry",
            "val$tittle",
            "val$context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LY5/e$a;->e:LY5/e;

    iput-object p2, p0, LY5/e$a;->b:LW5/b;

    iput-object p3, p0, LY5/e$a;->c:Landroid/widget/TextView;

    iput-object p4, p0, LY5/e$a;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LY5/e$a;->b:LW5/b;

    iget-object v0, v0, LW5/b;->G:LX5/j;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, LY5/e$a;->c:Landroid/widget/TextView;

    iget-object v2, p0, LY5/e$a;->d:Landroid/content/Context;

    invoke-interface {v0, v1, v2}, LX5/j;->a(Landroid/view/View;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
