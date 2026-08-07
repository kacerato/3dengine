.class public Ly6/X$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly6/X;->x()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lya/p;

.field public final synthetic b:Ly6/X;


# direct methods
.method public constructor <init>(Ly6/X;Lya/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$nodeInterface"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ly6/X$h;->b:Ly6/X;

    iput-object p2, p0, Ly6/X$h;->a:Lya/p;

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
            "v"
        }
    .end annotation

    iget-object p1, p0, Ly6/X$h;->b:Ly6/X;

    iget-object v0, p0, Ly6/X$h;->a:Lya/p;

    invoke-virtual {p1, v0}, Ly6/X;->r(Lya/p;)V

    return-void
.end method
