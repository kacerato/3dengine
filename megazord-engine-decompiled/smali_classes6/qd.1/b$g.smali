.class public Lqd/b$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqd/b;->u(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lqd/b;


# direct methods
.method public constructor <init>(Lqd/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lqd/b$g;->b:Lqd/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Lqd/b$g;->b:Lqd/b;

    invoke-static {p1}, Lqd/b;->f(Lqd/b;)Lrd/b;

    move-result-object p1

    invoke-interface {p1}, Lrd/b;->dismiss()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lo8/b;->b:Lcom/itsmagic/engine/Core/Components/ProjectController/a;

    iget-object v0, p0, Lqd/b$g;->b:Lqd/b;

    invoke-static {v0}, Lqd/b;->k(Lqd/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lqd/b$g;->b:Lqd/b;

    invoke-static {v1}, Lqd/b;->g(Lqd/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lqd/b$g;->b:Lqd/b;

    invoke-static {v0}, Lqd/b;->b(Lqd/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lqd/b$g;->b:Lqd/b;

    invoke-static {v0}, Lqd/b;->i(Lqd/b;)Lqd/a;

    move-result-object v0

    invoke-interface {v0}, Lqd/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lqd/b$g;->b:Lqd/b;

    invoke-static {v0}, Lqd/b;->i(Lqd/b;)Lqd/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lqd/a;->onSelected(Ljava/lang/String;)V

    return-void
.end method
