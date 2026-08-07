.class public Lw2/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lw2/c;


# direct methods
.method public constructor <init>(Lw2/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lw2/c$d;->c:Lw2/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lw2/c$d;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Lw2/c;Lw2/c$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lw2/c$d;-><init>(Lw2/c;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lw2/c$d;->b:I

    return-void
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Lw2/c$d;->c:Lw2/c;

    invoke-static {v0}, Lw2/c;->c(Lw2/c;)Lw2/c$e;

    move-result-object v0

    iget v1, p0, Lw2/c$d;->b:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return-void
.end method
