.class public LQ5/j$T;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LQ5/j;->g(Landroid/app/Activity;Landroid/content/Context;LCd/b;Ljava/lang/String;LQ5/b;Ljava/lang/String;Landroid/view/View;IIZ)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lwd/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:LCd/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;LCd/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$context",
            "val$o"
        }
    .end annotation

    iput-object p1, p0, LQ5/j$T;->b:Landroid/content/Context;

    iput-object p2, p0, LQ5/j$T;->c:LCd/b;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance p1, Lwd/b;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_GITHUB_SHARE_MENU:LUc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, LQ5/j$T$a;

    invoke-direct {v0, p0}, LQ5/j$T$a;-><init>(LQ5/j$T;)V

    const v1, 0x7f070227

    invoke-direct {p1, v1, p2, v0}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
