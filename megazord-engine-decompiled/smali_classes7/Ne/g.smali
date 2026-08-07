.class public abstract LNe/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LIe/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LIe/s<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:LIe/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LIe/s<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:LIe/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LIe/s<",
            "LNe/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "image-destination"

    invoke-static {v0}, LIe/s;->f(Ljava/lang/String;)LIe/s;

    move-result-object v0

    sput-object v0, LNe/g;->a:LIe/s;

    const-string v0, "image-replacement-text-is-link"

    invoke-static {v0}, LIe/s;->f(Ljava/lang/String;)LIe/s;

    move-result-object v0

    sput-object v0, LNe/g;->b:LIe/s;

    const-string v0, "image-size"

    invoke-static {v0}, LIe/s;->f(Ljava/lang/String;)LIe/s;

    move-result-object v0

    sput-object v0, LNe/g;->c:LIe/s;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
