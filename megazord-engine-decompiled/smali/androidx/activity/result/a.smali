.class public final synthetic Landroidx/activity/result/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic a:Leg/l;


# direct methods
.method public synthetic constructor <init>(Leg/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/result/a;->a:Leg/l;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/activity/result/a;->a:Leg/l;

    invoke-static {v0, p1}, Landroidx/activity/result/ActivityResultCallerKt;->b(Leg/l;Ljava/lang/Object;)V

    return-void
.end method
