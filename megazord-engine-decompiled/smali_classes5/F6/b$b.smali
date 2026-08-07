.class public LF6/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LF6/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lo6/a;

.field public final synthetic c:LI7/a;

.field public final synthetic d:LF6/b;


# direct methods
.method public constructor <init>(LF6/b;Lo6/a;LI7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$so",
            "val$loading"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LF6/b$b;->d:LF6/b;

    iput-object p2, p0, LF6/b$b;->b:Lo6/a;

    iput-object p3, p0, LF6/b$b;->c:LI7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LF6/b$b;->b:Lo6/a;

    invoke-virtual {v0}, Lo6/a;->g()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LF6/b;->p([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LF6/b$b;->b:Lo6/a;

    invoke-virtual {v1}, Lo6/a;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ln6/b$k;->NotTemplate:Ln6/b$k;

    goto :goto_0

    :cond_0
    sget-object v1, Ln6/b$k;->DonotMatter:Ln6/b$k;

    :goto_0
    iget-object v2, p0, LF6/b$b;->b:Lo6/a;

    invoke-virtual {v2}, Lo6/a;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, LF6/b$b;->b:Lo6/a;

    invoke-static {v3}, LF6/b;->q(Lo6/a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Ln6/b;->l0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln6/b$k;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, LF6/b$b;->d:LF6/b;

    invoke-static {v1}, LF6/b;->r(LF6/b;)I

    move-result v1

    iget-object v2, p0, LF6/b$b;->b:Lo6/a;

    invoke-virtual {v2}, Lo6/a;->d()I

    move-result v2

    invoke-static {v0, v1, v2}, LF6/b;->t(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    new-instance v1, LF6/b$b$a;

    invoke-direct {v1, p0, v0}, LF6/b$b$a;-><init>(LF6/b$b;Ljava/util/List;)V

    invoke-static {v1}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
