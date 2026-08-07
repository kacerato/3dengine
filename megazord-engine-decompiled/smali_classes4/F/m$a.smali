.class public LF/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LF/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LY/a$d<",
        "LF/m$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:LF/m;


# direct methods
.method public constructor <init>(LF/m;)V
    .locals 0

    iput-object p1, p0, LF/m$a;->a:LF/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LF/m$b;
    .locals 2

    :try_start_0
    new-instance v0, LF/m$b;

    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-direct {v0, v1}, LF/m$b;-><init>(Ljava/security/MessageDigest;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LF/m$a;->a()LF/m$b;

    move-result-object v0

    return-object v0
.end method
