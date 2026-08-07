.class public Lcom/itsmagic/engine/Activities/Editor/Utils/q$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Utils/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "collect/"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    sget-object v0, Lo8/b;->f:LU8/a;

    invoke-virtual {v0}, LU8/a;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lxd/c;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Utils/q$e$a;

    invoke-direct {v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$e$a;-><init>()V

    invoke-direct {v1, v2}, Lxd/c;-><init>(LAd/d;)V

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Utils/q$e$b;

    invoke-direct {v2, p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$e$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->f()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance p0, LAd/e;

    const-string v0, "collect/"

    const-string v3, "event"

    invoke-static {v0, v3}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v3

    sget-boolean v4, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->a:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v0, v2, v3, v4}, LAd/e;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V

    invoke-virtual {v1, p0}, Lxd/c;->d(LAd/e;)V

    return-void
.end method
