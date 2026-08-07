.class public final LW/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB/e;


# static fields
.field public static final c:LW/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LW/c;

    invoke-direct {v0}, LW/c;-><init>()V

    sput-object v0, LW/c;->c:LW/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()LW/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, LW/c;->c:LW/c;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "EmptySignature"

    return-object v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 0
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
