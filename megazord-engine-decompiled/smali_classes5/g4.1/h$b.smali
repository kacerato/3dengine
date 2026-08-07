.class public Lg4/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg4/h;->F1(Landroid/view/View;LL4/a$e;Lg4/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lg4/h;

.field public final synthetic c:LI7/a;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:LL4/a$e;


# direct methods
.method public constructor <init>(Lg4/h;LI7/a;Landroid/view/View;LL4/a$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$panel",
            "val$loading",
            "val$anchor",
            "val$anchorSide"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lg4/h$b;->b:Lg4/h;

    iput-object p2, p0, Lg4/h$b;->c:LI7/a;

    iput-object p3, p0, Lg4/h$b;->d:Landroid/view/View;

    iput-object p4, p0, Lg4/h$b;->e:LL4/a$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lg4/h$b;->b:Lg4/h;

    invoke-virtual {v0}, Lg4/h;->C1()V

    new-instance v0, Lg4/h$b$a;

    invoke-direct {v0, p0}, Lg4/h$b$a;-><init>(Lg4/h$b;)V

    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
