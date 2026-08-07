.class public LH7/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LDd/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LH7/a;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LH7/a;


# direct methods
.method public constructor <init>(LH7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LH7/a$b;->a:LH7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LH7/a$b;->a:LH7/a;

    iget-object v1, v0, LH7/c;->a:Landroid/widget/ImageView;

    invoke-static {v0}, LH7/a;->i(LH7/a;)Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LUc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    invoke-static {v1, v0, v2}, Lod/e;->y(Landroid/widget/ImageView;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-void
.end method
