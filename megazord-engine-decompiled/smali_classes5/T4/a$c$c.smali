.class public LT4/a$c$c;
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

    iput-object p1, p0, LT4/a$c$c;->a:LT4/a$c;

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

    iget-object p1, p0, LT4/a$c$c;->a:LT4/a$c;

    iget-object p1, p1, LT4/a$c;->e:LT4/a;

    invoke-static {p1}, LT4/a;->h(LT4/a;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, LT4/a$c$c;->a:LT4/a$c;

    iget-object v0, v0, LT4/a$c;->c:LU4/b;

    invoke-virtual {v0}, LU4/b;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, LT4/a$c$c$a;

    invoke-direct {v1, p0}, LT4/a$c$c$a;-><init>(LT4/a$c$c;)V

    invoke-static {p1, v0, v1}, LR8/a;->b(Landroid/content/Context;Ljava/lang/String;LR8/b;)V

    return-void
.end method
