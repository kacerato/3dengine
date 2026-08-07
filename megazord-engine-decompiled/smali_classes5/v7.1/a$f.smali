.class public Lv7/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv7/a;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[Landroid/os/Handler;

.field public final synthetic b:Lv7/a;


# direct methods
.method public constructor <init>(Lv7/a;[Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$deleteHandler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lv7/a$f;->b:Lv7/a;

    iput-object p2, p0, Lv7/a$f;->a:[Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/content/Context;Le8/c;)V
    .locals 1
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

    sget-object p1, Lo8/b;->i:Ls8/a;

    iget-object p1, p1, Ls8/a;->a:Ls8/b;

    iget-object p1, p1, Ls8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {p1}, Lyb/e;->j(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker;->blockSelectionForMidSecond()V

    sget-object p1, Lo8/b;->h:Lt8/f;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lt8/f;->h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-virtual {p3}, Le8/g;->g()V

    iget-object p1, p0, Lv7/a$f;->a:[Landroid/os/Handler;

    const/4 p3, 0x0

    aget-object v0, p1, p3

    if-eqz v0, :cond_0

    aput-object p2, p1, p3

    :cond_0
    return-void
.end method
