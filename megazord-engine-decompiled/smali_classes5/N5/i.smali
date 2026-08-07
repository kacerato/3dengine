.class public LN5/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LN5/i$e;,
        LN5/i$d;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LN5/i$a;

    invoke-direct {v0}, LN5/i$a;-><init>()V

    sput-object v0, LN5/i;->a:Ljava/lang/ThreadLocal;

    new-instance v0, LN5/i$b;

    invoke-direct {v0}, LN5/i$b;-><init>()V

    sput-object v0, LN5/i;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;LL4/a$e;LN5/i$e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchor",
            "tittle",
            "context",
            "anchorSide",
            "listener"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p4}, LN5/i$e;->get()F

    move-result p0

    invoke-interface {p4}, LN5/i$e;->getMin()F

    move-result p2

    invoke-interface {p4}, LN5/i$e;->getMax()F

    move-result p3

    new-instance v0, LN5/i$c;

    invoke-direct {v0, p4}, LN5/i$c;-><init>(LN5/i$e;)V

    invoke-static {p1, p0, p2, p3, v0}, Lr7/e;->A1(Ljava/lang/String;FFFLr7/e$i;)V

    return-void
.end method
