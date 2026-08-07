.class public Lv7/a$v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/d;


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

    iput-object p1, p0, Lv7/a$v;->a:Lv7/a;

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

    const-class p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/World/a;->k(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    if-eqz p1, :cond_0

    new-instance p3, Lv7/a$v$a;

    invoke-direct {p3, p0, p1, p2}, Lv7/a$v$a;-><init>(Lv7/a$v;Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;Landroid/content/Context;)V

    const-string p1, "Area settings"

    const/16 p2, 0xc8

    const/16 v0, 0x104

    invoke-static {p1, p2, v0, p3}, La5/e;->w1(Ljava/lang/String;IILa5/f;)La5/e;

    :cond_0
    return-void
.end method
