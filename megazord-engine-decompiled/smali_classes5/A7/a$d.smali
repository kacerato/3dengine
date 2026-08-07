.class public LA7/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LA7/a;->q(LD7/a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LB7/b;

.field public final synthetic c:LA7/a;


# direct methods
.method public constructor <init>(LA7/a;LB7/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$eElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LA7/a$d;->c:LA7/a;

    iput-object p2, p0, LA7/a$d;->b:LB7/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object v0, p0, LA7/a$d;->c:LA7/a;

    invoke-static {v0}, LA7/a;->g(LA7/a;)LA7/b;

    move-result-object v0

    iget-object v1, p0, LA7/a$d;->b:LB7/b;

    invoke-interface {v0, v1, p1}, LA7/b;->b(LB7/b;Landroid/view/View;)V

    return-void
.end method
