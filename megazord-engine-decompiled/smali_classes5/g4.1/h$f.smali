.class public Lg4/h$f;
.super Le8/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg4/h;->B0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b0:Lg4/h$g;

.field public final synthetic c0:Lg4/h;


# direct methods
.method public constructor <init>(Lg4/h;ILe8/r;Le8/c$b;Landroid/content/Context;Lg4/h$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            "this$0",
            "icon",
            "listener",
            "connector",
            "context",
            "val$group"
        }
    .end annotation

    iput-object p1, p0, Lg4/h$f;->c0:Lg4/h;

    iput-object p6, p0, Lg4/h$f;->b0:Lg4/h$g;

    invoke-direct {p0, p2, p3, p4, p5}, Le8/o;-><init>(ILe8/r;Le8/c$b;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public e0(Landroid/widget/ImageView;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageView"
        }
    .end annotation

    const-string v0, "/"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lg4/h$f;->b0:Lg4/h$g;

    invoke-static {v2}, Lg4/h$g;->a(Lg4/h$g;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lg4/h;->x1(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lg4/h$f;->b0:Lg4/h$g;

    invoke-static {v2}, Lg4/h$g;->a(Lg4/h$g;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lg4/h;->x1(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Le8/c;->l:Landroid/content/Context;

    invoke-static {p1, v2, v3}, Lod/e;->g0(Landroid/widget/ImageView;Ljava/io/File;Landroid/content/Context;)V

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lg4/h$f;->b0:Lg4/h$g;

    invoke-static {v3}, Lg4/h$g;->a(Lg4/h$g;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lg4/h$f;->b0:Lg4/h$g;

    invoke-static {v3}, Lg4/h$g;->c(Lg4/h$g;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lg4/h;->x1(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Le8/c;->l:Landroid/content/Context;

    invoke-static {p1, v2, v3}, Lod/e;->g0(Landroid/widget/ImageView;Ljava/io/File;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lg4/h$f;->b0:Lg4/h$g;

    invoke-static {v3}, Lg4/h$g;->a(Lg4/h$g;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lg4/h$f;->b0:Lg4/h$g;

    invoke-static {v0}, Lg4/h$g;->c(Lg4/h$g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg4/h;->x1(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Le8/c;->l:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lod/e;->g0(Landroid/widget/ImageView;Ljava/io/File;Landroid/content/Context;)V

    :goto_1
    return-void
.end method
