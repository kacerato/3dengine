.class public final synthetic LP7/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LP7/j;

.field public final synthetic c:LP7/j$a;

.field public final synthetic d:Landroid/view/MotionEvent;


# direct methods
.method public synthetic constructor <init>(LP7/j;LP7/j$a;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LP7/g;->b:LP7/j;

    iput-object p2, p0, LP7/g;->c:LP7/j$a;

    iput-object p3, p0, LP7/g;->d:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LP7/g;->b:LP7/j;

    iget-object v1, p0, LP7/g;->c:LP7/j$a;

    iget-object v2, p0, LP7/g;->d:Landroid/view/MotionEvent;

    invoke-static {v0, v1, v2}, LP7/j;->b(LP7/j;LP7/j$a;Landroid/view/MotionEvent;)V

    return-void
.end method
