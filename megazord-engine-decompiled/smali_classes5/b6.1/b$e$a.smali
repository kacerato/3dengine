.class public Lb6/b$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb6/b$e;->b(Lorg/mohammedalaa/seekbar/RangeSeekBarView;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:Lb6/b$e;


# direct methods
.method public constructor <init>(Lb6/b$e;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$increment",
            "val$value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lb6/b$e$a;->d:Lb6/b$e;

    iput p2, p0, Lb6/b$e$a;->b:F

    iput p3, p0, Lb6/b$e$a;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lb6/b$e$a;->b:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v1, p0, Lb6/b$e$a;->c:F

    mul-float/2addr v0, v0

    invoke-static {}, Lc9/d;->e()F

    move-result v2

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    iget-object v0, p0, Lb6/b$e$a;->d:Lb6/b$e;

    iget-object v0, v0, Lb6/b$e;->c:Lb6/b;

    invoke-static {v0, v1}, Lb6/b;->p1(Lb6/b;F)F

    iget-object v0, p0, Lb6/b$e$a;->d:Lb6/b$e;

    iget-object v0, v0, Lb6/b$e;->c:Lb6/b;

    invoke-static {v0}, Lb6/b;->s1(Lb6/b;)Lb6/b$g;

    move-result-object v0

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lb6/b$g;->b(I)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lb6/b$e$a;->c:F

    mul-float/2addr v0, v0

    invoke-static {}, Lc9/d;->e()F

    move-result v2

    mul-float/2addr v0, v2

    sub-float/2addr v1, v0

    iget-object v0, p0, Lb6/b$e$a;->d:Lb6/b$e;

    iget-object v0, v0, Lb6/b$e;->c:Lb6/b;

    invoke-static {v0, v1}, Lb6/b;->p1(Lb6/b;F)F

    iget-object v0, p0, Lb6/b$e$a;->d:Lb6/b$e;

    iget-object v0, v0, Lb6/b$e;->c:Lb6/b;

    invoke-static {v0}, Lb6/b;->s1(Lb6/b;)Lb6/b$g;

    move-result-object v0

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lb6/b$g;->b(I)V

    :goto_0
    return-void
.end method
