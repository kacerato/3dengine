.class public LY5/i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX5/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LY5/i;->c(LW5/b;Landroid/view/View;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LW5/b;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:LY5/i;


# direct methods
.method public constructor <init>(LY5/i;LW5/b;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$entry",
            "val$inputField"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LY5/i$c;->c:LY5/i;

    iput-object p2, p0, LY5/i$c;->a:LW5/b;

    iput-object p3, p0, LY5/i$c;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, LY5/i$c;->a:LW5/b;

    iget-object v0, v0, LW5/b;->b:LX5/h;

    invoke-interface {v0}, LX5/h;->get()Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/Variable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, LY5/i$c;->b:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->d(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
