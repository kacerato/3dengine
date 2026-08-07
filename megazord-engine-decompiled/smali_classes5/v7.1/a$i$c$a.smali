.class public Lv7/a$i$c$a;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv7/a$i$c;
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
.field public final synthetic b:Lv7/a$i$c;


# direct methods
.method public constructor <init>(Lv7/a$i$c;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lv7/a$i$c$a;->b:Lv7/a$i$c;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lwd/b;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SAVE_PROJECT:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lv7/a$i$c$a$a;

    invoke-direct {v2, p0}, Lv7/a$i$c$a$a;-><init>(Lv7/a$i$c$a;)V

    const v3, 0x7f07020f

    invoke-direct {v0, v3, v1, v2}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OPEN_PROJECT:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lv7/a$i$c$a$b;

    invoke-direct {v2, p0}, Lv7/a$i$c$a$b;-><init>(Lv7/a$i$c$a;)V

    const v3, 0x7f0701cb

    invoke-direct {v0, v3, v1, v2}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    invoke-direct {v0}, Lwd/b;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    const-string v1, "Change world"

    iget-object p1, p1, Lv7/a$i$c;->c:Ljava/util/List;

    invoke-direct {v0, v1, p1}, Lwd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    invoke-direct {p1}, Lwd/b;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->BACKUP:LUc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lv7/a$i$c$a$c;

    invoke-direct {v1, p0}, Lv7/a$i$c$a$c;-><init>(Lv7/a$i$c$a;)V

    invoke-direct {p1, v0, v1}, Lwd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    invoke-direct {p1}, Lwd/b;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lv7/a$i$c$a$d;

    invoke-direct {v0, p0}, Lv7/a$i$c$a$d;-><init>(Lv7/a$i$c$a;)V

    const v1, 0x7f0700b5

    const-string v2, "Reload project"

    invoke-direct {p1, v1, v2, v0}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lv7/a$i$c$a$e;

    invoke-direct {v0, p0}, Lv7/a$i$c$a$e;-><init>(Lv7/a$i$c$a;)V

    const-string v2, "Reload resources"

    invoke-direct {p1, v1, v2, v0}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lv7/a$i$c$a$f;

    invoke-direct {v0, p0}, Lv7/a$i$c$a$f;-><init>(Lv7/a$i$c$a;)V

    const-string v2, "Reimport all textures"

    invoke-direct {p1, v1, v2, v0}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lv7/a$i$c$a$g;

    invoke-direct {v0, p0}, Lv7/a$i$c$a$g;-><init>(Lv7/a$i$c$a;)V

    const-string v2, "Clear cache"

    invoke-direct {p1, v1, v2, v0}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
