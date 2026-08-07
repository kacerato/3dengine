.class public Lyb/e$a$d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyb/e$a$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lyb/e$a$d;


# direct methods
.method public constructor <init>(Lyb/e$a$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lyb/e$a$d$d;->a:Lyb/e$a$d;

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
            "view"
        }
    .end annotation

    iget-object v0, p0, Lyb/e$a$d$d;->a:Lyb/e$a$d;

    iget-object v0, v0, Lyb/e$a$d;->b:Lyb/e$a;

    iget-object v1, v0, Lyb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lyb/e$a;->d:Landroid/content/Context;

    invoke-static {v1, v0}, Lyb/e;->f(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Landroid/content/Context;)V

    sget-object v0, LL4/a$e;->Right:LL4/a$e;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ATTENTION:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->DELETE_ALL_CHILD_OBJECTS:LUc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lyb/e$a$d$d$a;

    invoke-direct {v3, p0}, Lyb/e$a$d$d$a;-><init>(Lyb/e$a$d$d;)V

    invoke-static {p1, v0, v1, v2, v3}, Lr7/c;->u1(Landroid/view/View;LL4/a$e;Ljava/lang/String;Ljava/lang/String;Lr7/c$i;)V

    return-void
.end method
