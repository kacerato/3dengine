.class public Lv7/a$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv7/a;->o(Landroid/app/Activity;)V
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

    iput-object p1, p0, Lv7/a$h;->a:Lv7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/content/Context;Le8/e;)V
    .locals 0
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

    sget-object p2, LL4/a$e;->Below:LL4/a$e;

    invoke-static {p1, p2}, Le4/a;->p1(Landroid/view/View;LL4/a$e;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void
.end method
