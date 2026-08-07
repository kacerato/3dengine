.class public Lo7/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo7/a;->h(Ln7/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln7/b;

.field public final synthetic b:Lo7/a;


# direct methods
.method public constructor <init>(Lo7/a;Ln7/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$nextListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lo7/a$d;->b:Lo7/a;

    iput-object p2, p0, Lo7/a$d;->a:Ln7/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    iget-object v0, p0, Lo7/a$d;->b:Lo7/a;

    invoke-static {v0}, Lo7/a;->r(Lo7/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lo7/a$d;->a:Ln7/b;

    invoke-interface {p1}, Ln7/b;->b()V

    return-void
.end method

.method public b()V
    .locals 1

    invoke-static {}, Lp6/a;->o1()Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget-object v0, p0, Lo7/a$d;->a:Ln7/b;

    invoke-interface {v0}, Ln7/b;->b()V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    iget-object v0, p0, Lo7/a$d;->b:Lo7/a;

    invoke-virtual {v0}, Ln7/d;->i()V

    return-void
.end method
