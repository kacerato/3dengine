.class public Lr7/e$e;
.super Lyi/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr7/e;->B0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LY5/f;

.field public final synthetic b:Lr7/e;


# direct methods
.method public constructor <init>(Lr7/e;LY5/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$textFloat"
        }
    .end annotation

    iput-object p1, p0, Lr7/e$e;->b:Lr7/e;

    iput-object p2, p0, Lr7/e$e;->a:LY5/f;

    invoke-direct {p0}, Lyi/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lorg/mohammedalaa/seekbar/RangeSeekBarView;IZ)V
    .locals 0
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

    const p2, 0x461c4000    # 10000.0f

    div-float/2addr p1, p2

    :try_start_0
    iget-object p2, p0, Lr7/e$e;->b:Lr7/e;

    invoke-static {p2, p1}, Lr7/e;->r1(Lr7/e;F)F

    iget-object p1, p0, Lr7/e$e;->a:LY5/f;

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
