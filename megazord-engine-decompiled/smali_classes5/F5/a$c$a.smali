.class public LF5/a$c$a;
.super Lr7/l$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LF5/a$c;->onClick(Landroid/view/View;Landroid/content/Context;Le8/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le8/c;

.field public final synthetic b:LF5/a$c;


# direct methods
.method public constructor <init>(LF5/a$c;Le8/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$tbButton"
        }
    .end annotation

    iput-object p1, p0, LF5/a$c$a;->b:LF5/a$c;

    iput-object p2, p0, LF5/a$c$a;->a:Le8/c;

    invoke-direct {p0}, Lr7/l$h;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lr7/l$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    invoke-super {p0, p1}, Lr7/l$h;->b(Lr7/l$g;)V

    sget-object p1, Lo8/b;->i:Ls8/a;

    iget-object p1, p1, Ls8/a;->a:Ls8/b;

    iget-object p1, p1, Ls8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v0, LF5/a$c$a$a;

    invoke-direct {v0, p0, p1}, LF5/a$c$a$a;-><init>(LF5/a$c$a;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    sget-object p1, Lo8/b;->h:Lt8/f;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lt8/f;->h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object p1, p0, LF5/a$c$a;->a:Le8/c;

    invoke-virtual {p1}, Le8/g;->g()V

    return-void
.end method
