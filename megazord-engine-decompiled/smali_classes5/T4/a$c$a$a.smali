.class public LT4/a$c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr7/c$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LT4/a$c$a;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LT4/a$c$a;


# direct methods
.method public constructor <init>(LT4/a$c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, LT4/a$c$a$a;->a:LT4/a$c$a;

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

    new-instance v0, LT4/a$c$a$a$a;

    invoke-direct {v0, p0, p1}, LT4/a$c$a$a$a;-><init>(LT4/a$c$a$a;Lr7/c$g;)V

    const/4 p1, 0x1

    invoke-static {p1, v0}, LI7/a;->t1(ZLI7/a$d;)V

    return-void
.end method
