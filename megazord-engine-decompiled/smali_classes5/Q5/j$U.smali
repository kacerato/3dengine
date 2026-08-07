.class public LQ5/j$U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LQ5/j;->g(Landroid/app/Activity;Landroid/content/Context;LCd/b;Ljava/lang/String;LQ5/b;Ljava/lang/String;Landroid/view/View;IIZ)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LCd/b;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:LQ5/b;


# direct methods
.method public constructor <init>(LCd/b;Landroid/content/Context;LQ5/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$o",
            "val$context",
            "val$callbacks"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LQ5/j$U;->a:LCd/b;

    iput-object p2, p0, LQ5/j$U;->b:Landroid/content/Context;

    iput-object p3, p0, LQ5/j$U;->c:LQ5/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, LQ5/j$U;->a:LCd/b;

    iget-object p1, p1, LCd/b;->a:Ljava/lang/String;

    invoke-static {p1}, LQ5/j;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmd/b;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lmd/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lmd/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_mask"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, LQ5/j$U$a;

    invoke-direct {v2, p0, v0, p1}, LQ5/j$U$a;-><init>(LQ5/j$U;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Create new mask file"

    invoke-static {p1, v1, v2}, Lr7/f;->w1(Ljava/lang/String;Ljava/lang/String;Lr7/f$g;)V

    return-void
.end method
