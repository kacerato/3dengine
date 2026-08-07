.class public Lv7/a$i$c$e$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv7/a$i$c$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lv7/a$i$c$e;


# direct methods
.method public constructor <init>(Lv7/a$i$c$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lv7/a$i$c$e$d;->a:Lv7/a$i$c$e;

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

    const-string v0, "EDITOR_TOP_BAR_TERMINAL_BUTTON"

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/c;->a(Ljava/lang/String;)Z

    const/16 v0, 0x104

    invoke-static {v0}, Lf8/c;->g(I)F

    move-result v0

    const/16 v1, 0x118

    invoke-static {v1}, Lf8/c;->f(I)F

    move-result v1

    new-instance v2, Ld5/d;

    invoke-direct {v2}, Ld5/d;-><init>()V

    sget-object v3, LL4/a$e;->Right:LL4/a$e;

    invoke-static {p1, v2, v3, v0, v1}, LL4/a;->h(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;LL4/a$e;FF)V

    return-void
.end method
