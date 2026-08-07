.class public LM8/b$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LM8/b;->a0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LM8/b;


# direct methods
.method public constructor <init>(LM8/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LM8/b$o;->b:LM8/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lo8/b;->g:LM8/c;

    iget-object v0, v0, LM8/c;->a:Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LM8/b$o;->b:LM8/b;

    invoke-static {v0}, LM8/b;->w(LM8/b;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LM8/b$o;->b:LM8/b;

    invoke-static {v0}, LM8/b;->x(LM8/b;)V

    :goto_0
    return-void
.end method
