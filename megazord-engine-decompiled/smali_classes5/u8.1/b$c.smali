.class public Lu8/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu8/b;->u(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    sget-object v0, LKc/a;->u:LKc/a$g;

    invoke-virtual {v0}, LKc/a$g;->M()V

    invoke-static {}, LQb/b;->r()V

    invoke-static {}, LOb/c;->j()V

    invoke-static {}, Lva/g;->p()V

    invoke-static {}, LYb/c;->x()V

    invoke-static {}, Lu8/b;->e()V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lc9/d;->h(F)V

    invoke-static {}, Lv8/j;->l0()V

    return-void
.end method
