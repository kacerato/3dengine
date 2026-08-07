.class public LJ5/b$r;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJ5/b;->E1(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:LJ5/b;


# direct methods
.method public constructor <init>(LJ5/b;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$pathText"
        }
    .end annotation

    iput-object p1, p0, LJ5/b$r;->c:LJ5/b;

    iput-object p2, p0, LJ5/b$r;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    new-instance p1, LJ5/b$r$a;

    invoke-direct {p1, p0}, LJ5/b$r$a;-><init>(LJ5/b$r;)V

    const-string v0, ".jks"

    invoke-static {v0, p1}, Lrd/c;->a(Ljava/lang/String;Lrd/g;)V

    return-void
.end method
