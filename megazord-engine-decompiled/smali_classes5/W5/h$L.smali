.class public LW5/h$L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LW5/h;->x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LW5/b;IZLandroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LW5/b;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Landroid/widget/ImageView;

.field public final synthetic e:Lcom/itsmagic/engine/Engines/Utils/Variable;


# direct methods
.method public constructor <init>(LW5/b;Landroid/content/Context;Landroid/widget/ImageView;Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$entry",
            "val$context",
            "val$colorImage",
            "val$getVar"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LW5/h$L;->b:LW5/b;

    iput-object p2, p0, LW5/h$L;->c:Landroid/content/Context;

    iput-object p3, p0, LW5/h$L;->d:Landroid/widget/ImageView;

    iput-object p4, p0, LW5/h$L;->e:Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-static {}, Lf8/c;->Y()V

    new-instance v0, LW5/h$L$a;

    invoke-direct {v0, p0}, LW5/h$L$a;-><init>(LW5/h$L;)V

    sget-object v1, LL4/a$e;->Left:LL4/a$e;

    invoke-static {p1, v1, v0}, Lq7/a;->D1(Landroid/view/View;LL4/a$e;Ljava/util/List;)V

    const/4 p1, 0x1

    return p1
.end method
