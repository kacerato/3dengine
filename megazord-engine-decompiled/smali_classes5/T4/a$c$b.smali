.class public LT4/a$c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LT4/a$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LT4/a$c;


# direct methods
.method public constructor <init>(LT4/a$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LT4/a$c$b;->a:LT4/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    sget-object p1, Lo8/b;->f:LU8/a;

    iget-object p1, p1, LU8/a;->a:LV8/a;

    iget-object v0, p0, LT4/a$c$b;->a:LT4/a$c;

    iget-object v0, v0, LT4/a$c;->e:LT4/a;

    invoke-static {v0}, LT4/a;->h(LT4/a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, LV8/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, LT4/a$c$b;->a:LT4/a$c;

    iget-object p1, p1, LT4/a$c;->c:LU4/b;

    invoke-virtual {p1}, LU4/b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p1, "Export backup"

    const-string v1, "zip"

    invoke-static {v0, p1, v1}, Lbd/i;->t(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
