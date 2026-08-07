.class public La6/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La6/a;->onCreate(Landroid/view/View;Landroid/content/Context;LW5/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La6/a;


# direct methods
.method public constructor <init>(La6/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, La6/a$d;->a:La6/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "fromUser"
        }
    .end annotation

    iget-object p2, p0, La6/a$d;->a:La6/a;

    invoke-static {p2}, La6/a;->r(La6/a;)La6/a$k;

    move-result-object p2

    invoke-interface {p2, p1}, La6/a$k;->j(F)V

    return-void
.end method
