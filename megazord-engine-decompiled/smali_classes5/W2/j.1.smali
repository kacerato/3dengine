.class public final LW2/j;
.super LW2/c;
.source "SourceFile"


# annotations
.annotation runtime LW2/k;
.end annotation

.annotation runtime Ld3/j;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LW2/j$a;
    }
.end annotation


# static fields
.field public static final b:LW2/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LW2/j;

    invoke-direct {v0}, LW2/j;-><init>()V

    sput-object v0, LW2/j;->b:LW2/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LW2/c;-><init>()V

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public g()LW2/r;
    .locals 1

    new-instance v0, LW2/j$a;

    invoke-direct {v0}, LW2/j$a;-><init>()V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Hashing.crc32c()"

    return-object v0
.end method
