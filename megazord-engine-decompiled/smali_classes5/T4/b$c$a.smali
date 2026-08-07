.class public LT4/b$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV3/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LT4/b$c;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LT4/b$c;


# direct methods
.method public constructor <init>(LT4/b$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LT4/b$c$a;->a:LT4/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "intent",
            "activity"
        }
    .end annotation

    new-instance p1, LT4/b$c$a$a;

    invoke-direct {p1, p0, p3}, LT4/b$c$a$a;-><init>(LT4/b$c$a;Landroid/content/Intent;)V

    const/4 p2, 0x1

    invoke-static {p2, p1}, LI7/a;->t1(ZLI7/a$d;)V

    return-void
.end method
