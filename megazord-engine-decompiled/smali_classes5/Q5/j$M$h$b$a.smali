.class public LQ5/j$M$h$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LQ5/j$M$h$b;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LQ5/j$M$h$b;


# direct methods
.method public constructor <init>(LQ5/j$M$h$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, LQ5/j$M$h$b$a;->b:LQ5/j$M$h$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LQ5/j$M$h$b$a;->b:LQ5/j$M$h$b;

    iget-object v0, v0, LQ5/j$M$h$b;->a:LQ5/j$M$h;

    iget-object v0, v0, LQ5/j$M$h;->b:LQ5/j$M;

    iget-object v0, v0, LQ5/j$M;->d:LQ5/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LQ5/b;->a()V

    :cond_0
    return-void
.end method
