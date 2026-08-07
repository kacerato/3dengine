.class public LQ5/j$W$a;
.super Lr7/c$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LQ5/j$W;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:LQ5/j$W;


# direct methods
.method public constructor <init>(LQ5/j$W;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$path"
        }
    .end annotation

    iput-object p1, p0, LQ5/j$W$a;->b:LQ5/j$W;

    iput-object p2, p0, LQ5/j$W$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Lr7/c$h;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lr7/c$g;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    invoke-super {p0, p1}, Lr7/c$h;->b(Lr7/c$g;)V

    invoke-static {}, LI7/a;->q1()LI7/a;

    move-result-object p1

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LQ5/j$W$a$a;

    invoke-direct {v1, p0, p1}, LQ5/j$W$a$a;-><init>(LQ5/j$W$a;LI7/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
