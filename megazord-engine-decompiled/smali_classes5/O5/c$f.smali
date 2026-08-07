.class public LO5/c$f;
.super LE7/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LO5/c;->W1(Ljava/util/List;Lrd/d;Ljava/lang/String;LO5/c$q;LO5/c$r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LO5/c$r;

.field public final synthetic b:LO5/c;


# direct methods
.method public constructor <init>(LO5/c;LO5/c$r;)V
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

    iput-object p1, p0, LO5/c$f;->b:LO5/c;

    iput-object p2, p0, LO5/c$f;->a:LO5/c$r;

    invoke-direct {p0}, LE7/a;-><init>()V

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

    iget-object p3, p0, LO5/c$f;->a:LO5/c$r;

    invoke-virtual {p3}, LO5/c$r;->c()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lbd/l;->i(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
