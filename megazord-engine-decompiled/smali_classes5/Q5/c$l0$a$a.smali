.class public LQ5/c$l0$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LQ5/c$l0$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LQ5/c$l0$a;


# direct methods
.method public constructor <init>(LQ5/c$l0$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LQ5/c$l0$a$a;->b:LQ5/c$l0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LQ5/c$l0$a$a;->b:LQ5/c$l0$a;

    iget-object v0, v0, LQ5/c$l0$a;->d:LQ5/c$l0;

    iget-object v0, v0, LQ5/c$l0;->e:LQ5/l;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, LQ5/l;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, LQ5/c$l0$a$a;->b:LQ5/c$l0$a;

    iget-object v0, v0, LQ5/c$l0$a;->c:LI7/a;

    invoke-virtual {v0}, LI7/a;->o1()V

    return-void
.end method
