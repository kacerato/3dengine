.class public LY5/c$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LY5/c$c;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/text/Editable;

.field public final synthetic c:LY5/c$c;


# direct methods
.method public constructor <init>(LY5/c$c;Landroid/text/Editable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$s"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LY5/c$c$a;->c:LY5/c$c;

    iput-object p2, p0, LY5/c$c$a;->b:Landroid/text/Editable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, LY5/c$c$a;->b:Landroid/text/Editable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmd/b;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "temp"

    const/4 v4, 0x0

    if-lt v2, v1, :cond_0

    :try_start_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-object v1, p0, LY5/c$c$a;->c:LY5/c$c;

    iget-object v1, v1, LY5/c$c;->d:LW5/b;

    iget-object v1, v1, LW5/b;->b:LX5/h;

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-direct {v2, v3, v0}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, LX5/h;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LY5/c$c$a;->c:LY5/c$c;

    iget-object v1, v1, LY5/c$c;->e:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->d(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LY5/c$c$a;->c:LY5/c$c;

    iget-object v0, v0, LY5/c$c;->d:LW5/b;

    iget-object v0, v0, LW5/b;->b:LX5/h;

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-direct {v1, v3, v4}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, LX5/h;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LY5/c$c$a;->c:LY5/c$c;

    iget-object v1, v1, LY5/c$c;->e:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->d(Ljava/lang/String;Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method
