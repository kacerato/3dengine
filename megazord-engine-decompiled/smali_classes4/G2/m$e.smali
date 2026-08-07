.class public LG2/m$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG2/m$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LG2/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Lv2/o;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    instance-of v0, p1, Lv2/s;

    if-eqz v0, :cond_0

    check-cast p1, Lv2/s;

    invoke-interface {p1}, Lv2/s;->getShapeAppearanceModel()Lv2/o;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
