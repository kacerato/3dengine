.class public Lg4/h$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg4/h;->B0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg4/h$g;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lg4/h;


# direct methods
.method public constructor <init>(Lg4/h;Lg4/h$g;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$group",
            "val$innerImagePadding",
            "val$borderPadding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lg4/h$e;->d:Lg4/h;

    iput-object p2, p0, Lg4/h$e;->a:Lg4/h$g;

    iput p3, p0, Lg4/h$e;->b:I

    iput p4, p0, Lg4/h$e;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLandroid/view/View;Landroid/content/Context;Le8/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "v",
            "context",
            "tbToggle",
            "isFromUserAction"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p0, Lg4/h$e;->d:Lg4/h;

    iget-object p2, p0, Lg4/h$e;->a:Lg4/h$g;

    iget p3, p0, Lg4/h$e;->b:I

    iget p4, p0, Lg4/h$e;->c:I

    invoke-static {p1, p2, p3, p4}, Lg4/h;->t1(Lg4/h;Lg4/h$g;II)V

    :cond_0
    return-void
.end method
