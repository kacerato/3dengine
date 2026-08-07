.class public LT4/a$d;
.super LT4/a$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LT4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Landroid/widget/ImageView;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/widget/TextView;

.field public final e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-direct {p0, p1}, LT4/a$f;-><init>(Landroid/view/View;)V

    const v0, 0x7f09052f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LT4/a$d;->a:Landroid/widget/TextView;

    const v0, 0x7f090521

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LT4/a$d;->b:Landroid/widget/ImageView;

    const v0, 0x7f09017a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LT4/a$d;->c:Landroid/widget/TextView;

    const v0, 0x7f09018d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LT4/a$d;->d:Landroid/widget/TextView;

    const v0, 0x7f0902ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, LT4/a$d;->e:Landroid/view/View;

    return-void
.end method

.method public static synthetic a(LT4/a$d;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, LT4/a$d;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic b(LT4/a$d;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, LT4/a$d;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic c(LT4/a$d;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, LT4/a$d;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic d(LT4/a$d;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, LT4/a$d;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic e(LT4/a$d;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, LT4/a$d;->e:Landroid/view/View;

    return-object p0
.end method
