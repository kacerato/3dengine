.class public Lyb/e$a$m$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyb/e$a$m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lyb/e$a$m;


# direct methods
.method public constructor <init>(Lyb/e$a$m;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lyb/e$a$m$b;->a:Lyb/e$a$m;

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

    new-instance p1, Lyb/e$a$m$b$a;

    invoke-direct {p1, p0}, Lyb/e$a$m$b$a;-><init>(Lyb/e$a$m$b;)V

    const-string v0, "Building"

    invoke-static {v0, p1}, Lr7/g;->r1(Ljava/lang/String;Lr7/g$c;)V

    return-void
.end method
