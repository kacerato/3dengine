.class public final Ly1/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ly1/r;

.field public static volatile b:Ly1/r;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly1/s;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly1/s;-><init>(Ly1/t;)V

    sput-object v0, Ly1/u;->a:Ly1/r;

    sput-object v0, Ly1/u;->b:Ly1/r;

    return-void
.end method

.method public static a()Ly1/r;
    .locals 1

    sget-object v0, Ly1/u;->b:Ly1/r;

    return-object v0
.end method
