.class public Lc8/b$b;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lc8/b;


# direct methods
.method public constructor <init>(Lc8/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lc8/b$b;->b:Lc8/b;

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
            "view"
        }
    .end annotation

    iget-object v0, p0, Lc8/b$b;->b:Lc8/b;

    invoke-static {v0}, Lc8/b;->a(Lc8/b;)Lc8/c;

    move-result-object v0

    invoke-virtual {v0}, Lc8/c;->h()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    invoke-static {}, Lbd/i;->b()V

    iget-object v0, p0, Lc8/b$b;->b:Lc8/b;

    invoke-static {v0}, Lc8/b;->b(Lc8/b;)Lc8/b$c;

    move-result-object v0

    invoke-virtual {v0}, Lc8/b$c;->b()Lc8/b$d;

    move-result-object v0

    invoke-interface {v0, p1}, Lc8/b$d;->onClick(Landroid/view/View;)V

    return-void
.end method
