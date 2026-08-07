.class public Lq2/e$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq2/e;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lq2/e;


# direct methods
.method public constructor <init>(Lq2/e;)V
    .locals 0

    iput-object p1, p0, Lq2/e$a;->a:Lq2/e;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    iget-object p1, p0, Lq2/e$a;->a:Lq2/e;

    invoke-static {p1}, Lq2/e;->i(Lq2/e;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lq2/e$a;->a:Lq2/e;

    invoke-static {v1}, Lq2/e;->k(Lq2/e;)Lq2/c;

    move-result-object v1

    iget-object v1, v1, Lq2/c;->c:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    invoke-static {p1, v0}, Lq2/e;->j(Lq2/e;I)I

    return-void
.end method
