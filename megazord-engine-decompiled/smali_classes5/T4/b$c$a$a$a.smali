.class public LT4/b$c$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LT4/b$c$a$a;->a(LI7/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LI7/a;

.field public final synthetic c:LT4/b$c$a$a;


# direct methods
.method public constructor <init>(LT4/b$c$a$a;LI7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$3",
            "val$loading"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LT4/b$c$a$a$a;->c:LT4/b$c$a$a;

    iput-object p2, p0, LT4/b$c$a$a$a;->b:LI7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(LT4/b;)V
    .locals 0

    invoke-static {p0}, LT4/b$c$a$a$a;->b(LT4/b;)V

    return-void
.end method

.method public static synthetic b(LT4/b;)V
    .locals 0

    invoke-static {p0}, LT4/b;->p1(LT4/b;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, LT4/b$c$a$a$a;->c:LT4/b$c$a$a;

    iget-object v0, v0, LT4/b$c$a$a;->a:Landroid/content/Intent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lf8/c;->o()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.itsmagic.engine"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lod/a;->c(Landroid/content/Context;Landroid/net/Uri;)Lod/a$a;

    move-result-object v0

    iget-object v1, v0, Lod/a$a;->c:Ljava/lang/String;

    invoke-static {v1}, Lf8/c;->u0(Ljava/lang/String;)V

    invoke-virtual {v0}, Lod/a$a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LT4/b$c$a$a$a;->c:LT4/b$c$a$a;

    iget-object v0, v0, LT4/b$c$a$a;->b:LT4/b$c$a;

    iget-object v0, v0, LT4/b$c$a;->a:LT4/b$c;

    iget-object v0, v0, LT4/b$c;->b:LT4/b;

    new-instance v1, LT4/c;

    invoke-direct {v1, v0}, LT4/c;-><init>(LT4/b;)V

    invoke-static {v1}, Lf8/c;->j0(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, LT4/b$c$a$a$a;->b:LI7/a;

    invoke-virtual {v0}, LI7/a;->o1()V

    return-void

    :goto_1
    iget-object v1, p0, LT4/b$c$a$a$a;->b:LI7/a;

    invoke-virtual {v1}, LI7/a;->o1()V

    throw v0
.end method
