.class public Lv7/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv7/a;-><init>(Landroid/app/Activity;)V
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

    iput-object p1, p0, Lv7/a$b;->a:Lv7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/content/Context;Le8/i;)V
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
            "tbProgressBar"
        }
    .end annotation

    const/16 p2, 0xf0

    invoke-static {p2}, Lf8/c;->g(I)F

    move-result p3

    invoke-static {p2}, Lf8/c;->f(I)F

    move-result p2

    new-instance v0, LS4/b;

    invoke-direct {v0}, LS4/b;-><init>()V

    sget-object v1, LL4/a$e;->Below:LL4/a$e;

    invoke-static {p1, v0, v1, p3, p2}, LL4/a;->h(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;LL4/a$e;FF)V

    return-void
.end method
