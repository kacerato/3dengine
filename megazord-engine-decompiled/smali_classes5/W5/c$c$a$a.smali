.class public LW5/c$c$a$a;
.super Ljava/util/LinkedList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LW5/c$c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList<",
        "Le8/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:LW5/c$c$a;


# direct methods
.method public constructor <init>(LW5/c$c$a;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, LW5/c$c$a$a;->b:LW5/c$c$a;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    new-instance v0, Le8/c;

    new-instance v1, LW5/c$c$a$a$a;

    invoke-direct {v1, p0}, LW5/c$c$a$a$a;-><init>(LW5/c$c$a$a;)V

    sget-object v2, Le8/c$b;->Left:Le8/c$b;

    iget-object v3, p1, LW5/c$c$a;->b:Landroid/app/Activity;

    const v4, 0x7f0701a3

    invoke-direct {v0, v4, v1, v2, v3}, Le8/c;-><init>(ILe8/d;Le8/c$b;Landroid/content/Context;)V

    sget-object v1, LW5/c;->e:LUc/b;

    invoke-virtual {v0, v1}, Le8/c;->T(LUc/b;)Le8/c;

    move-result-object v0

    sget-object v2, LW5/c;->f:LUc/b;

    invoke-virtual {v0, v2}, Le8/c;->L(LUc/b;)Le8/c;

    move-result-object v0

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LUc/b;

    invoke-virtual {v0, v3}, Le8/c;->b0(LUc/b;)Le8/c;

    move-result-object v0

    iget-object v4, p1, LW5/c$c$a;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060232

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v4}, Le8/c;->j0(I)Le8/c;

    move-result-object v0

    iget-object v4, p1, LW5/c$c$a;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f060231

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v4}, Le8/c;->X(I)Le8/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Le8/c;

    new-instance v4, LW5/c$c$a$a$b;

    invoke-direct {v4, p0}, LW5/c$c$a$a$b;-><init>(LW5/c$c$a$a;)V

    sget-object v7, Le8/c$b;->Right:Le8/c$b;

    iget-object v8, p1, LW5/c$c$a;->b:Landroid/app/Activity;

    const v9, 0x7f07019f

    invoke-direct {v0, v9, v4, v7, v8}, Le8/c;-><init>(ILe8/d;Le8/c$b;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Le8/c;->T(LUc/b;)Le8/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Le8/c;->L(LUc/b;)Le8/c;

    move-result-object v0

    invoke-virtual {v0, v3}, Le8/c;->b0(LUc/b;)Le8/c;

    move-result-object v0

    iget-object v4, p1, LW5/c$c$a;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v4}, Le8/c;->j0(I)Le8/c;

    move-result-object v0

    iget-object v4, p1, LW5/c$c$a;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v4}, Le8/c;->X(I)Le8/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Le8/k;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lgd/b;->k0(F)I

    move-result v4

    invoke-direct {v0, v4}, Le8/k;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Le8/c;

    new-instance v4, LW5/c$c$a$a$c;

    invoke-direct {v4, p0}, LW5/c$c$a$a$c;-><init>(LW5/c$c$a$a;)V

    sget-object v7, Le8/c$b;->Disconnected:Le8/c$b;

    iget-object v8, p1, LW5/c$c$a;->b:Landroid/app/Activity;

    const v9, 0x7f070096

    invoke-direct {v0, v9, v4, v7, v8}, Le8/c;-><init>(ILe8/d;Le8/c$b;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Le8/c;->T(LUc/b;)Le8/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Le8/c;->L(LUc/b;)Le8/c;

    move-result-object v0

    invoke-virtual {v0, v3}, Le8/c;->b0(LUc/b;)Le8/c;

    move-result-object v0

    iget-object v1, p1, LW5/c$c$a;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Le8/c;->j0(I)Le8/c;

    move-result-object v0

    iget-object p1, p1, LW5/c$c$a;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Le8/c;->X(I)Le8/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
