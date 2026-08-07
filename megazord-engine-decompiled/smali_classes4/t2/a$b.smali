.class public final Lt2/a$b;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Lv2/j;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public b:Z


# direct methods
.method public constructor <init>(Lt2/a$b;)V
    .locals 1
    .param p1    # Lt2/a$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 5
    iget-object v0, p1, Lt2/a$b;->a:Lv2/j;

    invoke-virtual {v0}, Lv2/j;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lv2/j;

    iput-object v0, p0, Lt2/a$b;->a:Lv2/j;

    .line 6
    iget-boolean p1, p1, Lt2/a$b;->b:Z

    iput-boolean p1, p0, Lt2/a$b;->b:Z

    return-void
.end method

.method public constructor <init>(Lv2/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 2
    iput-object p1, p0, Lt2/a$b;->a:Lv2/j;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lt2/a$b;->b:Z

    return-void
.end method


# virtual methods
.method public a()Lt2/a;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lt2/a;

    new-instance v1, Lt2/a$b;

    invoke-direct {v1, p0}, Lt2/a$b;-><init>(Lt2/a$b;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lt2/a;-><init>(Lt2/a$b;Lt2/a$a;)V

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lt2/a$b;->a()Lt2/a;

    move-result-object v0

    return-object v0
.end method
