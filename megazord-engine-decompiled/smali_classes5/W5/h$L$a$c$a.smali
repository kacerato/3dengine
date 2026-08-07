.class public LW5/h$L$a$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt8/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LW5/h$L$a$c;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LW5/h$L$a$c;


# direct methods
.method public constructor <init>(LW5/h$L$a$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, LW5/h$L$a$c$a;->a:LW5/h$L$a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "act"
        }
    .end annotation

    new-instance p1, LW5/h$L$a$c$a$a;

    invoke-direct {p1, p0}, LW5/h$L$a$c$a$a;-><init>(LW5/h$L$a$c$a;)V

    invoke-static {p1}, LV3/b;->d(LV3/b$c;)V

    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "act"
        }
    .end annotation

    return-void
.end method
