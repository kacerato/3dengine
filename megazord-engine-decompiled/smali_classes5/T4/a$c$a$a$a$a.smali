.class public LT4/a$c$a$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LT4/a$c$a$a$a;->a(LI7/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LI7/a;

.field public final synthetic c:LT4/a$c$a$a$a;


# direct methods
.method public constructor <init>(LT4/a$c$a$a$a;LI7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$4",
            "val$loadingBar"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LT4/a$c$a$a$a$a;->c:LT4/a$c$a$a$a;

    iput-object p2, p0, LT4/a$c$a$a$a$a;->b:LI7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, LT4/a$c$a$a$a$a;->c:LT4/a$c$a$a$a;

    iget-object v0, v0, LT4/a$c$a$a$a;->b:LT4/a$c$a$a;

    iget-object v0, v0, LT4/a$c$a$a;->a:LT4/a$c$a;

    iget-object v0, v0, LT4/a$c$a;->a:LT4/a$c;

    iget-object v0, v0, LT4/a$c;->c:LU4/b;

    invoke-virtual {v0}, LU4/b;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lo8/b;->f:LU8/a;

    iget-object v1, v1, LU8/a;->a:LV8/a;

    iget-object v2, p0, LT4/a$c$a$a$a$a;->c:LT4/a$c$a$a$a;

    iget-object v2, v2, LT4/a$c$a$a$a;->b:LT4/a$c$a$a;

    iget-object v2, v2, LT4/a$c$a$a;->a:LT4/a$c$a;

    iget-object v2, v2, LT4/a$c$a;->a:LT4/a$c;

    iget-object v2, v2, LT4/a$c;->e:LT4/a;

    invoke-static {v2}, LT4/a;->h(LT4/a;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, LV8/a;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LGd/e;->n(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/TextOutputActivity;->h(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    new-instance v1, LT4/a$c$a$a$a$a$a;

    invoke-direct {v1, p0, v0}, LT4/a$c$a$a$a$a$a;-><init>(LT4/a$c$a$a$a$a;Z)V

    invoke-static {v1}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
