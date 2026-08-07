.class public LT4/a$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LT4/a$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LT4/a$c;


# direct methods
.method public constructor <init>(LT4/a$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LT4/a$c$a;->a:LT4/a$c;

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

    iget-object p1, p0, LT4/a$c$a;->a:LT4/a$c;

    iget-object p1, p1, LT4/a$c;->b:Landroid/view/View;

    sget-object v0, LL4/a$e;->Below:LL4/a$e;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->RESTORE_THIS_BACKUP:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->IF_THE_PROJECT_EXISTS_WILL_BE_OVERRIDE:LUc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, LT4/a$c$a$a;

    invoke-direct {v3, p0}, LT4/a$c$a$a;-><init>(LT4/a$c$a;)V

    invoke-static {p1, v0, v1, v2, v3}, Lr7/c;->u1(Landroid/view/View;LL4/a$e;Ljava/lang/String;Ljava/lang/String;Lr7/c$i;)V

    return-void
.end method
