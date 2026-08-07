.class public LRd/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LRd/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:LRd/d;


# direct methods
.method public constructor <init>(LRd/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, LRd/d$c;->b:LRd/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(LRd/d;LRd/d$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, LRd/d$c;-><init>(LRd/d;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    iput p1, p0, LRd/d$c;->a:I

    iget-object v0, p0, LRd/d$c;->b:LRd/d;

    invoke-static {v0}, LRd/d;->b(LRd/d;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LRd/d$c;->b:LRd/d;

    invoke-static {v0}, LRd/d;->b(LRd/d;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    iget-object v0, p0, LRd/d$c;->b:LRd/d;

    iget-object v0, v0, LRd/d;->b:LRd/e;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LRd/d$c;->b:LRd/d;

    iget-object v0, v0, LRd/d;->b:LRd/e;

    invoke-virtual {v0, p1, p2}, LRd/e;->i(IF)V

    iget-object v0, p0, LRd/d$c;->b:LRd/d;

    invoke-static {v0, p1, p2}, LRd/d;->a(LRd/d;IF)V

    iget-object v0, p0, LRd/d$c;->b:LRd/d;

    invoke-static {v0}, LRd/d;->b(LRd/d;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LRd/d$c;->b:LRd/d;

    invoke-static {v0}, LRd/d;->b(LRd/d;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5

    iget v0, p0, LRd/d$c;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, LRd/d$c;->b:LRd/d;

    iget-object v0, v0, LRd/d;->b:LRd/e;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, LRd/e;->i(IF)V

    iget-object v0, p0, LRd/d$c;->b:LRd/d;

    invoke-static {v0, p1, v1}, LRd/d;->a(LRd/d;IF)V

    :cond_0
    iget-object v0, p0, LRd/d$c;->b:LRd/d;

    iget-object v0, v0, LRd/d;->b:LRd/e;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, LRd/d$c;->b:LRd/d;

    iget-object v3, v3, LRd/d;->b:LRd/e;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne p1, v2, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, LRd/d$c;->b:LRd/d;

    invoke-static {v0}, LRd/d;->b(LRd/d;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, LRd/d$c;->b:LRd/d;

    invoke-static {v0}, LRd/d;->b(LRd/d;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_3
    return-void
.end method
