.class public LC4/b$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC4/b$a$a;->a(LH4/f;Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;

.field public final synthetic c:LH4/f;

.field public final synthetic d:LC4/b$a$a;


# direct methods
.method public constructor <init>(LC4/b$a$a;Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;LH4/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$hub",
            "val$panelIntent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LC4/b$a$a$a;->d:LC4/b$a$a;

    iput-object p2, p0, LC4/b$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;

    iput-object p3, p0, LC4/b$a$a$a;->c:LH4/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LC4/b$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;

    iget-object v1, p0, LC4/b$a$a$a;->c:LH4/f;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;->p0(LH4/f;)Z

    return-void
.end method
