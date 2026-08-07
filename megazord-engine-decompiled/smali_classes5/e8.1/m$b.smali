.class public Le8/m$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le8/m;->h0(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Le8/m;


# direct methods
.method public constructor <init>(Le8/m;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$text"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Le8/m$b;->c:Le8/m;

    iput-object p2, p0, Le8/m$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Le8/m$b;->c:Le8/m;

    iget-object v1, p0, Le8/m$b;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Le8/m;->w(Le8/m;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Le8/m$b;->c:Le8/m;

    invoke-static {v0}, Le8/m;->x(Le8/m;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le8/m$b;->c:Le8/m;

    invoke-static {v0}, Le8/m;->x(Le8/m;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Le8/m$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
