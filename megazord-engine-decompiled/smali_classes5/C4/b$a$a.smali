.class public LC4/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC4/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LC4/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LC4/b$a;


# direct methods
.method public constructor <init>(LC4/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LC4/b$a$a;->a:LC4/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LH4/f;Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "panelIntent",
            "panelsController"
        }
    .end annotation

    instance-of v0, p1, LH4/c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LH4/c;

    iget-object v0, v0, LH4/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;->J0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;-><init>()V

    new-instance v1, LC4/b$a$a$a;

    invoke-direct {v1, p0, v0, p1}, LC4/b$a$a$a;-><init>(LC4/b$a$a;Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;LH4/f;)V

    invoke-static {v1}, Lf8/c;->c0(Ljava/lang/Runnable;)V

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->v(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
