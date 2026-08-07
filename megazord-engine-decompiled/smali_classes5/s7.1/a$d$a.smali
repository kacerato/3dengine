.class public Ls7/a$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr7/c$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls7/a$d;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ls7/a$d;


# direct methods
.method public constructor <init>(Ls7/a$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Ls7/a$d$a;->a:Ls7/a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lr7/c$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    invoke-interface {p1}, Lr7/c$g;->dismiss()V

    return-void
.end method

.method public b(Lr7/c$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialogC"
        }
    .end annotation

    invoke-interface {p1}, Lr7/c$g;->dismiss()V

    iget-object p1, p0, Ls7/a$d$a;->a:Ls7/a$d;

    iget-object p1, p1, Ls7/a$d;->b:Ls7/a;

    invoke-static {p1}, Ls7/a;->s1(Ls7/a;)Ls7/b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ls7/a$d$a;->a:Ls7/a$d;

    iget-object p1, p1, Ls7/a$d;->b:Ls7/a;

    invoke-static {p1}, Ls7/a;->s1(Ls7/a;)Ls7/b;

    move-result-object p1

    iget-object p1, p1, Ls7/b;->c:LB4/d;

    invoke-interface {p1}, LB4/d;->a()V

    :cond_0
    iget-object p1, p0, Ls7/a$d$a;->a:Ls7/a$d;

    iget-object p1, p1, Ls7/a$d;->b:Ls7/a;

    invoke-static {p1}, Ls7/a;->u1(Ls7/a;)Lw7/a;

    move-result-object p1

    iget-object v0, p0, Ls7/a$d$a;->a:Ls7/a$d;

    iget-object v0, v0, Ls7/a$d;->b:Ls7/a;

    invoke-static {v0}, Ls7/a;->s1(Ls7/a;)Ls7/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lw7/a;->r(Ljava/lang/Object;)V

    iget-object p1, p0, Ls7/a$d$a;->a:Ls7/a$d;

    iget-object p1, p1, Ls7/a$d;->b:Ls7/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ls7/a;->t1(Ls7/a;Ls7/b;)Ls7/b;

    iget-object p1, p0, Ls7/a$d$a;->a:Ls7/a$d;

    iget-object p1, p1, Ls7/a$d;->b:Ls7/a;

    invoke-virtual {p1, v0}, Ls7/a;->w1(Ls7/b;)V

    return-void
.end method
