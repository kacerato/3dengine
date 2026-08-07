.class public final Lz0/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lz0/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz0/i;

    invoke-direct {v0}, Lz0/i;-><init>()V

    sput-object v0, Lz0/i$a;->a:Lz0/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lz0/i;
    .locals 1

    sget-object v0, Lz0/i$a;->a:Lz0/i;

    return-object v0
.end method
