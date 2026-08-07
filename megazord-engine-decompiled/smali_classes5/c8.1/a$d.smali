.class public Lc8/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/a;->B0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lc8/a;


# direct methods
.method public constructor <init>(Lc8/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lc8/a$d;->b:Lc8/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Lc8/a$d;->b:Lc8/a;

    invoke-static {p1}, Lc8/a;->s1(Lc8/a;)Lt6/b;

    move-result-object p1

    invoke-virtual {p1}, Lt6/b;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lc8/a$d;->b:Lc8/a;

    invoke-static {p1}, Lc8/a;->t1(Lc8/a;)Lt6/b;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lt6/b;->d(Z)V

    :cond_0
    iget-object p1, p0, Lc8/a$d;->b:Lc8/a;

    invoke-static {p1}, Lc8/a;->q1(Lc8/a;)Lo6/a;

    move-result-object p1

    iget-object v0, p0, Lc8/a$d;->b:Lc8/a;

    invoke-static {v0}, Lc8/a;->s1(Lc8/a;)Lt6/b;

    move-result-object v0

    invoke-virtual {v0}, Lt6/b;->c()Z

    move-result v0

    invoke-virtual {p1, v0}, Lo6/a;->p(Z)V

    iget-object p1, p0, Lc8/a$d;->b:Lc8/a;

    invoke-static {p1}, Lc8/a;->q1(Lc8/a;)Lo6/a;

    move-result-object p1

    iget-object v0, p0, Lc8/a$d;->b:Lc8/a;

    invoke-static {v0}, Lc8/a;->t1(Lc8/a;)Lt6/b;

    move-result-object v0

    invoke-virtual {v0}, Lt6/b;->c()Z

    move-result v0

    invoke-virtual {p1, v0}, Lo6/a;->q(Z)V

    iget-object p1, p0, Lc8/a$d;->b:Lc8/a;

    invoke-static {p1}, Lc8/a;->r1(Lc8/a;)Lc8/a$f;

    move-result-object p1

    invoke-interface {p1}, Lc8/a$f;->a()V

    return-void
.end method
