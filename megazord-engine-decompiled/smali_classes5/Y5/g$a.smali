.class public LY5/g$a;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LY5/g;->e(LW5/b;Landroid/view/View;Landroid/widget/TextView;LY5/g$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LW5/b;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Landroid/widget/TextView;

.field public final synthetic f:LY5/g$i;

.field public final synthetic g:LY5/g;


# direct methods
.method public constructor <init>(LY5/g;LW5/b;Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;LY5/g$i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$entry",
            "val$context",
            "val$inputField",
            "val$tittle",
            "val$listener"
        }
    .end annotation

    iput-object p1, p0, LY5/g$a;->g:LY5/g;

    iput-object p2, p0, LY5/g$a;->b:LW5/b;

    iput-object p3, p0, LY5/g$a;->c:Landroid/content/Context;

    iput-object p4, p0, LY5/g$a;->d:Landroid/view/View;

    iput-object p5, p0, LY5/g$a;->e:Landroid/widget/TextView;

    iput-object p6, p0, LY5/g$a;->f:LY5/g$i;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object v0, p0, LY5/g$a;->g:LY5/g;

    iget-object v1, p0, LY5/g$a;->b:LW5/b;

    iget-object v2, p0, LY5/g$a;->c:Landroid/content/Context;

    iget-object v3, p0, LY5/g$a;->d:Landroid/view/View;

    iget-object v4, p0, LY5/g$a;->e:Landroid/widget/TextView;

    iget-object v5, p0, LY5/g$a;->f:LY5/g$i;

    invoke-static/range {v0 .. v5}, LY5/g;->a(LY5/g;LW5/b;Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;LY5/g$i;)V

    return-void
.end method
