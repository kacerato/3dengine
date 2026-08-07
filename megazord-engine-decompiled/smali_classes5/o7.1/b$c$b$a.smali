.class public Lo7/b$c$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo7/b$c$b;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo7/b$c$b;


# direct methods
.method public constructor <init>(Lo7/b$c$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lo7/b$c$b$a;->a:Lo7/b$c$b;

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

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed"

    invoke-static {v0, p1}, Lr7/i;->x1(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lo7/b$c$b$a;->a:Lo7/b$c$b;

    iget-object p1, p1, Lo7/b$c$b;->a:Lo7/b$c;

    iget-object p1, p1, Lo7/b$c;->a:Ln7/b;

    invoke-interface {p1}, Ln7/b;->b()V

    return-void
.end method

.method public b()V
    .locals 1

    invoke-static {}, Lp6/a;->o1()Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget-object v0, p0, Lo7/b$c$b$a;->a:Lo7/b$c$b;

    iget-object v0, v0, Lo7/b$c$b;->a:Lo7/b$c;

    iget-object v0, v0, Lo7/b$c;->a:Ln7/b;

    invoke-interface {v0}, Ln7/b;->b()V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    iget-object v0, p0, Lo7/b$c$b$a;->a:Lo7/b$c$b;

    iget-object v0, v0, Lo7/b$c$b;->a:Lo7/b$c;

    iget-object v0, v0, Lo7/b$c;->a:Ln7/b;

    invoke-interface {v0}, Ln7/b;->a()V

    return-void
.end method
