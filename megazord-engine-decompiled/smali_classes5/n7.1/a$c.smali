.class public Ln7/a$c;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln7/a;->B0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ln7/a;


# direct methods
.method public constructor <init>(Ln7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Ln7/a$c;->b:Ln7/a;

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

    iget-object p1, p0, Ln7/a$c;->b:Ln7/a;

    invoke-static {p1}, Ln7/a;->o1(Ln7/a;)I

    move-result p1

    iget-object v0, p0, Ln7/a$c;->b:Ln7/a;

    invoke-static {v0}, Ln7/a;->t1(Ln7/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Ln7/a$c;->b:Ln7/a;

    invoke-static {p1}, Ln7/a;->u1(Ln7/a;)Landroid/widget/Button;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Ln7/a$c;->b:Ln7/a;

    invoke-static {p1}, Ln7/a;->t1(Ln7/a;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Ln7/a$c;->b:Ln7/a;

    invoke-static {v0}, Ln7/a;->o1(Ln7/a;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln7/d;

    new-instance v0, Ln7/a$c$a;

    invoke-direct {v0, p0}, Ln7/a$c$a;-><init>(Ln7/a$c;)V

    invoke-virtual {p1, v0}, Ln7/d;->h(Ln7/b;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Can\'t advance more than stages count!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
