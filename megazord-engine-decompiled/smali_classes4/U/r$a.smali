.class public LU/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LU/r;->m()LU/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LU/r;


# direct methods
.method public constructor <init>(LU/r;)V
    .locals 0

    iput-object p1, p0, LU/r$a;->b:LU/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, LU/r$a;->b:LU/r;

    invoke-virtual {p1}, LU/r;->r()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, LU/r$a;->b:LU/r;

    invoke-virtual {p1}, LU/r;->q()V

    return-void
.end method
