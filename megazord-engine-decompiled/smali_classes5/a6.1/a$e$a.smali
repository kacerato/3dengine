.class public La6/a$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrd/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La6/a$e;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La6/a$e;


# direct methods
.method public constructor <init>(La6/a$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, La6/a$e$a;->a:La6/a$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(LCd/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LCd/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, La6/a$e$a;->a:La6/a$e;

    iget-object v0, v0, La6/a$e;->d:La6/a;

    invoke-static {v0}, La6/a;->r(La6/a;)La6/a$k;

    move-result-object v0

    invoke-virtual {p1}, LCd/b;->f()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, La6/a$k;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, La6/a$e$a;->a:La6/a$e;

    iget-object p1, p1, La6/a$e;->d:La6/a;

    invoke-static {p1}, La6/a;->r(La6/a;)La6/a$k;

    move-result-object p1

    const-string v0, ""

    invoke-interface {p1, v0}, La6/a$k;->b(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, La6/a$e$a;->a:La6/a$e;

    iget-object p1, p1, La6/a$e;->d:La6/a;

    invoke-static {p1}, La6/a;->t(La6/a;)V

    iget-object p1, p0, La6/a$e$a;->a:La6/a$e;

    iget-object p1, p1, La6/a$e;->d:La6/a;

    invoke-static {p1}, La6/a;->u(La6/a;)V

    return-void
.end method
