.class public LJ5/b$k;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJ5/b;->B0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/ImageView;

.field public final synthetic c:LJ5/b;


# direct methods
.method public constructor <init>(LJ5/b;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$icon"
        }
    .end annotation

    iput-object p1, p0, LJ5/b$k;->c:LJ5/b;

    iput-object p2, p0, LJ5/b$k;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    new-instance p1, LJ5/b$k$a;

    invoke-direct {p1, p0}, LJ5/b$k$a;-><init>(LJ5/b$k;)V

    invoke-static {p1}, LV3/b;->d(LV3/b$c;)V

    return-void
.end method
