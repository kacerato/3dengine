.class public LZ5/c$a$a;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZ5/c$a;->onCreate(Landroid/view/View;Landroid/content/Context;LW5/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Landroid/widget/ImageView;

.field public final synthetic d:LZ5/c$a;


# direct methods
.method public constructor <init>(LZ5/c$a;Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$context",
            "val$colorImage"
        }
    .end annotation

    iput-object p1, p0, LZ5/c$a$a;->d:LZ5/c$a;

    iput-object p2, p0, LZ5/c$a$a;->b:Landroid/content/Context;

    iput-object p3, p0, LZ5/c$a$a;->c:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    new-instance v0, LZ5/c$a$a$a;

    invoke-direct {v0, p0}, LZ5/c$a$a$a;-><init>(LZ5/c$a$a;)V

    invoke-static {}, Lc9/a;->k()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->b()Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->s()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->r(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lwd/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Decal "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, LZ5/c$a$a$c;

    invoke-direct {v6, p0, v2}, LZ5/c$a$a$c;-><init>(LZ5/c$a$a;I)V

    const v7, 0x7f070156

    invoke-direct {v4, v7, v5, v6}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    new-instance v5, LZ5/c$a$a$b;

    invoke-direct {v5, p0, v3}, LZ5/c$a$a$b;-><init>(LZ5/c$a$a;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lwd/b;->e(Lwd/b$a;)Lwd/b;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, LL4/a$e;->Left:LL4/a$e;

    invoke-static {p1, v1, v0}, Lq7/a;->D1(Landroid/view/View;LL4/a$e;Ljava/util/List;)V

    return-void
.end method
