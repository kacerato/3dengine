.class public final Landroidx/core/view/ViewKt$doOnPreDraw$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/ViewKt;->doOnPreDraw(Landroid/view/View;Leg/l;)Landroidx/core/view/OneShotPreDrawListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt$doOnPreDraw$1\n*L\n1#1,432:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $action:Leg/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/l<",
            "Landroid/view/View;",
            "LFf/P0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_doOnPreDraw:Landroid/view/View;


# direct methods
.method public constructor <init>(Leg/l;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/l<",
            "-",
            "Landroid/view/View;",
            "LFf/P0;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/core/view/ViewKt$doOnPreDraw$1;->$action:Leg/l;

    iput-object p2, p0, Landroidx/core/view/ViewKt$doOnPreDraw$1;->$this_doOnPreDraw:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/core/view/ViewKt$doOnPreDraw$1;->$action:Leg/l;

    iget-object v1, p0, Landroidx/core/view/ViewKt$doOnPreDraw$1;->$this_doOnPreDraw:Landroid/view/View;

    invoke-interface {v0, v1}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
