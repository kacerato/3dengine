.class public Ly6/E$p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg4/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly6/E$p;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ly6/E$p;


# direct methods
.method public constructor <init>(Ly6/E$p;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Ly6/E$p$a;->a:Ly6/E$p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSelected()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly6/E$p$a;->a:Ly6/E$p;

    iget-object v0, v0, Ly6/E$p;->a:Lkb/a;

    invoke-virtual {v0}, Lkb/a;->G0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onSelected(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    iget-object v0, p0, Ly6/E$p$a;->a:Ly6/E$p;

    iget-object v0, v0, Ly6/E$p;->a:Lkb/a;

    invoke-virtual {v0, p1}, Lkb/a;->H0(Ljava/lang/String;)V

    iget-object p1, p0, Ly6/E$p$a;->a:Ly6/E$p;

    iget-object p1, p1, Ly6/E$p;->b:Ly6/E;

    invoke-static {p1}, Ly6/E;->u(Ly6/E;)V

    iget-object p1, p0, Ly6/E$p$a;->a:Ly6/E$p;

    iget-object p1, p1, Ly6/E$p;->b:Ly6/E;

    invoke-virtual {p1}, Ly6/E;->P0()V

    iget-object p1, p0, Ly6/E$p$a;->a:Ly6/E$p;

    iget-object p1, p1, Ly6/E$p;->b:Ly6/E;

    invoke-static {p1}, Ly6/E;->v(Ly6/E;)Ly6/X;

    move-result-object p1

    invoke-virtual {p1}, Ly6/X;->i0()V

    return-void
.end method
