.class public LK6/e$c;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LK6/e;->B0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/ImageView;

.field public final synthetic c:LK6/e;


# direct methods
.method public constructor <init>(LK6/e;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$pauseButton"
        }
    .end annotation

    iput-object p1, p0, LK6/e$c;->c:LK6/e;

    iput-object p2, p0, LK6/e$c;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, LK6/e$c;->c:LK6/e;

    invoke-static {p1}, LK6/e;->r1(LK6/e;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, LK6/e;->s1(LK6/e;Z)Z

    iget-object p1, p0, LK6/e$c;->b:Landroid/widget/ImageView;

    iget-object v0, p0, LK6/e$c;->c:LK6/e;

    invoke-static {v0}, LK6/e;->r1(LK6/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0701d4

    goto :goto_0

    :cond_0
    const v0, 0x7f0701d9

    :goto_0
    invoke-static {p1, v0}, Lod/e;->U(Landroid/widget/ImageView;I)V

    return-void
.end method
