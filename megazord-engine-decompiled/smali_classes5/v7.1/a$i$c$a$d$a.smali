.class public Lv7/a$i$c$a$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt8/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv7/a$i$c$a$d;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lv7/a$i$c$a$d;


# direct methods
.method public constructor <init>(Lv7/a$i$c$a$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$3"
        }
    .end annotation

    iput-object p1, p0, Lv7/a$i$c$a$d$a;->a:Lv7/a$i$c$a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "act"
        }
    .end annotation

    new-instance p1, Lv7/a$i$c$a$d$a$a;

    invoke-direct {p1, p0}, Lv7/a$i$c$a$d$a$a;-><init>(Lv7/a$i$c$a$d$a;)V

    invoke-static {p1}, Lc9/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "act"
        }
    .end annotation

    return-void
.end method
