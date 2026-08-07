.class public Lv7/a$i$c$e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv7/a$i$c$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lv7/a$i$c$e;


# direct methods
.method public constructor <init>(Lv7/a$i$c$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lv7/a$i$c$e$b;->a:Lv7/a$i$c$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    new-instance p1, Lv7/a$i$c$e$b$a;

    invoke-direct {p1, p0}, Lv7/a$i$c$e$b$a;-><init>(Lv7/a$i$c$e$b;)V

    const-string v0, "Tolerance in mili seconds"

    const-string v1, "1600"

    invoke-static {v0, v1, p1}, Lr7/f;->w1(Ljava/lang/String;Ljava/lang/String;Lr7/f$g;)V

    return-void
.end method
