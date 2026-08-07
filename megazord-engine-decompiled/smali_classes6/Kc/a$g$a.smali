.class public LKc/a$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LKc/a$d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LKc/a$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LKc/a$g;


# direct methods
.method public constructor <init>(LKc/a$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LKc/a$g$a;->a:LKc/a$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/InputDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "device"
        }
    .end annotation

    iget-object p1, p0, LKc/a$g$a;->a:LKc/a$g;

    invoke-static {p1}, LKc/a$g;->a(LKc/a$g;)V

    return-void
.end method

.method public b(Landroid/view/InputDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "device"
        }
    .end annotation

    iget-object p1, p0, LKc/a$g$a;->a:LKc/a$g;

    invoke-static {p1}, LKc/a$g;->a(LKc/a$g;)V

    return-void
.end method
