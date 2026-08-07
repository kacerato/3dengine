.class public interface abstract LI/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LI/h;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:LI/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LI/h$a;

    invoke-direct {v0}, LI/h$a;-><init>()V

    sput-object v0, LI/h;->a:LI/h;

    new-instance v0, LI/j$a;

    invoke-direct {v0}, LI/j$a;-><init>()V

    invoke-virtual {v0}, LI/j$a;->c()LI/j;

    move-result-object v0

    sput-object v0, LI/h;->b:LI/h;

    return-void
.end method


# virtual methods
.method public abstract getHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
