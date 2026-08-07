.class public final LF/m$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LF/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:Ljava/security/MessageDigest;

.field public final c:LY/c;


# direct methods
.method public constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LY/c;->a()LY/c;

    move-result-object v0

    iput-object v0, p0, LF/m$b;->c:LY/c;

    iput-object p1, p0, LF/m$b;->b:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public d()LY/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LF/m$b;->c:LY/c;

    return-object v0
.end method
