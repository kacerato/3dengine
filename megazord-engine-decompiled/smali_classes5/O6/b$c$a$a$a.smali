.class public LO6/b$c$a$a$a;
.super Lr7/c$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LO6/b$c$a$a;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LO6/b$c$a$a;


# direct methods
.method public constructor <init>(LO6/b$c$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$3"
        }
    .end annotation

    iput-object p1, p0, LO6/b$c$a$a$a;->a:LO6/b$c$a$a;

    invoke-direct {p0}, Lr7/c$h;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lr7/c$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    invoke-super {p0, p1}, Lr7/c$h;->b(Lr7/c$g;)V

    new-instance p1, LO6/b$c$a$a$a$a;

    invoke-direct {p1, p0}, LO6/b$c$a$a$a$a;-><init>(LO6/b$c$a$a$a;)V

    const/4 v0, 0x1

    invoke-static {v0, p1}, LI7/a;->t1(ZLI7/a$d;)V

    return-void
.end method
