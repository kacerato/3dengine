.class public Lv7/a$i$c$a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv7/a$i$c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lv7/a$i$c$a;


# direct methods
.method public constructor <init>(Lv7/a$i$c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lv7/a$i$c$a$f;->a:Lv7/a$i$c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-static {}, LI7/a;->q1()LI7/a;

    move-result-object p1

    const-string v0, "EDITOR_TOP_BAR_RELOAD_PROJECT_BUTTON"

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/c;->a(Ljava/lang/String;)Z

    sget-object v0, Lo8/b;->h:Lt8/f;

    iget-object v1, p0, Lv7/a$i$c$a$f;->a:Lv7/a$i$c$a;

    iget-object v1, v1, Lv7/a$i$c$a;->b:Lv7/a$i$c;

    iget-object v1, v1, Lv7/a$i$c;->b:Landroid/app/Activity;

    new-instance v2, Lv7/a$i$c$a$f$a;

    invoke-direct {v2, p0, p1}, Lv7/a$i$c$a$f$a;-><init>(Lv7/a$i$c$a$f;LI7/a;)V

    invoke-virtual {v0, v1, v2}, Lt8/f;->f(Landroid/app/Activity;Lt8/g;)V

    return-void
.end method
