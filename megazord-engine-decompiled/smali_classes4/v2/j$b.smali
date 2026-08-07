.class public Lv2/j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv2/o$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv2/j;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:F

.field public final synthetic b:Lv2/j;


# direct methods
.method public constructor <init>(Lv2/j;F)V
    .locals 0

    iput-object p1, p0, Lv2/j$b;->b:Lv2/j;

    iput p2, p0, Lv2/j$b;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lv2/d;)Lv2/d;
    .locals 2
    .param p1    # Lv2/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    instance-of v0, p1, Lv2/m;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lv2/b;

    iget v1, p0, Lv2/j$b;->a:F

    invoke-direct {v0, v1, p1}, Lv2/b;-><init>(FLv2/d;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
