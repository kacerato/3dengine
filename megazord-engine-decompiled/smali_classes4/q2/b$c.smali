.class public Lq2/b$c;
.super Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lq2/b;


# direct methods
.method public constructor <init>(Lq2/b;)V
    .locals 0

    iput-object p1, p0, Lq2/b$c;->a:Lq2/b;

    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object p1, p0, Lq2/b$c;->a:Lq2/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lq2/b;->setIndeterminate(Z)V

    iget-object p1, p0, Lq2/b$c;->a:Lq2/b;

    invoke-static {p1}, Lq2/b;->d(Lq2/b;)I

    move-result v0

    iget-object v1, p0, Lq2/b$c;->a:Lq2/b;

    invoke-static {v1}, Lq2/b;->e(Lq2/b;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lq2/b;->p(IZ)V

    return-void
.end method
