.class public Ly6/E$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX5/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly6/E;->J()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lkb/a;

.field public final synthetic b:Ly6/E;


# direct methods
.method public constructor <init>(Ly6/E;Lkb/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$raw"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ly6/E$p;->b:Ly6/E;

    iput-object p2, p0, Ly6/E$p;->a:Lkb/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    sget-object v0, LL4/a$e;->Left:LL4/a$e;

    new-instance v1, Ly6/E$p$a;

    invoke-direct {v1, p0}, Ly6/E$p$a;-><init>(Ly6/E$p;)V

    invoke-static {p1, v0, v1}, Lg4/g;->H1(Landroid/view/View;LL4/a$e;Lg4/e;)V

    return-void
.end method
