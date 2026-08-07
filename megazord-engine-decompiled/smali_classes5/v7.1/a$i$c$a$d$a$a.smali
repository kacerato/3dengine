.class public Lv7/a$i$c$a$d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv7/a$i$c$a$d$a;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lv7/a$i$c$a$d$a;


# direct methods
.method public constructor <init>(Lv7/a$i$c$a$d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$4"
        }
    .end annotation

    iput-object p1, p0, Lv7/a$i$c$a$d$a$a;->b:Lv7/a$i$c$a$d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->n0()V

    invoke-static {}, Loc/a;->M()V

    new-instance v0, Lv7/a$i$c$a$d$a$a$a;

    invoke-direct {v0, p0}, Lv7/a$i$c$a$d$a$a$a;-><init>(Lv7/a$i$c$a$d$a$a;)V

    const/4 v1, 0x1

    const-string v2, "_EDITOR"

    const-string v3, "currentScene.scn"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/World/a;->J(Ljava/lang/String;Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/World/a$k;Z)V

    return-void
.end method
