.class public LW5/c$g;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LW5/c;->p(LW5/c$h;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LW5/d;

.field public final synthetic c:LW5/c$h;

.field public final synthetic d:I

.field public final synthetic e:LW5/c;


# direct methods
.method public constructor <init>(LW5/c;LW5/d;LW5/c$h;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$item",
            "val$holder",
            "val$position"
        }
    .end annotation

    iput-object p1, p0, LW5/c$g;->e:LW5/c;

    iput-object p2, p0, LW5/c$g;->b:LW5/d;

    iput-object p3, p0, LW5/c$g;->c:LW5/c$h;

    iput p4, p0, LW5/c$g;->d:I

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, LW5/c$g;->b:LW5/d;

    iget-object p1, p1, LW5/d;->f:LX5/a;

    if-eqz p1, :cond_0

    iget-object v0, p0, LW5/c$g;->c:LW5/c$h;

    iget-object v0, v0, LW5/c$h;->a:Landroid/widget/Button;

    iget v1, p0, LW5/c$g;->d:I

    invoke-interface {p1, v0, v1}, LX5/a;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
