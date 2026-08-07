.class public Lk2/c$b;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lk2/c;


# direct methods
.method public constructor <init>(Lk2/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk2/c$b;->a:Lk2/c;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lk2/c;Lk2/c$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lk2/c$b;-><init>(Lk2/c;)V

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lk2/c$b;->a:Lk2/c;

    return-object v0
.end method
