.class LJAVARuntime/Matcap$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX5/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/Matcap$2;->getInspector(Landroid/content/Context;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/String;Lh9/n;Lh9/q;)LW5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/Matcap$2;

.field final synthetic val$finalVar:LJAVARuntime/Matcap;

.field final synthetic val$getSetterListener:Lh9/n;

.field final synthetic val$tittle:Ljava/lang/String;


# direct methods
.method public constructor <init>(LJAVARuntime/Matcap$2;Ljava/lang/String;LJAVARuntime/Matcap;Lh9/n;)V
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
            "val$tittle",
            "val$finalVar",
            "val$getSetterListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/Matcap$2$1;->this$0:LJAVARuntime/Matcap$2;

    iput-object p2, p0, LJAVARuntime/Matcap$2$1;->val$tittle:Ljava/lang/String;

    iput-object p3, p0, LJAVARuntime/Matcap$2$1;->val$finalVar:LJAVARuntime/Matcap;

    iput-object p4, p0, LJAVARuntime/Matcap$2$1;->val$getSetterListener:Lh9/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/view/View;Landroid/content/Context;LW5/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "context",
            "entry"
        }
    .end annotation

    const p3, 0x7f09052f

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, LJAVARuntime/Matcap$2$1;->val$tittle:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f09026e

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object p3, p0, LJAVARuntime/Matcap$2$1;->val$finalVar:LJAVARuntime/Matcap;

    invoke-virtual {p3}, LJAVARuntime/Matcap;->getFile()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lg4/f;->w1(Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    invoke-static {p1, p3, p2}, Lod/e;->G(Landroid/widget/ImageView;Ljava/io/File;Landroid/content/Context;)V

    new-instance p3, LJAVARuntime/Matcap$2$1$1;

    invoke-direct {p3, p0, p1, p2}, LJAVARuntime/Matcap$2$1$1;-><init>(LJAVARuntime/Matcap$2$1;Landroid/widget/ImageView;Landroid/content/Context;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
