.class public Lh7/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh7/b$z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh7/a;->H1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh7/a;


# direct methods
.method public constructor <init>(Lh7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lh7/a$f;->a:Lh7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lh7/a$f;->a:Lh7/a;

    invoke-static {v0}, Lh7/a;->v1(Lh7/a;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lh7/a$f;->a:Lh7/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lh7/a;->w1(Lh7/a;Landroid/view/View;)V

    return-void
.end method
