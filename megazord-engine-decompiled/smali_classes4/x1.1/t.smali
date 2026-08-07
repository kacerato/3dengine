.class public final Lx1/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lx1/q;

.field public static volatile b:Lx1/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lx1/s;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx1/s;-><init>(Lx1/r;)V

    sput-object v0, Lx1/t;->a:Lx1/q;

    sput-object v0, Lx1/t;->b:Lx1/q;

    return-void
.end method

.method public static a()Lx1/q;
    .locals 1

    sget-object v0, Lx1/t;->b:Lx1/q;

    return-object v0
.end method
