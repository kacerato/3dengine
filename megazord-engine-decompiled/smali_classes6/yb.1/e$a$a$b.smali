.class public Lyb/e$a$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyb/e$a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lyb/e$a$a;


# direct methods
.method public constructor <init>(Lyb/e$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lyb/e$a$a$b;->a:Lyb/e$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/content/Context;Le8/c;)V
    .locals 2
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

    sget-object p2, LL4/a$e;->Right:LL4/a$e;

    sget-object p3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->DELETE:LUc/b;

    invoke-static {p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ARE_YOU_SURE_DELETE:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lyb/e$a$a$b;->a:Lyb/e$a$a;

    iget-object v1, v1, Lyb/e$a$a;->b:Lyb/e$a;

    iget-object v1, v1, Lyb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lyb/e$a$a$b$a;

    invoke-direct {v1, p0}, Lyb/e$a$a$b$a;-><init>(Lyb/e$a$a$b;)V

    invoke-static {p1, p2, p3, v0, v1}, Lr7/c;->u1(Landroid/view/View;LL4/a$e;Ljava/lang/String;Ljava/lang/String;Lr7/c$i;)V

    return-void
.end method
