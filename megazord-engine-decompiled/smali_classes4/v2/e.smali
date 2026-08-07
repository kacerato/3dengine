.class public Lv2/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FFLv2/q;)V
    .locals 0
    .param p3    # Lv2/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public b(Lv2/q;FFF)V
    .locals 0
    .param p1    # Lv2/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p2, p3, p1}, Lv2/e;->a(FFLv2/q;)V

    return-void
.end method

.method public c(Lv2/q;FFLandroid/graphics/RectF;Lv2/d;)V
    .locals 0
    .param p1    # Lv2/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lv2/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p5, p4}, Lv2/d;->a(Landroid/graphics/RectF;)F

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lv2/e;->b(Lv2/q;FFF)V

    return-void
.end method
