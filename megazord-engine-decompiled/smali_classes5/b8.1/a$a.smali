.class public Lb8/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb8/a$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb8/a;->e(ILandroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/ImageView;

.field public final synthetic b:I

.field public final synthetic c:Lb8/a;


# direct methods
.method public constructor <init>(Lb8/a;Landroid/widget/ImageView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$imageView",
            "val$finalI"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lb8/a$a;->c:Lb8/a;

    iput-object p2, p0, Lb8/a$a;->a:Landroid/widget/ImageView;

    iput p3, p0, Lb8/a$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 3

    iget-object v0, p0, Lb8/a$a;->c:Lb8/a;

    iget-object v1, p0, Lb8/a$a;->a:Landroid/widget/ImageView;

    iget v2, p0, Lb8/a$a;->b:I

    invoke-static {v0, v1, v2}, Lb8/a;->a(Lb8/a;Landroid/widget/ImageView;I)V

    return-void
.end method
