.class public LMd/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/picasso/Transformation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LMd/d;->j()Lcom/squareup/picasso/Transformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LMd/d;


# direct methods
.method public constructor <init>(LMd/d;)V
    .locals 0

    iput-object p1, p0, LMd/d$a;->a:LMd/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "r:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LMd/d$a;->a:LMd/d;

    invoke-static {v1}, LMd/d;->d(LMd/d;)[F

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "b:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LMd/d$a;->a:LMd/d;

    invoke-static {v1}, LMd/d;->c(LMd/d;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LMd/d$a;->a:LMd/d;

    invoke-static {v1}, LMd/d;->b(LMd/d;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "o:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LMd/d$a;->a:LMd/d;

    invoke-static {v1}, LMd/d;->a(LMd/d;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    invoke-static {p1}, LMd/c;->d(Landroid/graphics/Bitmap;)LMd/c;

    move-result-object v0

    iget-object v1, p0, LMd/d$a;->a:LMd/d;

    invoke-static {v1}, LMd/d;->e(LMd/d;)Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, LMd/c;->z(Landroid/widget/ImageView$ScaleType;)LMd/c;

    move-result-object v0

    iget-object v1, p0, LMd/d$a;->a:LMd/d;

    invoke-static {v1}, LMd/d;->d(LMd/d;)[F

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, LMd/d$a;->a:LMd/d;

    invoke-static {v2}, LMd/d;->d(LMd/d;)[F

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, LMd/d$a;->a:LMd/d;

    invoke-static {v3}, LMd/d;->d(LMd/d;)[F

    move-result-object v3

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, LMd/d$a;->a:LMd/d;

    invoke-static {v4}, LMd/d;->d(LMd/d;)[F

    move-result-object v4

    const/4 v5, 0x3

    aget v4, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, LMd/c;->w(FFFF)LMd/c;

    move-result-object v0

    iget-object v1, p0, LMd/d$a;->a:LMd/d;

    invoke-static {v1}, LMd/d;->c(LMd/d;)F

    move-result v1

    invoke-virtual {v0, v1}, LMd/c;->u(F)LMd/c;

    move-result-object v0

    iget-object v1, p0, LMd/d$a;->a:LMd/d;

    invoke-static {v1}, LMd/d;->b(LMd/d;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, LMd/c;->t(Landroid/content/res/ColorStateList;)LMd/c;

    move-result-object v0

    iget-object v1, p0, LMd/d$a;->a:LMd/d;

    invoke-static {v1}, LMd/d;->a(LMd/d;)Z

    move-result v1

    invoke-virtual {v0, v1}, LMd/c;->y(Z)LMd/c;

    move-result-object v0

    invoke-virtual {v0}, LMd/c;->C()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-object v0
.end method
