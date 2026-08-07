.class public LC5/b$b$a;
.super LN5/i$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC5/b$b;->onClick(Landroid/view/View;Landroid/content/Context;Le8/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LC5/b$b;


# direct methods
.method public constructor <init>(LC5/b$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LC5/b$b$a;->a:LC5/b$b;

    invoke-direct {p0}, LN5/i$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LC5/b$b$a;->a:LC5/b$b;

    iget-object v0, v0, LC5/b$b;->a:LC5/b;

    float-to-int p1, p1

    invoke-static {v0, p1}, LC5/b;->d0(LC5/b;I)I

    return-void
.end method

.method public get()F
    .locals 1

    iget-object v0, p0, LC5/b$b$a;->a:LC5/b$b;

    iget-object v0, v0, LC5/b$b;->a:LC5/b;

    invoke-static {v0}, LC5/b;->c0(LC5/b;)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getMax()F
    .locals 1

    const/high16 v0, 0x43fa0000    # 500.0f

    return v0
.end method

.method public getMin()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
