.class public Lh9/f$D$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh9/f$D;->a(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lh9/f$D;


# direct methods
.method public constructor <init>(Lh9/f$D;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lh9/f$D$d;->b:Lh9/f$D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lh9/f$D$d;->b:Lh9/f$D;

    iget-object v0, v0, Lh9/f$D;->c:Lh9/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lh9/p;->b()V

    :cond_0
    return-void
.end method
