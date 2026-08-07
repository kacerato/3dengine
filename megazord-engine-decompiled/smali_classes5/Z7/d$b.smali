.class public LZ7/d$b;
.super Lbd/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZ7/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public final synthetic d:LZ7/d;


# direct methods
.method public constructor <init>(LZ7/d;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "layout"
        }
    .end annotation

    iput-object p1, p0, LZ7/d$b;->d:LZ7/d;

    invoke-direct {p0}, Lbd/m;-><init>()V

    iput p2, p0, LZ7/d$b;->b:I

    return-void
.end method


# virtual methods
.method public r(Landroid/view/View;)LZ7/d$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemView"
        }
    .end annotation

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Override!!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
