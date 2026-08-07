.class public Lp7/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX7/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp7/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lp7/b$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp7/b$f;

.field public final synthetic b:Lp7/a;


# direct methods
.method public constructor <init>(Lp7/a;Lp7/b$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lp7/a$a;->b:Lp7/a;

    iput-object p2, p0, Lp7/a$a;->a:Lp7/b$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LX7/i;Landroid/content/Context;LX7/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eElement",
            "context",
            "textViewAppearance"
        }
    .end annotation

    instance-of v0, p1, Lp7/a;

    if-eqz v0, :cond_2

    check-cast p1, Lp7/a;

    invoke-virtual {p1}, Lp7/a;->u()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lp7/a$a;->a:Lp7/b$f;

    invoke-interface {v0, p1}, Lp7/b$f;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_TEXT_COLOR:LUc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result p1

    iput p1, p3, LX7/e;->a:I

    return-void

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f050189

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p3, LX7/e;->a:I

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->BACKGROUND:LUc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result p1

    iput p1, p3, LX7/e;->a:I

    :goto_0
    return-void

    :cond_2
    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_TEXT_COLOR:LUc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result p1

    iput p1, p3, LX7/e;->a:I

    return-void
.end method
