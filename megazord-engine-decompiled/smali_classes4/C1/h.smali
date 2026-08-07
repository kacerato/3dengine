.class public final LC1/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LC1/e;

.field public static volatile b:LC1/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LC1/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LC1/g;-><init>(LC1/f;)V

    sput-object v0, LC1/h;->a:LC1/e;

    sput-object v0, LC1/h;->b:LC1/e;

    return-void
.end method

.method public static a()LC1/e;
    .locals 1

    sget-object v0, LC1/h;->b:LC1/e;

    return-object v0
.end method
