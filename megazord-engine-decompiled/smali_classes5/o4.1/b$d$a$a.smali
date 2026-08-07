.class public Lo4/b$d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo4/b$d$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lo4/b$d$a;


# direct methods
.method public constructor <init>(Lo4/b$d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lo4/b$d$a$a;->b:Lo4/b$d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo4/b$d$a$a;->b:Lo4/b$d$a;

    iget-object v0, v0, Lo4/b$d$a;->b:Lr7/g;

    invoke-virtual {v0}, Lr7/g;->p1()V

    iget-object v0, p0, Lo4/b$d$a$a;->b:Lo4/b$d$a;

    iget-object v0, v0, Lo4/b$d$a;->c:Lo4/b$d;

    iget-object v0, v0, Lo4/b$d;->b:Lo4/b;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;->A()V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SUCCESS:LUc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_GITHUB_ORGANIZATIONS_REFRESHED:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lr7/h;->x1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
