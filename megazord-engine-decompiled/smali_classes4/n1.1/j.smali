.class public final Ln1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/p;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Landroid/os/Bundle;

.field public final synthetic c:Landroid/os/Bundle;

.field public final synthetic d:Ln1/a;


# direct methods
.method public constructor <init>(Ln1/a;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Ln1/j;->d:Ln1/a;

    iput-object p2, p0, Ln1/j;->a:Landroid/app/Activity;

    iput-object p3, p0, Ln1/j;->b:Landroid/os/Bundle;

    iput-object p4, p0, Ln1/j;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ln1/e;)V
    .locals 3

    iget-object p1, p0, Ln1/j;->d:Ln1/a;

    invoke-static {p1}, Ln1/a;->p(Ln1/a;)Ln1/e;

    move-result-object p1

    iget-object v0, p0, Ln1/j;->a:Landroid/app/Activity;

    iget-object v1, p0, Ln1/j;->b:Landroid/os/Bundle;

    iget-object v2, p0, Ln1/j;->c:Landroid/os/Bundle;

    invoke-interface {p1, v0, v1, v2}, Ln1/e;->f(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public final c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
