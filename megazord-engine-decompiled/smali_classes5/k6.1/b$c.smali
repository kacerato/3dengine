.class public Lk6/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$H;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk6/b;->b()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk6/b;


# direct methods
.method public constructor <init>(Lk6/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lk6/b$c;->a:Lk6/b;

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

    iget-object v0, p0, Lk6/b$c;->a:Lk6/b;

    invoke-static {v0}, Lk6/b;->z(Lk6/b;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lk6/b$c;->a:Lk6/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lk6/b;->B(Lk6/b;Z)Z

    return-void
.end method

.method public b()V
    .locals 2

    invoke-static {}, Lp6/a;->o1()Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget-object v0, p0, Lk6/b$c;->a:Lk6/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lk6/b;->B(Lk6/b;Z)Z

    return-void
.end method

.method public onSuccess()V
    .locals 2

    iget-object v0, p0, Lk6/b$c;->a:Lk6/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lk6/b;->A(Lk6/b;Z)Z

    iget-object v0, p0, Lk6/b$c;->a:Lk6/b;

    const-string v1, "RecoveryEmailSent"

    invoke-virtual {v0, v1}, LK7/c;->n(Ljava/lang/String;)V

    iget-object v0, p0, Lk6/b$c;->a:Lk6/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lk6/b;->B(Lk6/b;Z)Z

    return-void
.end method
