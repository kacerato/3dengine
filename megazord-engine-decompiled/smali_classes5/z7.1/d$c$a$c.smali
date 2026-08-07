.class public Lz7/d$c$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz7/d$c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz7/d$c$a;


# direct methods
.method public constructor <init>(Lz7/d$c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lz7/d$c$a$c;->a:Lz7/d$c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, Lz7/d$c$a$c;->a:Lz7/d$c$a;

    iget-object p1, p1, Lz7/d$c$a;->b:Lz7/d$c;

    iget-object p1, p1, Lz7/d$c;->b:Lz7/d;

    invoke-virtual {p1}, Lz7/d;->G()V

    return-void
.end method
