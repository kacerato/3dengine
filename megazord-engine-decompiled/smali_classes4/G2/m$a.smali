.class public LG2/m$a;
.super LG2/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LG2/m;->m(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/Window;

.field public final synthetic b:LG2/m;


# direct methods
.method public constructor <init>(LG2/m;Landroid/view/Window;)V
    .locals 0

    iput-object p1, p0, LG2/m$a;->b:LG2/m;

    iput-object p2, p0, LG2/m$a;->a:Landroid/view/Window;

    invoke-direct {p0}, LG2/u;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0

    iget-object p1, p0, LG2/m$a;->a:Landroid/view/Window;

    invoke-static {p1}, LG2/m;->b(Landroid/view/Window;)V

    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 0

    iget-object p1, p0, LG2/m$a;->a:Landroid/view/Window;

    invoke-static {p1}, LG2/m;->a(Landroid/view/Window;)V

    return-void
.end method
