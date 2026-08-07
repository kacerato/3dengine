.class public LO5/e$h;
.super LO5/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LO5/e;->o2(Ljava/util/List;Ljava/lang/String;LO5/e$u;LO5/e$v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LO5/e$v;

.field public final synthetic b:LO5/e;


# direct methods
.method public constructor <init>(LO5/e;LO5/e$v;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$file"
        }
    .end annotation

    iput-object p1, p0, LO5/e$h;->b:LO5/e;

    iput-object p2, p0, LO5/e$h;->a:LO5/e$v;

    invoke-direct {p0}, LO5/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/ImageView;LX7/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "imageView",
            "subIconImageView",
            "eElement"
        }
    .end annotation

    iget-object p3, p0, LO5/e$h;->a:LO5/e$v;

    invoke-virtual {p3}, LO5/e$v;->c()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lbd/l;->i(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
