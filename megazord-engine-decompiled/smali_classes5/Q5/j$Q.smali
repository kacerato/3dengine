.class public LQ5/j$Q;
.super Ljava/util/LinkedList;
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
        "Ljava/util/LinkedList<",
        "Lwd/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:LQ5/b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Context;LQ5/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$activity",
            "val$folderPath",
            "val$context",
            "val$callbacks"
        }
    .end annotation

    iput-object p1, p0, LQ5/j$Q;->b:Landroid/app/Activity;

    iput-object p2, p0, LQ5/j$Q;->c:Ljava/lang/String;

    iput-object p3, p0, LQ5/j$Q;->d:Landroid/content/Context;

    iput-object p4, p0, LQ5/j$Q;->e:LQ5/b;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    new-instance p1, Lwd/b;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CREATE_IT_JAR:LUc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, LQ5/j$Q$a;

    invoke-direct {p3, p0}, LQ5/j$Q$a;-><init>(LQ5/j$Q;)V

    invoke-direct {p1, p2, p3}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ZIP_FOLDER:LUc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, LQ5/j$Q$b;

    invoke-direct {p3, p0}, LQ5/j$Q$b;-><init>(LQ5/j$Q;)V

    invoke-direct {p1, p2, p3}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ZIP_FILES:LUc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, LQ5/j$Q$c;

    invoke-direct {p3, p0}, LQ5/j$Q$c;-><init>(LQ5/j$Q;)V

    invoke-direct {p1, p2, p3}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
