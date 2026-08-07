.class public LN5/j$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN5/f$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LN5/j$d;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LN5/j$d;


# direct methods
.method public constructor <init>(LN5/j$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LN5/j$d$a;->a:LN5/j$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorINT"
        }
    .end annotation

    iget-object v0, p0, LN5/j$d$a;->a:LN5/j$d;

    iget-object v0, v0, LN5/j$d;->b:Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->e(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object p1, p0, LN5/j$d$a;->a:LN5/j$d;

    iget-object p1, p1, LN5/j$d;->c:LN5/j;

    invoke-static {p1}, LN5/j;->x1(LN5/j;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, LN5/j$d$a;->a:LN5/j$d;

    iget-object v0, v0, LN5/j$d;->b:Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->c()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, LN5/j$d$a;->a:LN5/j$d;

    iget-object p1, p1, LN5/j$d;->c:LN5/j;

    invoke-static {p1}, LN5/j;->s1(LN5/j;)V

    iget-object p1, p0, LN5/j$d$a;->a:LN5/j$d;

    iget-object p1, p1, LN5/j$d;->c:LN5/j;

    invoke-static {p1}, LN5/j;->v1(LN5/j;)V

    return-void
.end method
