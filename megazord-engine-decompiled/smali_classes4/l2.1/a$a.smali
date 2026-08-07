.class public Ll2/a$a;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public final synthetic b:Ll2/a;


# direct methods
.method public constructor <init>(Ll2/a;)V
    .locals 0

    iput-object p1, p0, Ll2/a$a;->b:Ll2/a;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Ll2/a$a;->a:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 2

    iget-object p1, p0, Ll2/a$a;->b:Ll2/a;

    invoke-static {p1}, Ll2/a;->a(Ll2/a;)Lv2/o;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Ll2/a$a;->b:Ll2/a;

    invoke-static {p1}, Ll2/a;->b(Ll2/a;)Lv2/j;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Ll2/a$a;->b:Ll2/a;

    new-instance v0, Lv2/j;

    iget-object v1, p0, Ll2/a$a;->b:Ll2/a;

    invoke-static {v1}, Ll2/a;->a(Ll2/a;)Lv2/o;

    move-result-object v1

    invoke-direct {v0, v1}, Lv2/j;-><init>(Lv2/o;)V

    invoke-static {p1, v0}, Ll2/a;->c(Ll2/a;Lv2/j;)Lv2/j;

    :cond_1
    iget-object p1, p0, Ll2/a$a;->b:Ll2/a;

    invoke-static {p1}, Ll2/a;->d(Ll2/a;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object v0, p0, Ll2/a$a;->a:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    iget-object p1, p0, Ll2/a$a;->b:Ll2/a;

    invoke-static {p1}, Ll2/a;->b(Ll2/a;)Lv2/j;

    move-result-object p1

    iget-object v0, p0, Ll2/a$a;->a:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p1, p0, Ll2/a$a;->b:Ll2/a;

    invoke-static {p1}, Ll2/a;->b(Ll2/a;)Lv2/j;

    move-result-object p1

    invoke-virtual {p1, p2}, Lv2/j;->getOutline(Landroid/graphics/Outline;)V

    return-void
.end method
