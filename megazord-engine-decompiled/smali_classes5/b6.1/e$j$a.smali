.class public Lb6/e$j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb6/e$j;->c(Lorg/mohammedalaa/seekbar/RangeSeekBarView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lb6/e$j;


# direct methods
.method public constructor <init>(Lb6/e$j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lb6/e$j$a;->b:Lb6/e$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lb6/e$j$a;->b:Lb6/e$j;

    iget v1, v0, Lb6/e$j;->b:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    iget-object v0, v0, Lb6/e$j;->c:Lb6/e;

    invoke-static {v0}, Lb6/e;->x1(Lb6/e;)F

    move-result v0

    mul-float/2addr v1, v0

    iget-object v0, p0, Lb6/e$j$a;->b:Lb6/e$j;

    iget-object v0, v0, Lb6/e$j;->c:Lb6/e;

    invoke-static {v0}, Lb6/e;->v1(Lb6/e;)F

    move-result v0

    iget-object v2, p0, Lb6/e$j$a;->b:Lb6/e$j;

    iget-object v2, v2, Lb6/e$j;->c:Lb6/e;

    invoke-static {v2}, Lb6/e;->z1(Lb6/e;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lb6/e$j$a;->b:Lb6/e$j;

    iget-object v2, v2, Lb6/e$j;->c:Lb6/e;

    invoke-static {v2}, Lb6/e;->z1(Lb6/e;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lb6/e$j$a$a;

    invoke-direct {v3, p0, v1, v0}, Lb6/e$j$a$a;-><init>(Lb6/e$j$a;FF)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
