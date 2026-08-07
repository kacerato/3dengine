.class public Lyb/e$a$d;
.super Ljava/util/LinkedList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyb/e$a;
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
.field public final synthetic b:Lyb/e$a;


# direct methods
.method public constructor <init>(Lyb/e$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lyb/e$a$d;->b:Lyb/e$a;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    new-instance v0, Lwd/b;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OBJECT_UTILS_SET_ALL_STATIC:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lyb/e$a$d$e;

    invoke-direct {v2, p0}, Lyb/e$a$d$e;-><init>(Lyb/e$a$d;)V

    invoke-direct {v0, v1, v2}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OBJECT_UTILS_SET_ALL_DYNAMIC:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lyb/e$a$d$f;

    invoke-direct {v2, p0}, Lyb/e$a$d$f;-><init>(Lyb/e$a$d;)V

    invoke-direct {v0, v1, v2}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    invoke-direct {v0}, Lwd/b;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    new-instance v1, Lyb/e$a$d$g;

    invoke-direct {v1, p0}, Lyb/e$a$d$g;-><init>(Lyb/e$a$d;)V

    const-string v2, "Shader"

    invoke-direct {v0, v2, v1}, Lwd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OBJECT_UTILS_CHANGE_ALL_MATERIALS:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lyb/e$a$d$h;

    invoke-direct {v2, p0}, Lyb/e$a$d$h;-><init>(Lyb/e$a$d;)V

    invoke-direct {v0, v1, v2}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    invoke-direct {v0}, Lwd/b;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    new-instance v1, Lyb/e$a$d$i;

    invoke-direct {v1, p0}, Lyb/e$a$d$i;-><init>(Lyb/e$a$d;)V

    const-string v2, "Add model collider to all child objects"

    invoke-direct {v0, v2, v1}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    new-instance v1, Lyb/e$a$d$j;

    invoke-direct {v1, p0}, Lyb/e$a$d$j;-><init>(Lyb/e$a$d;)V

    const-string v2, "Add convex collider to all child objects"

    invoke-direct {v0, v2, v1}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    new-instance v1, Lyb/e$a$d$k;

    invoke-direct {v1, p0}, Lyb/e$a$d$k;-><init>(Lyb/e$a$d;)V

    const-string v2, "Remove all colliders from all child objects"

    invoke-direct {v0, v2, v1}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    invoke-direct {v0}, Lwd/b;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OBJECT_UTILS_RANDOMIZE_CHILD_ROTATION_Y:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lyb/e$a$d$l;

    invoke-direct {v2, p0}, Lyb/e$a$d$l;-><init>(Lyb/e$a$d;)V

    invoke-direct {v0, v1, v2}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OBJECT_UTILS_DELETE_ALL_CHILDREN:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lyb/e$a$d$m;

    invoke-direct {v2, p0}, Lyb/e$a$d$m;-><init>(Lyb/e$a$d;)V

    invoke-direct {v0, v1, v2}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OBJECT_UTILS_DETACH_CHILDREN:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lyb/e$a$d$a;

    invoke-direct {v2, p0}, Lyb/e$a$d$a;-><init>(Lyb/e$a$d;)V

    invoke-direct {v0, v1, v2}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    new-instance v1, Lyb/e$a$d$b;

    invoke-direct {v1, p0}, Lyb/e$a$d$b;-><init>(Lyb/e$a$d;)V

    const-string v2, "Delete child by prefix"

    invoke-direct {v0, v2, v1}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Lwd/b;

    new-instance v1, Lyb/e$a$d$c;

    invoke-direct {v1, p0}, Lyb/e$a$d$c;-><init>(Lyb/e$a$d;)V

    const-string v2, "Delete child by contains"

    invoke-direct {v0, v2, v1}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Lyb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i1()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lwd/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OBJECT_UTILS_COLLAPSE_CHILDREN_COMPONENTS:LUc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lyb/e$a$d$d;

    invoke-direct {v1, p0}, Lyb/e$a$d$d;-><init>(Lyb/e$a$d;)V

    invoke-direct {p1, v0, v1}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
