.class public LV7/d$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LV7/d$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LV7/d$b;


# direct methods
.method public constructor <init>(LV7/d$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LV7/d$b$a;->b:LV7/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, LT/h;

    invoke-direct {v0}, LT/h;-><init>()V

    const v1, 0x7f0701cc

    invoke-virtual {v0, v1}, LT/a;->u(I)LT/a;

    move-result-object v0

    check-cast v0, LT/h;

    iget-object v1, p0, LV7/d$b$a;->b:LV7/d$b;

    iget-object v2, v1, LV7/d$b;->b:Landroid/widget/ImageView;

    iget-object v1, v1, LV7/d$b;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    invoke-static {v2, v1, v3, v0, v4}, Lod/e;->L(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;LT/h;Lcom/bumptech/glide/load/engine/i;)V

    return-void
.end method
