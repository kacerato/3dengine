.class public LQ5/j$l0$a$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LQ5/j$l0$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LQ5/j$l0$a$a;


# direct methods
.method public constructor <init>(LQ5/j$l0$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, LQ5/j$l0$a$a$b;->b:LQ5/j$l0$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lod/e;->f()V

    iget-object v0, p0, LQ5/j$l0$a$a$b;->b:LQ5/j$l0$a$a;

    iget-object v0, v0, LQ5/j$l0$a$a;->c:LQ5/j$l0$a;

    iget-object v0, v0, LQ5/j$l0$a;->a:LQ5/j$l0;

    iget-object v0, v0, LQ5/j$l0;->c:LQ5/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LQ5/b;->a()V

    :cond_0
    iget-object v0, p0, LQ5/j$l0$a$a$b;->b:LQ5/j$l0$a$a;

    iget-object v0, v0, LQ5/j$l0$a$a;->b:LI7/a;

    invoke-virtual {v0}, LI7/a;->o1()V

    return-void
.end method
