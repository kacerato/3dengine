.class public Lv7/a$i$c;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv7/a$i;->onFinish()V
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

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lv7/a$i;


# direct methods
.method public constructor <init>(Lv7/a$i;Landroid/app/Activity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$activity",
            "val$worlds"
        }
    .end annotation

    iput-object p1, p0, Lv7/a$i$c;->d:Lv7/a$i;

    iput-object p2, p0, Lv7/a$i$c;->b:Landroid/app/Activity;

    iput-object p3, p0, Lv7/a$i$c;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance p1, Lwd/b;

    new-instance p2, Lv7/a$i$c$a;

    invoke-direct {p2, p0}, Lv7/a$i$c$a;-><init>(Lv7/a$i$c;)V

    const p3, 0x7f0701cb

    const-string v0, "Project"

    invoke-direct {p1, p3, v0, p2}, Lwd/b;-><init>(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance p2, Lv7/a$i$c$b;

    invoke-direct {p2, p0}, Lv7/a$i$c$b;-><init>(Lv7/a$i$c;)V

    const p3, 0x7f070145

    const-string v0, "Settings"

    invoke-direct {p1, p3, v0, p2}, Lwd/b;-><init>(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance p2, Lv7/a$i$c$c;

    invoke-direct {p2, p0}, Lv7/a$i$c$c;-><init>(Lv7/a$i$c;)V

    const p3, 0x7f0701c8

    const-string v0, "Editor"

    invoke-direct {p1, p3, v0, p2}, Lwd/b;-><init>(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance p2, Lv7/a$i$c$d;

    invoke-direct {p2, p0}, Lv7/a$i$c$d;-><init>(Lv7/a$i$c;)V

    const p3, 0x7f070069

    const-string v0, "Export"

    invoke-direct {p1, p3, v0, p2}, Lwd/b;-><init>(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->TOOLS:LUc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lv7/a$i$c$e;

    invoke-direct {p3, p0}, Lv7/a$i$c$e;-><init>(Lv7/a$i$c;)V

    const v0, 0x7f07023f

    invoke-direct {p1, v0, p2, p3}, Lwd/b;-><init>(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance p2, Lv7/a$i$c$f;

    invoke-direct {p2, p0}, Lv7/a$i$c$f;-><init>(Lv7/a$i$c;)V

    const p3, 0x7f0701c7

    const-string v0, "Documentation"

    invoke-direct {p1, p3, v0, p2}, Lwd/b;-><init>(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
