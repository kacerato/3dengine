.class public Ls7/a$f$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls7/a$f$a;->a(LB4/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LB4/d;

.field public final synthetic c:Ljava/text/SimpleDateFormat;

.field public final synthetic d:Ls7/a$f$a;


# direct methods
.method public constructor <init>(Ls7/a$f$a;LB4/d;Ljava/text/SimpleDateFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$2",
            "val$version",
            "val$simpleDateFormat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ls7/a$f$a$a;->d:Ls7/a$f$a;

    iput-object p2, p0, Ls7/a$f$a$a;->b:LB4/d;

    iput-object p3, p0, Ls7/a$f$a$a;->c:Ljava/text/SimpleDateFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Ls7/a$f$a$a;->b:LB4/d;

    invoke-interface {v0}, LB4/d;->e()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Ls7/a$f$a$a;->c:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Ls7/a$f$a$a;->b:LB4/d;

    invoke-interface {v2}, LB4/d;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iget-object v2, p0, Ls7/a$f$a$a;->b:LB4/d;

    invoke-interface {v2}, LB4/d;->getMode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reverted to ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ls7/a$f$a$a;->b:LB4/d;

    invoke-interface {v2}, LB4/d;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/d;->b(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    new-instance v1, Ls7/b;

    invoke-direct {v1}, Ls7/b;-><init>()V

    iget-object v2, p0, Ls7/a$f$a$a;->b:LB4/d;

    invoke-interface {v2}, LB4/d;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ls7/b;->a:Ljava/lang/String;

    iput-object v0, v1, Ls7/b;->b:Ljava/lang/String;

    iget-object v0, p0, Ls7/a$f$a$a;->b:LB4/d;

    iput-object v0, v1, Ls7/b;->c:LB4/d;

    new-instance v0, Ls7/a$f$a$a$a;

    invoke-direct {v0, p0, v1}, Ls7/a$f$a$a$a;-><init>(Ls7/a$f$a$a;Ls7/b;)V

    iput-object v0, v1, Ls7/b;->d:Ls7/a$g;

    iget-object v0, p0, Ls7/a$f$a$a;->d:Ls7/a$f$a;

    iget-object v0, v0, Ls7/a$f$a;->a:Ls7/a$f;

    iget-object v0, v0, Ls7/a$f;->b:Ls7/a;

    invoke-static {v0}, Ls7/a;->u1(Ls7/a;)Lw7/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lw7/a;->g(Ljava/lang/Object;)V

    return-void
.end method
