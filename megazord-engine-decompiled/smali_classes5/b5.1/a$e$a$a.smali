.class public Lb5/a$e$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb5/a$e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb5/a$e$a;


# direct methods
.method public constructor <init>(Lb5/a$e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lb5/a$e$a$a;->a:Lb5/a$e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Lb5/a$e$a$a;->a:Lb5/a$e$a;

    iget-object p1, p1, Lb5/a$e$a;->b:Lb5/a$e;

    iget-object p1, p1, Lb5/a$e;->b:Lb5/a;

    invoke-static {p1}, Lb5/a;->o1(Lb5/a;)Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lb5/a$e$a$a;->a:Lb5/a$e$a;

    iget-object p1, p1, Lb5/a$e$a;->b:Lb5/a$e;

    iget-object p1, p1, Lb5/a$e;->b:Lb5/a;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->A()Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    move-result-object v0

    invoke-static {p1, v0}, Lb5/a;->p1(Lb5/a;Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    :cond_0
    iget-object p1, p0, Lb5/a$e$a$a;->a:Lb5/a$e$a;

    iget-object p1, p1, Lb5/a$e$a;->b:Lb5/a$e;

    iget-object p1, p1, Lb5/a$e;->b:Lb5/a;

    invoke-static {p1}, Lb5/a;->o1(Lb5/a;)Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lb5/a$e$a$a;->a:Lb5/a$e$a;

    iget-object p1, p1, Lb5/a$e$a;->b:Lb5/a$e;

    iget-object p1, p1, Lb5/a$e;->b:Lb5/a;

    invoke-static {p1}, Lb5/a;->o1(Lb5/a;)Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->y()Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings;

    move-result-object p1

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings;->enableCloudSync:Z

    iget-object p1, p0, Lb5/a$e$a$a;->a:Lb5/a$e$a;

    iget-object p1, p1, Lb5/a$e$a;->b:Lb5/a$e;

    iget-object p1, p1, Lb5/a$e;->b:Lb5/a;

    invoke-static {p1}, Lb5/a;->o1(Lb5/a;)Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->J()V

    iget-object p1, p0, Lb5/a$e$a$a;->a:Lb5/a$e$a;

    iget-object p1, p1, Lb5/a$e$a;->b:Lb5/a$e;

    iget-object p1, p1, Lb5/a$e;->b:Lb5/a;

    invoke-static {p1}, Lb5/a;->q1(Lb5/a;)V

    return-void
.end method
