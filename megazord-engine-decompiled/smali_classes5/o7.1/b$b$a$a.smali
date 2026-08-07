.class public Lo7/b$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo7/b$b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo7/b$b$a;


# direct methods
.method public constructor <init>(Lo7/b$b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lo7/b$b$a$a;->a:Lo7/b$b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Lo7/b$b$a$a;->a:Lo7/b$b$a;

    iget-object p1, p1, Lo7/b$b$a;->b:Lo7/b$b;

    iget-object p1, p1, Lo7/b$b;->b:Lo7/b;

    invoke-virtual {p1}, Ln7/d;->c()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "https://itsmagic.com.br/terms-and-conditions.html"

    invoke-static {v0, p1}, Lbd/i;->o(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method
