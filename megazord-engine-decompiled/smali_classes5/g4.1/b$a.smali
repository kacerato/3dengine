.class public Lg4/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg4/b;->F1(Landroid/view/View;LL4/a$e;Lg4/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lg4/b;

.field public final synthetic c:LI7/a;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:LL4/a$e;


# direct methods
.method public constructor <init>(Lg4/b;LI7/a;Landroid/view/View;LL4/a$e;)V
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

    iput-object p1, p0, Lg4/b$a;->b:Lg4/b;

    iput-object p2, p0, Lg4/b$a;->c:LI7/a;

    iput-object p3, p0, Lg4/b$a;->d:Landroid/view/View;

    iput-object p4, p0, Lg4/b$a;->e:LL4/a$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lg4/b$a;->b:Lg4/b;

    invoke-virtual {v0}, Lg4/b;->B1()V

    new-instance v0, Lg4/b$a$a;

    invoke-direct {v0, p0}, Lg4/b$a$a;-><init>(Lg4/b$a;)V

    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
