.class public LMe/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LMe/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, LMe/h$a;->c:I

    return-void
.end method

.method public static synthetic a(LMe/h$a;)I
    .locals 0

    iget p0, p0, LMe/h$a;->a:I

    return p0
.end method

.method public static synthetic b(LMe/h$a;)I
    .locals 0

    iget p0, p0, LMe/h$a;->b:I

    return p0
.end method

.method public static synthetic c(LMe/h$a;)I
    .locals 0

    iget p0, p0, LMe/h$a;->c:I

    return p0
.end method

.method public static synthetic d(LMe/h$a;)I
    .locals 0

    iget p0, p0, LMe/h$a;->d:I

    return p0
.end method

.method public static synthetic e(LMe/h$a;)I
    .locals 0

    iget p0, p0, LMe/h$a;->e:I

    return p0
.end method

.method public static synthetic f(LMe/h$a;)I
    .locals 0

    iget p0, p0, LMe/h$a;->f:I

    return p0
.end method


# virtual methods
.method public g()LMe/h;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LMe/h;

    invoke-direct {v0, p0}, LMe/h;-><init>(LMe/h$a;)V

    return-object v0
.end method

.method public h(I)LMe/h$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, LMe/h$a;->b:I

    return-object p0
.end method

.method public i(I)LMe/h$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, LMe/h$a;->c:I

    return-object p0
.end method

.method public j(I)LMe/h$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, LMe/h$a;->a:I

    return-object p0
.end method

.method public k(I)LMe/h$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, LMe/h$a;->e:I

    return-object p0
.end method

.method public l(I)LMe/h$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, LMe/h$a;->f:I

    return-object p0
.end method

.method public m(I)LMe/h$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, LMe/h$a;->d:I

    return-object p0
.end method
