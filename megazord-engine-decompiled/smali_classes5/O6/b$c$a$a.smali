.class public LO6/b$c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LO6/b$c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LO6/b$c$a;


# direct methods
.method public constructor <init>(LO6/b$c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, LO6/b$c$a$a;->a:LO6/b$c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, LO6/b$c$a$a;->a:LO6/b$c$a;

    iget-object p1, p1, LO6/b$c$a;->b:Ljava/lang/String;

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Warning!"

    const-string v0, "Unable to delete an open project"

    invoke-static {p1, v0}, Lr7/i;->x1(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, LO6/b$c$a$a$a;

    invoke-direct {p1, p0}, LO6/b$c$a$a$a;-><init>(LO6/b$c$a$a;)V

    const-string v0, "Attention!"

    const-string v1, "Are you sure you want to delete the project?"

    invoke-static {v0, v1, p1}, Lr7/c;->x1(Ljava/lang/String;Ljava/lang/String;Lr7/c$i;)V

    :goto_0
    return-void
.end method
