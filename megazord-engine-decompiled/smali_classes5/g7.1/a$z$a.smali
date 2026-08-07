.class public Lg7/a$z$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg7/a$z;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/graphics/Bitmap;

.field public final synthetic c:Lg7/a$z;


# direct methods
.method public constructor <init>(Lg7/a$z;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$bitmap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lg7/a$z$a;->c:Lg7/a$z;

    iput-object p2, p0, Lg7/a$z$a;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lg7/a$z$a;->c:Lg7/a$z;

    iget-object v0, v0, Lg7/a$z;->b:Lg7/a;

    invoke-static {v0}, Lg7/a;->X1(Lg7/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg7/a$z$a;->c:Lg7/a$z;

    iget-object v0, v0, Lg7/a$z;->b:Lg7/a;

    invoke-static {v0}, Lg7/a;->X1(Lg7/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lg7/a$z$a;->b:Landroid/graphics/Bitmap;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lg7/a$z$a;->c:Lg7/a$z;

    iget-object v0, v0, Lg7/a$z;->b:Lg7/a;

    invoke-static {v0}, Lg7/a;->X1(Lg7/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lg7/a$z$a;->c:Lg7/a$z;

    iget-object v0, v0, Lg7/a$z;->b:Lg7/a;

    invoke-static {v0}, Lg7/a;->X1(Lg7/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v0, p0, Lg7/a$z$a;->c:Lg7/a$z;

    iget-object v0, v0, Lg7/a$z;->b:Lg7/a;

    iget-object v1, p0, Lg7/a$z$a;->b:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lg7/a;->Y1(Lg7/a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lg7/a$z$a;->c:Lg7/a$z;

    iget-object v0, v0, Lg7/a$z;->b:Lg7/a;

    invoke-static {v0}, Lg7/a;->Z1(Lg7/a;)V

    iget-object v0, p0, Lg7/a$z$a;->c:Lg7/a$z;

    iget-object v0, v0, Lg7/a$z;->b:Lg7/a;

    invoke-static {v0}, Lg7/a;->a2(Lg7/a;)V

    iget-object v0, p0, Lg7/a$z$a;->c:Lg7/a$z;

    iget-object v0, v0, Lg7/a$z;->b:Lg7/a;

    invoke-static {v0}, Lg7/a;->b2(Lg7/a;)V

    return-void
.end method
