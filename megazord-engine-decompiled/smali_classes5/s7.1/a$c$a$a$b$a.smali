.class public Ls7/a$c$a$a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr7/c$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls7/a$c$a$a$b;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ls7/a$c$a$a$b;


# direct methods
.method public constructor <init>(Ls7/a$c$a$a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$4"
        }
    .end annotation

    iput-object p1, p0, Ls7/a$c$a$a$b$a;->a:Ls7/a$c$a$a$b;

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

    iget-object p1, p0, Ls7/a$c$a$a$b$a;->a:Ls7/a$c$a$a$b;

    iget-object p1, p1, Ls7/a$c$a$a$b;->a:Ls7/a$c$a$a;

    iget-object p1, p1, Ls7/a$c$a$a;->c:Ls7/a$c$a;

    iget-object p1, p1, Ls7/a$c$a;->b:Ls7/b;

    iget-object v0, p1, Ls7/b;->d:Ls7/a$g;

    iget-object p1, p1, Ls7/b;->c:LB4/d;

    invoke-interface {v0, p1}, Ls7/a$g;->c(LB4/d;)V

    return-void
.end method
