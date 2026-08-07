.class public Ln7/a$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln7/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln7/a$c;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln7/a$c;


# direct methods
.method public constructor <init>(Ln7/a$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Ln7/a$c$a;->a:Ln7/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Ln7/a$c$a;->a:Ln7/a$c;

    iget-object v0, v0, Ln7/a$c;->b:Ln7/a;

    invoke-static {v0}, Ln7/a;->q1(Ln7/a;)I

    iget-object v0, p0, Ln7/a$c$a;->a:Ln7/a$c;

    iget-object v0, v0, Ln7/a$c;->b:Ln7/a;

    invoke-static {v0}, Ln7/a;->s1(Ln7/a;)V

    iget-object v0, p0, Ln7/a$c$a;->a:Ln7/a$c;

    iget-object v0, v0, Ln7/a$c;->b:Ln7/a;

    invoke-static {v0}, Ln7/a;->u1(Ln7/a;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Ln7/a$c$a;->a:Ln7/a$c;

    iget-object v0, v0, Ln7/a$c;->b:Ln7/a;

    invoke-static {v0}, Ln7/a;->u1(Ln7/a;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
