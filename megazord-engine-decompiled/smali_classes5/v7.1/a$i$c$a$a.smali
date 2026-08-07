.class public Lv7/a$i$c$a$a;
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

    iput-object p1, p0, Lv7/a$i$c$a$a;->a:Lv7/a$i$c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const-string p1, "EDITOR_TOP_BAR_SAVE_PROJECT"

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/c;->a(Ljava/lang/String;)Z

    sget-object p1, Lo8/b;->h:Lt8/f;

    iget-object v0, p0, Lv7/a$i$c$a$a;->a:Lv7/a$i$c$a;

    iget-object v0, v0, Lv7/a$i$c$a;->b:Lv7/a$i$c;

    iget-object v0, v0, Lv7/a$i$c;->b:Landroid/app/Activity;

    new-instance v1, Lv7/a$i$c$a$a$a;

    invoke-direct {v1, p0}, Lv7/a$i$c$a$a$a;-><init>(Lv7/a$i$c$a$a;)V

    invoke-virtual {p1, v0, v1}, Lt8/f;->f(Landroid/app/Activity;Lt8/g;)V

    return-void
.end method
