.class public LW5/h$e0;
.super Lyi/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LW5/h;->x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LW5/b;IZLandroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:F

.field public final synthetic b:LW5/b;

.field public final synthetic c:LY5/f;


# direct methods
.method public constructor <init>(FLW5/b;LY5/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$precision",
            "val$entry",
            "val$textFloat"
        }
    .end annotation

    iput p1, p0, LW5/h$e0;->a:F

    iput-object p2, p0, LW5/h$e0;->b:LW5/b;

    iput-object p3, p0, LW5/h$e0;->c:LY5/f;

    invoke-direct {p0}, Lyi/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lorg/mohammedalaa/seekbar/RangeSeekBarView;IZ)V
    .locals 1
    .param p1    # Lorg/mohammedalaa/seekbar/RangeSeekBarView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rangeSeekBarView",
            "progress",
            "fromUser"
        }
    .end annotation

    if-eqz p3, :cond_0

    int-to-float p1, p2

    :try_start_0
    iget p2, p0, LW5/h$e0;->a:F

    div-float/2addr p1, p2

    iget-object p2, p0, LW5/h$e0;->b:LW5/b;

    iget-object p2, p2, LW5/b;->b:LX5/h;

    new-instance p3, Lcom/itsmagic/engine/Engines/Utils/Variable;

    const-string v0, ""

    invoke-direct {p3, v0, p1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;F)V

    invoke-interface {p2, p3}, LX5/h;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V

    iget-object p1, p0, LW5/h$e0;->c:LY5/f;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LY5/f;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
