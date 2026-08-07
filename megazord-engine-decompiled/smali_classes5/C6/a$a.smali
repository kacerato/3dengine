.class public LC6/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD6/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LC6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LC6/a;


# direct methods
.method public constructor <init>(LC6/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LC6/a$a;->a:LC6/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 1

    iget-object v0, p0, LC6/a$a;->a:LC6/a;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, LC6/a$a;->a:LC6/a;

    invoke-static {v0}, LC6/a;->o1(LC6/a;)I

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, LC6/a$a;->a:LC6/a;

    invoke-virtual {v0}, LC6/a;->B1()V

    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    iget-object v0, p0, LC6/a$a;->a:LC6/a;

    invoke-static {v0}, LC6/a;->p1(LC6/a;)Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elementList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LD6/b;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LC6/a$a;->a:LC6/a;

    invoke-virtual {v0, p1}, LC6/a;->A1(Ljava/util/List;)V

    return-void
.end method
