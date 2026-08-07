.class public Lv7/a$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv7/a;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Lv7/a;


# direct methods
.method public constructor <init>(Lv7/a;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$activity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lv7/a$r;->b:Lv7/a;

    iput-object p2, p0, Lv7/a$r;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/content/Context;Le8/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "context",
            "tbButton"
        }
    .end annotation

    const-string p1, "EDITOR_TOP_BAR_SAVE_PROJECT"

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/c;->a(Ljava/lang/String;)Z

    sget-object p1, Lo8/b;->h:Lt8/f;

    iget-object p2, p0, Lv7/a$r;->a:Landroid/app/Activity;

    new-instance p3, Lv7/a$r$a;

    invoke-direct {p3, p0}, Lv7/a$r$a;-><init>(Lv7/a$r;)V

    invoke-virtual {p1, p2, p3}, Lt8/f;->f(Landroid/app/Activity;Lt8/g;)V

    return-void
.end method
