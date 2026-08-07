.class public final Lx1/i;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field public static final a:Lx1/i;

.field public static final b:Lx1/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lx1/i;

    invoke-direct {v0}, Lx1/i;-><init>()V

    sput-object v0, Lx1/i;->a:Lx1/i;

    new-instance v0, Lx1/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx1/h;-><init>(Lx1/g;)V

    sput-object v0, Lx1/i;->b:Lx1/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Lx1/i;
    .locals 1

    sget-object v0, Lx1/i;->a:Lx1/i;

    return-object v0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    sget-object v0, Lx1/i;->b:Lx1/h;

    return-object v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method
