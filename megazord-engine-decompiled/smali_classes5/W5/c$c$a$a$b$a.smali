.class public LW5/c$c$a$a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LW5/c$c$a$a$b;->onClick(Landroid/view/View;Landroid/content/Context;Le8/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LW5/c$c$a$a$b;


# direct methods
.method public constructor <init>(LW5/c$c$a$a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$4"
        }
    .end annotation

    iput-object p1, p0, LW5/c$c$a$a$b$a;->b:LW5/c$c$a$a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LW5/c$c$a$a$b$a;->b:LW5/c$c$a$a$b;

    iget-object v0, v0, LW5/c$c$a$a$b;->a:LW5/c$c$a$a;

    iget-object v0, v0, LW5/c$c$a$a;->b:LW5/c$c$a;

    iget-object v0, v0, LW5/c$c$a;->d:LW5/c$c;

    iget-object v0, v0, LW5/c$c;->b:LW5/d;

    iget-object v0, v0, LW5/d;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    move-result-object v0

    iget-object v1, p0, LW5/c$c$a$a$b$a;->b:LW5/c$c$a$a$b;

    iget-object v1, v1, LW5/c$c$a$a$b;->a:LW5/c$c$a$a;

    iget-object v1, v1, LW5/c$c$a$a;->b:LW5/c$c$a;

    iget-object v1, v1, LW5/c$c$a;->d:LW5/c$c;

    iget-object v1, v1, LW5/c$c;->b:LW5/d;

    iget-object v1, v1, LW5/d;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->B(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    new-instance v0, LW5/c$c$a$a$b$a$a;

    invoke-direct {v0, p0}, LW5/c$c$a$a$b$a$a;-><init>(LW5/c$c$a$a$b$a;)V

    invoke-static {v0}, Lc9/a;->A(Ljava/lang/Runnable;)V

    return-void
.end method
