.class public Lv7/a$i$c$e;
.super Ljava/util/LinkedList;
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
        "Ljava/util/LinkedList<",
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

    iput-object p1, p0, Lv7/a$i$c$e;->b:Lv7/a$i$c;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    new-instance p1, Lwd/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->TERMINAL:LUc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lv7/a$i$c$e$d;

    invoke-direct {v1, p0}, Lv7/a$i$c$e$d;-><init>(Lv7/a$i$c$e;)V

    const v2, 0x7f070232

    invoke-direct {p1, v2, v0, v1}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lv7/a$i$c$e$e;

    invoke-direct {v0, p0}, Lv7/a$i$c$e$e;-><init>(Lv7/a$i$c$e;)V

    const v1, 0x7f0701f1

    const-string v2, "Unused Files"

    invoke-direct {p1, v1, v2, v0}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object p1

    iget-boolean p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->enableProfilingToolsV2:Z

    const v0, 0x7f0701e2

    if-eqz p1, :cond_0

    new-instance p1, Lwd/b;

    invoke-direct {p1}, Lwd/b;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v1, Lv7/a$i$c$e$f;

    invoke-direct {v1, p0}, Lv7/a$i$c$e$f;-><init>(Lv7/a$i$c$e;)V

    const v2, 0x7f07013f

    const-string v3, "FPS Meter"

    invoke-direct {p1, v2, v3, v1}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->PROFILER:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lv7/a$i$c$e$g;

    invoke-direct {v2, p0}, Lv7/a$i$c$e$g;-><init>(Lv7/a$i$c$e;)V

    invoke-direct {p1, v0, v1, v2}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v1, Lv7/a$i$c$e$h;

    invoke-direct {v1, p0}, Lv7/a$i$c$e$h;-><init>(Lv7/a$i$c$e;)V

    const-string v2, "Memory profiler"

    invoke-direct {p1, v0, v2, v1}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v1, Lv7/a$i$c$e$i;

    invoke-direct {v1, p0}, Lv7/a$i$c$e$i;-><init>(Lv7/a$i$c$e;)V

    const-string v2, "Native memory profiler"

    invoke-direct {p1, v0, v2, v1}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v1, Lv7/a$i$c$e$j;

    invoke-direct {v1, p0}, Lv7/a$i$c$e$j;-><init>(Lv7/a$i$c$e;)V

    const-string v2, "Runnable profiler"

    invoke-direct {p1, v0, v2, v1}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v1, Lv7/a$i$c$e$k;

    invoke-direct {v1, p0}, Lv7/a$i$c$e$k;-><init>(Lv7/a$i$c$e;)V

    const-string v2, "Component statistic"

    invoke-direct {p1, v0, v2, v1}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v1, Lv7/a$i$c$e$l;

    invoke-direct {v1, p0}, Lv7/a$i$c$e$l;-><init>(Lv7/a$i$c$e;)V

    const v2, 0x7f0701c7

    const-string v3, "Statistic profiler"

    invoke-direct {p1, v2, v3, v1}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object p1, LS3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lwd/b;

    invoke-direct {p1}, Lwd/b;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v1, Lv7/a$i$c$e$a;

    invoke-direct {v1, p0}, Lv7/a$i$c$e$a;-><init>(Lv7/a$i$c$e;)V

    const-string v2, "UI Framerate profiler"

    invoke-direct {p1, v0, v2, v1}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lv7/a$i$c$e$b;

    invoke-direct {v0, p0}, Lv7/a$i$c$e$b;-><init>(Lv7/a$i$c$e;)V

    const v1, 0x7f070164

    const-string v2, "Enable ANR Watch dog"

    invoke-direct {p1, v1, v2, v0}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lv7/a$i$c$e$c;

    invoke-direct {v0, p0}, Lv7/a$i$c$e$c;-><init>(Lv7/a$i$c$e;)V

    const-string v2, "Enable UI ANR Watch dog"

    invoke-direct {p1, v1, v2, v0}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
