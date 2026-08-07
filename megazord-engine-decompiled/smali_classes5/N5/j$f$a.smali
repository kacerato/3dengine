.class public LN5/j$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LN5/j$f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LN5/j$f;


# direct methods
.method public constructor <init>(LN5/j$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LN5/j$f$a;->b:LN5/j$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LN5/j$f$a;->b:LN5/j$f;

    iget-object v0, v0, LN5/j$f;->b:LN5/j;

    invoke-static {v0}, LN5/j;->z1(LN5/j;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, LN5/j$f$a;->b:LN5/j$f;

    iget-object v1, v1, LN5/j$f;->b:LN5/j;

    invoke-static {v1}, LN5/j;->y1(LN5/j;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, LN5/j$f$a;->b:LN5/j$f;

    iget-object v0, v0, LN5/j$f;->b:LN5/j;

    invoke-static {v0}, LN5/j;->q1(LN5/j;)Lfa/a$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LN5/j$f$a;->b:LN5/j$f;

    iget-object v0, v0, LN5/j$f;->b:LN5/j;

    invoke-static {v0}, LN5/j;->q1(LN5/j;)Lfa/a$b;

    move-result-object v0

    invoke-interface {v0}, Lfa/a$b;->a()V

    :cond_0
    return-void
.end method
