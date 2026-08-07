.class public Lc8/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/b$c;,
        Lc8/b$d;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lc8/b$c;

.field public final c:Lc8/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc8/b;->a:Landroid/content/Context;

    .line 3
    new-instance v0, Lc8/c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lc8/c;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lc8/b;->c:Lc8/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "c",
            "enableFreePackageFilter",
            "listenerFreePackageFilter"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lc8/b;->a:Landroid/content/Context;

    .line 6
    new-instance v0, Lc8/c;

    invoke-direct {v0, p1, p2}, Lc8/c;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lc8/b;->c:Lc8/c;

    .line 7
    invoke-virtual {v0, p3}, Lc8/c;->m(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public static synthetic a(Lc8/b;)Lc8/c;
    .locals 0

    iget-object p0, p0, Lc8/b;->c:Lc8/c;

    return-object p0
.end method

.method public static synthetic b(Lc8/b;)Lc8/b$c;
    .locals 0

    iget-object p0, p0, Lc8/b;->b:Lc8/b$c;

    return-object p0
.end method


# virtual methods
.method public final c()V
    .locals 4

    new-instance v0, Lc8/c$a;

    invoke-direct {v0}, Lc8/c$a;-><init>()V

    sget-object v1, Lc8/c$a$a;->RIGHT:Lc8/c$a$a;

    iput-object v1, v0, Lc8/c$a;->c:Lc8/c$a$a;

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lc8/b;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v2, Lc8/b$b;

    invoke-direct {v2, p0}, Lc8/b$b;-><init>(Lc8/b;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f070215

    iget-object v3, p0, Lc8/b;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lod/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LUc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iput-object v1, v0, Lc8/c$a;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lc8/b;->c:Lc8/c;

    sget-object v2, Lc8/c$b;->RIGHT:Lc8/c$b;

    invoke-virtual {v1, v0, v2}, Lc8/c;->a(Lc8/c$a;Lc8/c$b;)Landroid/view/View;

    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lc8/b;->c:Lc8/c;

    invoke-virtual {v0}, Lc8/c;->i()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc8/b;->c:Lc8/c;

    invoke-virtual {v0}, Lc8/c;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Lc8/b$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    iput-object p1, p0, Lc8/b;->b:Lc8/b$c;

    iget-object p1, p0, Lc8/b;->c:Lc8/c;

    new-instance v0, Lc8/b$a;

    invoke-direct {v0, p0}, Lc8/b$a;-><init>(Lc8/b;)V

    invoke-virtual {p1, v0}, Lc8/c;->l(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-virtual {p0}, Lc8/b;->c()V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    iget-object v0, p0, Lc8/b;->c:Lc8/c;

    invoke-virtual {v0, p1}, Lc8/c;->n(Ljava/lang/String;)V

    return-void
.end method
