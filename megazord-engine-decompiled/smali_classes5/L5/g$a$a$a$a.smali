.class public LL5/g$a$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$J;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LL5/g$a$a$a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LL5/g$a$a$a;


# direct methods
.method public constructor <init>(LL5/g$a$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$3"
        }
    .end annotation

    iput-object p1, p0, LL5/g$a$a$a$a;->a:LL5/g$a$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lf8/c;->u0(Ljava/lang/String;)V

    iget-object p1, p0, LL5/g$a$a$a$a;->a:LL5/g$a$a$a;

    iget-object p1, p1, LL5/g$a$a$a;->a:LI7/a;

    invoke-virtual {p1}, LI7/a;->o1()V

    return-void
.end method

.method public b()V
    .locals 1

    invoke-static {}, Lp6/a;->o1()Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget-object v0, p0, LL5/g$a$a$a$a;->a:LL5/g$a$a$a;

    iget-object v0, v0, LL5/g$a$a$a;->a:LI7/a;

    invoke-virtual {v0}, LI7/a;->o1()V

    return-void
.end method

.method public c()V
    .locals 3

    sget-object v0, Lo8/b;->g:LM8/c;

    invoke-static {}, Lf8/c;->o()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, LL5/g$a$a$a$a;->a:LL5/g$a$a$a;

    iget-object v2, v2, LL5/g$a$a$a;->b:LL5/g$a$a;

    iget-object v2, v2, LL5/g$a$a;->a:LL5/g$a;

    iget-object v2, v2, LL5/g$a;->b:LL5/g;

    iget-object v2, v2, LK5/a;->e:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    invoke-virtual {v0, v1, v2}, LM8/c;->c(Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;)V

    iget-object v0, p0, LL5/g$a$a$a$a;->a:LL5/g$a$a$a;

    iget-object v0, v0, LL5/g$a$a$a;->b:LL5/g$a$a;

    iget-object v0, v0, LL5/g$a$a;->a:LL5/g$a;

    iget-object v0, v0, LL5/g$a;->b:LL5/g;

    invoke-virtual {v0}, LK5/a;->f()V

    iget-object v0, p0, LL5/g$a$a$a$a;->a:LL5/g$a$a$a;

    iget-object v0, v0, LL5/g$a$a$a;->a:LI7/a;

    invoke-virtual {v0}, LI7/a;->o1()V

    return-void
.end method

.method public d()V
    .locals 1

    const-string v0, "Ops limit reached:2 exportation\'s per week"

    invoke-static {v0}, Lf8/c;->u0(Ljava/lang/String;)V

    iget-object v0, p0, LL5/g$a$a$a$a;->a:LL5/g$a$a$a;

    iget-object v0, v0, LL5/g$a$a$a;->a:LI7/a;

    invoke-virtual {v0}, LI7/a;->o1()V

    return-void
.end method
