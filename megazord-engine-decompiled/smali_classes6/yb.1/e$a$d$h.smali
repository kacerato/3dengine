.class public Lyb/e$a$d$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyb/e$a$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lyb/e$a$d;


# direct methods
.method public constructor <init>(Lyb/e$a$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lyb/e$a$d$h;->a:Lyb/e$a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    new-instance p1, Lyb/e$a$d$h$a;

    invoke-direct {p1, p0}, Lyb/e$a$d$h$a;-><init>(Lyb/e$a$d$h;)V

    const-string v0, ".mat"

    invoke-static {v0, p1}, Lrd/c;->a(Ljava/lang/String;Lrd/g;)V

    return-void
.end method
