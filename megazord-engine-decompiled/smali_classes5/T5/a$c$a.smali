.class public LT5/a$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LT5/a$c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LT5/a$c;


# direct methods
.method public constructor <init>(LT5/a$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LT5/a$c$a;->b:LT5/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LT5/a$c$a;->b:LT5/a$c;

    iget-object v0, v0, LT5/a$c;->a:LT5/a;

    new-instance v1, LT5/b;

    invoke-direct {v1, v0}, LT5/b;-><init>(LT5/a;)V

    invoke-static {v1}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    iget-boolean v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->maximizeGameViewWhenPlay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LT5/a$c$a;->b:LT5/a$c;

    iget-object v0, v0, LT5/a$c;->a:LT5/a;

    new-instance v1, LT5/c;

    invoke-direct {v1, v0}, LT5/c;-><init>(LT5/a;)V

    invoke-static {v1}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
