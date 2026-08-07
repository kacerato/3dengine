.class public final synthetic LP7/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:LP7/j;

.field public final synthetic c:LP7/j$a;


# direct methods
.method public synthetic constructor <init>(LP7/j;LP7/j$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LP7/i;->b:LP7/j;

    iput-object p2, p0, LP7/i;->c:LP7/j$a;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, LP7/i;->b:LP7/j;

    iget-object v1, p0, LP7/i;->c:LP7/j$a;

    invoke-static {v0, v1, p1, p2}, LP7/j;->a(LP7/j;LP7/j$a;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
