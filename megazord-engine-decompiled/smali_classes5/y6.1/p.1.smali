.class public final synthetic Ly6/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# instance fields
.field public final synthetic a:Ly6/E;

.field public final synthetic b:I

.field public final synthetic c:Lxc/a;

.field public final synthetic d:I

.field public final synthetic e:Lya/H;


# direct methods
.method public synthetic constructor <init>(Ly6/E;ILxc/a;ILya/H;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly6/p;->a:Ly6/E;

    iput p2, p0, Ly6/p;->b:I

    iput-object p3, p0, Ly6/p;->c:Lxc/a;

    iput p4, p0, Ly6/p;->d:I

    iput-object p5, p0, Ly6/p;->e:Lya/H;

    return-void
.end method


# virtual methods
.method public final onSelected(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Ly6/p;->a:Ly6/E;

    iget v1, p0, Ly6/p;->b:I

    iget-object v2, p0, Ly6/p;->c:Lxc/a;

    iget v3, p0, Ly6/p;->d:I

    iget-object v4, p0, Ly6/p;->e:Lya/H;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Ly6/E;->p(Ly6/E;ILxc/a;ILya/H;Landroid/view/View;)V

    return-void
.end method
