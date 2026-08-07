.class public Lv7/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv7/a;->k(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lv7/a;


# direct methods
.method public constructor <init>(Lv7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lv7/a$c;->a:Lv7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/content/Context;Le8/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "context",
            "tbButton"
        }
    .end annotation

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance p3, Lwd/b;

    new-instance v0, Lv7/a$c$a;

    invoke-direct {v0, p0}, Lv7/a$c$a;-><init>(Lv7/a$c;)V

    const-string v1, "Lite"

    invoke-direct {p3, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lwd/b;

    new-instance v0, Lv7/a$c$b;

    invoke-direct {v0, p0}, Lv7/a$c$b;-><init>(Lv7/a$c;)V

    const-string v1, "Advanced"

    invoke-direct {p3, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p3, LL4/a$e;->Below:LL4/a$e;

    invoke-static {p1, p3, p2}, Lq7/a;->D1(Landroid/view/View;LL4/a$e;Ljava/util/List;)V

    return-void
.end method
