.class public LW5/c$c$a;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LW5/c$c;->onLongClick(Landroid/view/View;)Z
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
.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:LW5/c$c;


# direct methods
.method public constructor <init>(LW5/c$c;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$activity",
            "val$view"
        }
    .end annotation

    iput-object p1, p0, LW5/c$c$a;->d:LW5/c$c;

    iput-object p2, p0, LW5/c$c$a;->b:Landroid/app/Activity;

    iput-object p3, p0, LW5/c$c$a;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance p1, Lwd/b;

    new-instance p2, LW5/c$c$a$a;

    invoke-direct {p2, p0}, LW5/c$c$a$a;-><init>(LW5/c$c$a;)V

    new-instance p3, LW5/c$c$a$b;

    invoke-direct {p3, p0}, LW5/c$c$a$b;-><init>(LW5/c$c$a;)V

    invoke-direct {p1, p2, p3}, Lwd/b;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->COPY:LUc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, LW5/c$c$a$c;

    invoke-direct {p3, p0}, LW5/c$c$a$c;-><init>(LW5/c$c$a;)V

    invoke-direct {p1, p2, p3}, Lwd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->MOVE:LUc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, LW5/c$c$a$d;

    invoke-direct {p3, p0}, LW5/c$c$a$d;-><init>(LW5/c$c$a;)V

    invoke-direct {p1, p2, p3}, Lwd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->APP_DOCUMENTATION:LUc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, LW5/c$c$a$e;

    invoke-direct {p3, p0}, LW5/c$c$a$e;-><init>(LW5/c$c$a;)V

    invoke-direct {p1, p2, p3}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
