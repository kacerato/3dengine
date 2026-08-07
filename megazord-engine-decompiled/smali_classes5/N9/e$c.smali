.class public LN9/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR9/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LN9/e;->o(I)LR9/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LN9/e;


# direct methods
.method public constructor <init>(LN9/e;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$surfaceResolution"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LN9/e$c;->b:LN9/e;

    iput p2, p0, LN9/e$c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)F
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget-object v0, p0, LN9/e$c;->b:LN9/e;

    invoke-static {v0}, LN9/e;->a(LN9/e;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, LN9/e$c;->a:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_1

    if-gt v1, v4, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    add-int/lit8 v1, v2, -0x1

    int-to-float v1, v1

    div-float/2addr p1, v1

    int-to-float p2, p2

    sub-int/2addr v2, v4

    int-to-float v1, v2

    div-float/2addr p2, v1

    int-to-float v1, v0

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {v3, p1, v0}, Lgd/b;->F(III)I

    move-result p1

    mul-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {v3, p2, v0}, Lgd/b;->F(III)I

    move-result v3

    move v5, v3

    move v3, p1

    move p1, v5

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v3

    :goto_1
    iget-object p2, p0, LN9/e$c;->b:LN9/e;

    invoke-static {p2}, LN9/e;->b(LN9/e;)I

    move-result p2

    add-int/2addr p2, v3

    iget-object v0, p0, LN9/e$c;->b:LN9/e;

    invoke-static {v0}, LN9/e;->c(LN9/e;)I

    move-result v0

    add-int/2addr v0, p1

    iget-object p1, p0, LN9/e$c;->b:LN9/e;

    invoke-static {p1}, LN9/e;->d(LN9/e;)LR9/f;

    move-result-object p1

    invoke-virtual {p1}, LR9/f;->g()I

    move-result p1

    if-lt p2, p1, :cond_2

    add-int/lit8 p2, p2, -0x1

    :cond_2
    iget-object p1, p0, LN9/e$c;->b:LN9/e;

    invoke-static {p1}, LN9/e;->d(LN9/e;)LR9/f;

    move-result-object p1

    invoke-virtual {p1}, LR9/f;->g()I

    move-result p1

    if-lt v0, p1, :cond_3

    add-int/lit8 v0, v0, -0x1

    :cond_3
    invoke-static {}, Ll/a;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, LN9/e$c;->b:LN9/e;

    invoke-static {p1}, LN9/e;->e(LN9/e;)LR9/f;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, LR9/f;->f(II)F

    move-result p1

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_4

    return p1

    :cond_4
    iget-object p1, p0, LN9/e$c;->b:LN9/e;

    invoke-static {p1}, LN9/e;->d(LN9/e;)LR9/f;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, LR9/f;->f(II)F

    move-result p1

    return p1
.end method
