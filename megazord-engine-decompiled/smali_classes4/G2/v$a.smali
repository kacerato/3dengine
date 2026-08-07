.class public final LG2/v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv2/o$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LG2/v;->b(Lv2/o;Landroid/graphics/RectF;)Lv2/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, LG2/v$a;->a:Landroid/graphics/RectF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lv2/d;)Lv2/d;
    .locals 2
    .param p1    # Lv2/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    instance-of v0, p1, Lv2/m;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lv2/m;

    iget-object v1, p0, LG2/v$a;->a:Landroid/graphics/RectF;

    invoke-interface {p1, v1}, Lv2/d;->a(Landroid/graphics/RectF;)F

    move-result p1

    iget-object v1, p0, LG2/v$a;->a:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr p1, v1

    invoke-direct {v0, p1}, Lv2/m;-><init>(F)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
