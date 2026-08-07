.class public LI/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LI/v$a;,
        LI/v$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LI/n<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field public static final a:LI/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LI/v<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LI/v;

    invoke-direct {v0}, LI/v;-><init>()V

    sput-object v0, LI/v;->a:LI/v;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()LI/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LI/v<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, LI/v;->a:LI/v;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILB/h;)LI/n$a;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # LB/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "LB/h;",
            ")",
            "LI/n$a<",
            "TModel;>;"
        }
    .end annotation

    new-instance p2, LI/n$a;

    new-instance p3, LW/e;

    invoke-direct {p3, p1}, LW/e;-><init>(Ljava/lang/Object;)V

    new-instance p4, LI/v$b;

    invoke-direct {p4, p1}, LI/v$b;-><init>(Ljava/lang/Object;)V

    invoke-direct {p2, p3, p4}, LI/n$a;-><init>(LB/e;LC/d;)V

    return-object p2
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
