.class public LQ5/j$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LQ5/j$c;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LI7/a;

.field public final synthetic c:LQ5/j$c;


# direct methods
.method public constructor <init>(LQ5/j$c;LI7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$loading"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LQ5/j$c$a;->c:LQ5/j$c;

    iput-object p2, p0, LQ5/j$c$a;->b:LI7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LQ5/j$c$a;->c:LQ5/j$c;

    iget-object v1, v0, LQ5/j$c;->a:Landroid/content/Context;

    iget-object v0, v0, LQ5/j$c;->b:Ljava/lang/String;

    invoke-static {v1, v0}, LQ5/j;->d(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, LQ5/j$c$a$a;

    invoke-direct {v0, p0}, LQ5/j$c$a$a;-><init>(LQ5/j$c$a;)V

    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
