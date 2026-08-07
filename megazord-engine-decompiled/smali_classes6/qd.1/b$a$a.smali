.class public Lqd/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrd/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqd/b$a;->b(Landroid/view/View;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lqd/b$a;


# direct methods
.method public constructor <init>(Lqd/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lqd/b$a$a;->a:Lqd/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lqd/b$a$a;->a:Lqd/b$a;

    iget-object v0, v0, Lqd/b$a;->b:LR7/b;

    invoke-virtual {v0}, LR7/b;->b()V

    return-void
.end method
