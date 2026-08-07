.class public Lv7/a$i$c$b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv7/a$i$c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lv7/a$i$c$b;


# direct methods
.method public constructor <init>(Lv7/a$i$c$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lv7/a$i$c$b$d;->a:Lv7/a$i$c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const-string v0, "EDITOR_TOP_BAR_WORLD_SETTINGS_BUTTON"

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/c;->a(Ljava/lang/String;)Z

    const/16 v0, 0x17c

    invoke-static {v0}, Lf8/c;->g(I)F

    move-result v1

    invoke-static {v0}, Lf8/c;->f(I)F

    move-result v0

    new-instance v2, Ll4/c;

    invoke-direct {v2}, Ll4/c;-><init>()V

    sget-object v3, LL4/a$e;->Right:LL4/a$e;

    invoke-static {p1, v2, v3, v1, v0}, LL4/a;->g(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;LL4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void
.end method
