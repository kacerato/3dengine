.class public LQ5/d$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LQ5/d;->y1(LI7/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LI7/a;

.field public final synthetic c:LQ5/d;


# direct methods
.method public constructor <init>(LQ5/d;LI7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$finalLoading"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LQ5/d$f;->c:LQ5/d;

    iput-object p2, p0, LQ5/d$f;->b:LI7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LQ5/d$f;->c:LQ5/d;

    invoke-static {v0}, LQ5/d;->s1(LQ5/d;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LQ5/d$f;->c:LQ5/d;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/h;->i(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    new-instance v1, LQ5/d$f$a;

    invoke-direct {v1, p0, v0}, LQ5/d$f$a;-><init>(LQ5/d$f;Ljava/util/List;)V

    invoke-static {v1}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
