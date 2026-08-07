.class public La6/a$g$e$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV3/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La6/a$g$e$a;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La6/a$g$e$a;


# direct methods
.method public constructor <init>(La6/a$g$e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$3"
        }
    .end annotation

    iput-object p1, p0, La6/a$g$e$a$a;->a:La6/a$g$e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to import image:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lf8/c;->u0(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fileName",
            "imageFile"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/Files/Textures/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, La6/a$g$e$a$a;->a:La6/a$g$e$a;

    iget-object v3, v3, La6/a$g$e$a;->a:La6/a$g$e;

    iget-object v3, v3, La6/a$g$e;->a:La6/a$g;

    iget-object v3, v3, La6/a$g;->b:La6/a;

    invoke-static {v3}, La6/a;->x(La6/a;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v1}, LQ8/a;->b(Ljava/io/File;Ljava/io/File;)Z

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :try_start_0
    iget-object p2, p0, La6/a$g$e$a$a;->a:La6/a$g$e$a;

    iget-object p2, p2, La6/a$g$e$a;->a:La6/a$g$e;

    iget-object p2, p2, La6/a$g$e;->a:La6/a$g;

    iget-object p2, p2, La6/a$g;->b:La6/a;

    invoke-static {p2}, La6/a;->y(La6/a;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-static {p2, v1}, Lod/e;->F(Landroid/widget/ImageView;Ljava/io/File;)V

    iget-object p2, p0, La6/a$g$e$a$a;->a:La6/a$g$e$a;

    iget-object p2, p2, La6/a$g$e$a;->a:La6/a$g$e;

    iget-object p2, p2, La6/a$g$e;->a:La6/a$g;

    iget-object p2, p2, La6/a$g;->b:La6/a;

    invoke-static {p2}, La6/a;->r(La6/a;)La6/a$k;

    move-result-object p2

    invoke-interface {p2, v0}, La6/a$k;->b(Ljava/lang/String;)V

    iget-object p2, p0, La6/a$g$e$a$a;->a:La6/a$g$e$a;

    iget-object p2, p2, La6/a$g$e$a;->a:La6/a$g$e;

    iget-object p2, p2, La6/a$g$e;->a:La6/a$g;

    iget-object p2, p2, La6/a$g;->b:La6/a;

    invoke-static {p2}, La6/a;->t(La6/a;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Image ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") copied to Textures folder"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lf8/c;->u0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed to import image:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lf8/c;->u0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
