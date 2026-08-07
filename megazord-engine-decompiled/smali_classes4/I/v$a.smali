.class public LI/v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LI/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LI/o<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field public static final a:LI/v$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LI/v$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LI/v$a;

    invoke-direct {v0}, LI/v$a;-><init>()V

    sput-object v0, LI/v$a;->a:LI/v$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()LI/v$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LI/v$a<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, LI/v$a;->a:LI/v$a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public c(LI/r;)LI/n;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LI/r;",
            ")",
            "LI/n<",
            "TModel;TModel;>;"
        }
    .end annotation

    invoke-static {}, LI/v;->c()LI/v;

    move-result-object p1

    return-object p1
.end method
