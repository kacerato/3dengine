.class public Le6/c$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le6/c$c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Le6/c$c;


# direct methods
.method public constructor <init>(Le6/c$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Le6/c$c$a;->b:Le6/c$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Le6/c$c$a;->b:Le6/c$c;

    iget-object v0, v0, Le6/c$c;->c:Le6/c;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ERROR_NO_INTERNET_CONNECTION:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld6/b;->j(Ljava/lang/String;)V

    const-string v0, "Ops!"

    const-string v1, "When opening for the first time, you need to be connected to the internet to download additional resources."

    invoke-static {v0, v1}, Lr7/i;->x1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
