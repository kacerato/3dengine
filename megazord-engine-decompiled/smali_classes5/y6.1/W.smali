.class public final synthetic Ly6/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Ly6/X;


# direct methods
.method public synthetic constructor <init>(Ly6/X;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly6/W;->b:Ly6/X;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Ly6/W;->b:Ly6/X;

    invoke-static {v0, p1, p2}, Ly6/X;->a(Ly6/X;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
