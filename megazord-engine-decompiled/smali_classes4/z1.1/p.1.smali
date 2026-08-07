.class public final Lz1/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lz1/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz1/q;

    invoke-direct {v0}, Lz1/q;-><init>()V

    sput-object v0, Lz1/p;->a:Lz1/q;

    return-void
.end method

.method public static synthetic a()Lz1/q;
    .locals 1

    sget-object v0, Lz1/p;->a:Lz1/q;

    return-object v0
.end method
