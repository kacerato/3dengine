.class public Lh8/b$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh8/b;->U(Landroid/view/View;Lj8/b;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lj8/b;

.field public final synthetic d:Z

.field public final synthetic e:Lh8/b;


# direct methods
.method public constructor <init>(Lh8/b;Landroid/view/View;Lj8/b;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$v",
            "val$element",
            "val$fromUserAction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lh8/b$g;->e:Lh8/b;

    iput-object p2, p0, Lh8/b$g;->b:Landroid/view/View;

    iput-object p3, p0, Lh8/b$g;->c:Lj8/b;

    iput-boolean p4, p0, Lh8/b$g;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lh8/b$g;->e:Lh8/b;

    iget-object v1, p0, Lh8/b$g;->b:Landroid/view/View;

    iget-object v2, p0, Lh8/b$g;->c:Lj8/b;

    iget-boolean v3, p0, Lh8/b$g;->d:Z

    invoke-virtual {v0, v1, v2, v3}, Lh8/b;->R(Landroid/view/View;Lj8/b;Z)V

    return-void
.end method
