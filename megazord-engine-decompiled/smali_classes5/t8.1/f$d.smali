.class public Lt8/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt8/f;->g(Landroid/app/Activity;Lt8/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lt8/g;

.field public final synthetic c:Landroid/app/Activity;

.field public final synthetic d:Lt8/f;


# direct methods
.method public constructor <init>(Lt8/f;Lt8/g;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$saveListener",
            "val$activity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lt8/f$d;->d:Lt8/f;

    iput-object p2, p0, Lt8/f$d;->b:Lt8/g;

    iput-object p3, p0, Lt8/f$d;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lt8/f$d;->b:Lt8/g;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lt8/f$d;->c:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lt8/g;->b(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
